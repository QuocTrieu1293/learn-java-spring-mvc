package vn.hoidanit.laptopshop.controller.admin;

import java.util.List;

import org.antlr.v4.runtime.atn.PredictionMode;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.validation.Valid;
import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.service.BrandService;
import vn.hoidanit.laptopshop.service.CategoryService;
import vn.hoidanit.laptopshop.service.FileService;
import vn.hoidanit.laptopshop.service.FileService.Type;
import vn.hoidanit.laptopshop.service.ProductService;
import vn.hoidanit.laptopshop.service.SizeService;

@Controller("adminProductController")
public class ProductController {

  private final ProductService productService;
  private final CategoryService categoryService;
  private final BrandService brandService;
  private final SizeService sizeService;
  private final FileService fileService;

  @InitBinder
  public void initBinder(WebDataBinder binder) {
    binder.registerCustomEditor(String.class, new StringTrimmerEditor(true)); // Converts "" to null
  }

  public ProductController(ProductService productService, CategoryService categoryService, BrandService brandService,
      SizeService sizeService,
      FileService fileService) {

    this.productService = productService;
    this.categoryService = categoryService;
    this.brandService = brandService;
    this.sizeService = sizeService;
    this.fileService = fileService;
  }

  void populateSelects(Model model) {
    model.addAttribute("categories", categoryService.getAll());
    model.addAttribute("brands", brandService.getAll());
    model.addAttribute("sizes", sizeService.getAll());
  }

  @GetMapping("/admin/product")
  public String getProductPage(Model model) {
    model.addAttribute("productList", productService.getAll());

    return "admin/product/show";
  }

  @GetMapping("/admin/product/create")
  public String getCreateProductPage(Model model) {

    model.addAttribute("newProduct", new Product());
    populateSelects(model);

    return "admin/product/create";
  }

  @PostMapping("/admin/product/create")
  public String createProduct(@Valid @ModelAttribute("newProduct") Product product, BindingResult productBindingResult,
      @RequestParam("image_file") MultipartFile file,
      Model model,
      RedirectAttributes redirectAttributes) {

    if (productService.nameExists(product.getName(), null))
      productBindingResult.rejectValue("name", "Unique", "Name already exists");

    if (!file.isEmpty()) {
      String savedFile = fileService.saveImage(file, Type.PRODUCT);
      product.setImage(savedFile);
    } else {
      productBindingResult.rejectValue("image", "Not Empty", "Product image must be uploaded");
    }

    if (productBindingResult.hasFieldErrors()) {
      List<FieldError> errors = productBindingResult.getFieldErrors();
      errors.forEach(
          (e) -> System.out.println(">>> ERR Create Product: " + e.getField() + " - " + e.getDefaultMessage()));

      populateSelects(model);
      return "admin/product/create";
    }

    Product newProduct = productService.createProduct(product);
    redirectAttributes.addFlashAttribute("successMessage", "Product created successfully!");
    return "redirect:/admin/product";
  }

  @GetMapping("/admin/product/update/{id}")
  public String getProductUpdatePage(@PathVariable long id, Model model) {
    Product product = productService.get(id);
    model.addAttribute("product", product);

    populateSelects(model);

    return "/admin/product/update";
  }

  @PostMapping("/admin/product/update")
  public String updateProduct(@Valid @ModelAttribute Product product, BindingResult productBindingResult,
      @RequestParam("image_file") MultipartFile file,
      Model model,
      RedirectAttributes redirectAttributes) {

    if (productService.nameExists(product.getName(), product.getId()))
      productBindingResult.rejectValue("name", "Unique", "Name already exists");

    if (productBindingResult.hasFieldErrors()) {
      List<FieldError> errors = productBindingResult.getFieldErrors();
      errors.forEach(
          (e) -> System.out.println(">>> ERR Update Product: " + e.getField() + " - " + e.getDefaultMessage()));
      populateSelects(model);
      return "admin/product/update";
    }

    if (!file.isEmpty()) {
      fileService.deleteImage(product.getImage(), Type.PRODUCT);
      String savedFile = fileService.saveImage(file, Type.PRODUCT);
      product.setImage(savedFile);
    }

    try {
      Product updatedProduct = productService.updateProduct(product);
      redirectAttributes.addFlashAttribute("successMessage", "User updated successfully!");
    } catch (Exception e) {
      e.printStackTrace();
      redirectAttributes.addFlashAttribute("errorMessage", "Fail to update user. Please try again later.");
    }
    return "redirect:/admin/product/update/" + product.getId();
  }

  @GetMapping("/admin/product/delete/{id}")
  public String getProductDeletePage(@PathVariable long id, Model model) {
    Product product = productService.get(id);
    model.addAttribute("product", product);
    return "/admin/product/delete";
  }

  @PostMapping("/admin/product/delete/{id}")
  public String deleteProduct(@PathVariable long id, RedirectAttributes redirectAttributes) {
    Product product = productService.get(id);
    if (product == null)
      return "redirect:/admin/product";

    String fileName = product.getImage();
    if (fileName != null && !fileName.isEmpty()) {
      fileService.deleteImage(fileName, Type.PRODUCT);
    }
    productService.delete(id);
    redirectAttributes.addFlashAttribute("successMessage", "Product deleted successfully!");
    return "redirect:/admin/product";
  }

  @GetMapping("/admin/product/{id}")
  public String getProductDetailPage(@PathVariable long id, Model model) {
    model.addAttribute("product", productService.get(id));
    return "/admin/product/detail";
  }

}
