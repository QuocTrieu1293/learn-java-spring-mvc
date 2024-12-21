package vn.hoidanit.laptopshop.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import vn.hoidanit.laptopshop.repository.OrderRepository;
import vn.hoidanit.laptopshop.repository.ProductRepository;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Controller
public class DashboardController {

  private final UserRepository userRepository;
  private final ProductRepository productRepository;
  private final OrderRepository orderRepository;

  DashboardController(UserRepository userRepository, ProductRepository productRepository,
      OrderRepository orderRepository) {
    this.userRepository = userRepository;
    this.productRepository = productRepository;
    this.orderRepository = orderRepository;
  }

  @GetMapping("/admin")
  public String getDashboard(Model model) {

    model.addAttribute("userCount", userRepository.count());
    model.addAttribute("productCount", productRepository.count());
    model.addAttribute("orderCount", orderRepository.count());

    return "admin/dashboard/show";
  }
}
