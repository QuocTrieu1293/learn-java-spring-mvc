package com.quoctrieu.springbootmvc.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.quoctrieu.springbootmvc.domain.Cart;
import com.quoctrieu.springbootmvc.domain.Order;
import com.quoctrieu.springbootmvc.domain.User;
import com.quoctrieu.springbootmvc.domain.dto.RegisterDTO;
import com.quoctrieu.springbootmvc.repository.CartRepository;
import com.quoctrieu.springbootmvc.repository.OrderRepository;
import com.quoctrieu.springbootmvc.repository.UserRepository;

@Service
public class UserService {
  private final UserRepository userRepository;
  private final PasswordEncoder passwordEncoder;
  private final CartRepository cartRepository;
  private final OrderRepository orderRepository;

  public UserService(UserRepository userRepository, PasswordEncoder passwordEncoder, CartRepository cartRepository,
      OrderRepository orderRepository) {
    this.userRepository = userRepository;
    this.passwordEncoder = passwordEncoder;
    this.cartRepository = cartRepository;
    this.orderRepository = orderRepository;
  }

  public User registerUser(User user) {
    String hashed_password = passwordEncoder.encode(user.getPassword());
    user.setPassword(hashed_password);
    return userRepository.save(user);
  }

  public User updateUser(User user) throws Exception {
    User updatedUser = get(user.getId());
    // Role role1 = user.getRole(); // null
    // Role role2 = updatedUser.getRole(); // null
    // String name1 = role1.getName(); //null
    // String name2 = role2.getName(); //có kết quả do FetchType.LAZY, dữ liệu chỉ
    // được nạp khi được truy cập
    if (updatedUser == null)
      throw new Exception("cannot find user with id = " + user.getId());

    updatedUser.setPhone(user.getPhone());
    updatedUser.setFullName(user.getFullName());
    updatedUser.setAddress(user.getAddress());
    updatedUser.setRole(user.getRole());
    updatedUser.setAvatar(user.getAvatar());

    return userRepository.save(updatedUser);

  }

  public List<User> getAll() {
    List<User> userList = userRepository.findAll();
    return userList;
  }

  public Page<User> getPage(Pageable pageable) {
    return userRepository.findAll(pageable);
  }

  public User get(long id) {
    User user = userRepository.findById(id).orElse(null);
    return user;
  }

  public void delete(long id) {
    userRepository.deleteById(id);
  }

  public boolean emailExists(String email) {
    return userRepository.existsByEmail(email);
  }

  public User registerDTOToUser(RegisterDTO registerDTO) {
    User user = new User();

    user.setFullName(registerDTO.getFirstName() + " " + registerDTO.getLastName());
    user.setEmail(registerDTO.getEmail());
    user.setPassword(registerDTO.getPassword());

    return user;
  }

  public User getUserByEmail(String email) {
    return userRepository.findByEmail(email);
  }

  public Cart getCart(long id) {
    User user = get(id);
    if (user == null)
      return null;

    Cart cart = user.getCart();
    if (cart != null)
      return cart;

    cart = new Cart();
    cart.setUser(user);
    cart = cartRepository.save(cart);

    return cart;
  }

  public List<Order> getOrders(long id) {
    return orderRepository.findByUserId(id);
  }

}