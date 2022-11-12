package kr.co.led.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.led.beans.CartBean;
import kr.co.led.beans.CartListBean;
import kr.co.led.beans.ProductBean;
import kr.co.led.beans.UserBean;
import kr.co.led.service.CartService;
import kr.co.led.service.ProductService;

@Controller
public class ProductController {

   @Autowired
   private ProductService productService;

   @Autowired
   private CartService cartService;
   
   @Resource(name = "loginUserBean")
   UserBean loginUserBean;
   
   @Resource(name = "cartListBean")
   CartListBean cartListBean;
   

   @GetMapping("/product_list")
   public String product_list(@RequestParam("product_gender") String product_gender,
         @ModelAttribute("addCartBean") CartListBean addCartBean,Model model) {

      // System.out.println(product_gender);

      List<ProductBean> productList = productService.getProductList(product_gender);

      model.addAttribute("product_gender", product_gender);
      model.addAttribute("productList", productList);

      return "product/list";
   }

   @GetMapping("/product_type_list")
   public String product_type_list(@RequestParam("product_gender") String product_gender,
         @RequestParam("product_colortype") String product_colortype, 
         @ModelAttribute("addCartBean") CartListBean addCartBean, Model model) {

      if (product_gender.equals("Men")) {
         List<ProductBean> productList = productService.getMenProductTypeList(product_colortype);

         model.addAttribute("product_gender", product_gender);
         model.addAttribute("product_colortype", product_colortype);
         model.addAttribute("productList", productList);

      } else if (product_gender.equals("Women")) {
         List<ProductBean> productList = productService.getWomenProductTypeList(product_colortype);

         model.addAttribute("product_gender", product_gender);
         model.addAttribute("product_colortype", product_colortype);
         model.addAttribute("productList", productList);
      }

      return "product/type_list";
   }

   @GetMapping("/product_detail")
   public String product_detail(@RequestParam("product_idx") int product_idx,
                        @ModelAttribute("addCartBean") CartListBean addCartBean, Model model) {
      
      ProductBean showProductBean = productService.getProductInfo(product_idx);
      
      model.addAttribute("product_idx", product_idx);
      model.addAttribute("showProductBean", showProductBean);
      
      return "product/detail";
   }
   
   @PostMapping("/cart_add")
   public String cart_add(@ModelAttribute("addCartBean") CartListBean addCartBean) throws Exception {
      
      
      if (loginUserBean.isUserLogin() == false) {
         // 로그인 하라는 제약 걸기
         return "user/not_login";
         
      } else if (loginUserBean.isUserLogin() == true) {
         int user_idx=loginUserBean.getUser_idx();
         
         addCartBean.setTotal(addCartBean.getProduct_price() * addCartBean.getProduct_amount());
         
         CartBean cartBean=new CartBean();
         cartBean.setUser_idx(user_idx);
         cartBean.setProduct_idx(addCartBean.getProduct_idx());
         cartBean.setProduct_amount(addCartBean.getProduct_amount());
         
         if (cartService.checkCart(cartBean) > 0) {
            cartService.updateCart(cartBean);
            
            // 같은 상품 없으면 add
         } else {
            cartService.addCart(cartBean);
         }
      }
      return "product/addCart_success";
   }
   
   @PostMapping("/cart_change")
   public String cart_change(@ModelAttribute("changeCartBean") CartListBean changeCartBean) throws Exception {
      
      
      if (loginUserBean.isUserLogin() == false) {
         // 로그인 하라는 제약 걸기
         return "user/not_login";
         
      } else if (loginUserBean.isUserLogin() == true) {
         int user_idx=loginUserBean.getUser_idx();
         
         changeCartBean.setTotal(changeCartBean.getProduct_price() * changeCartBean.getProduct_amount());
         
         CartBean cartBean=new CartBean();
         cartBean.setUser_idx(user_idx);
         cartBean.setProduct_idx(changeCartBean.getProduct_idx());
         cartBean.setProduct_amount(changeCartBean.getProduct_amount());
         
         if (cartService.checkCart(cartBean) > 0) {
            cartService.updateCart(cartBean);
            
         // 같은 상품 없으면 add
         } else {
            cartService.addCart(cartBean);
         }
      }
      return "product/cart_change";
   }

   @GetMapping("/cart")
   public String cart(Model model) {

      if (loginUserBean.isUserLogin() == false) {
         return "user/not_login";

      } else {
         int user_idx = loginUserBean.getUser_idx();
         
         List<CartListBean> cartList = cartService.cartList(user_idx);
         model.addAttribute("cartList", cartList);
         
         return "product/cart";
      }
   }

   @ResponseBody
   @DeleteMapping("/cart_deleteAll")
   public int deleteCartAll() throws Exception {

      int user_idx = 0;

      if (loginUserBean.isUserLogin() == false) {
         //

      } else if (loginUserBean.isUserLogin() == true) {
         user_idx = loginUserBean.getUser_idx();
      }
      cartService.deleteCartAll(user_idx);

      return 1;
   }

   @ResponseBody
   @PostMapping("/cart_deleteSelected")
   public int deleteCartSelected(@RequestParam(value = "checkArr[]") List<Integer> chArr, CartBean cartBean)
         throws Exception {

      int user_idx = 0;

      if (loginUserBean.isUserLogin() == false) {
         //
      } else if (loginUserBean.isUserLogin() == true) {
         user_idx = loginUserBean.getUser_idx();
      }
      cartBean.setUser_idx(user_idx);

      int product_idx;

      for (int i : chArr) {
         product_idx = i;
         cartBean.setProduct_idx(product_idx);
         cartService.deleteCartSelected(cartBean);
      }
      return 1;
   }

   @PostMapping("/cart_changeCnt")
   @ResponseBody
   public int changeCnt(CartBean cartBean, @RequestParam("product_amount") int product_amount,
         @RequestParam("product_idx") int product_idx) throws Exception {

      int user_idx = 0;

      if (loginUserBean.isUserLogin() == false) {
         //

      } else if (loginUserBean.isUserLogin() == true)
         user_idx = loginUserBean.getUser_idx();

      cartBean.setUser_idx(user_idx);
      cartBean.setProduct_amount(product_amount);
      cartBean.setProduct_idx(product_idx);

      cartService.changeCnt(cartBean);

      return 1;
   }

}