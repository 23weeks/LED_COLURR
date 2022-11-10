package kr.co.led.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

   @GetMapping("/product_list")
   public String product_list(@RequestParam("product_gender") String product_gender, Model model) {

      // System.out.println(product_gender);

      List<ProductBean> productList = productService.getProductList(product_gender);

      model.addAttribute("product_gender", product_gender);
      model.addAttribute("productList", productList);

      return "product/list";
   }

   @GetMapping("/product_type_list")
   public String product_type_list(@RequestParam("product_gender") String product_gender,
         @RequestParam("product_colortype") String product_colortype, Model model) {

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
   public String product_detail(@RequestParam("product_idx") int product_idx, Model model) {

      System.out.println(product_idx);

      ProductBean showProductBean = productService.getProductInfo(product_idx);

      model.addAttribute("product_idx", product_idx);
      model.addAttribute("showProductBean", showProductBean);

      return "product/detail";
   }
   
   @GetMapping("/cart")
   public String cart(Model model) {
      
      int user_idx = 0;
   
      if(loginUserBean.isUserLogin() == false) {
         return "user/not_login";
         
      } else if(loginUserBean.isUserLogin() == true) {
         user_idx = loginUserBean.getUser_idx();   
      } 
      
      List<CartListBean> cartList = cartService.cartList(user_idx);
      model.addAttribute("cartList", cartList);
      
      return "product/cart";
   }
   
   @ResponseBody
   @PostMapping("/cart_add")
   public int cart_add(@ModelAttribute("cartList") CartListBean cartList) throws Exception {

      int user_idx = 0;

      if (loginUserBean.isUserLogin() == false) {
         //로그인 하라는 제약 걸기
         
         
      } else if (loginUserBean.isUserLogin() == true) {
         user_idx = loginUserBean.getUser_idx();
      }

      for (CartBean cartBean : cartList.getCartList()) {

         if (cartBean.getProduct_amount() != 0) {
            // 각 경우에 해당하는 member_id값 입력
            cartBean.setUser_idx(user_idx);

            // 같은 상품 있는지 확인하고 있으면 수량 증가 update
            if (cartService.checkCart(cartBean) > 0) {
               cartService.updateCart(cartBean);

            // 같은 상품 없으면 add
            } else {
               cartService.addCart(cartBean);
            }
         }
      }
      int count = cartService.countCart(user_idx);
      return count;
   }
   
   @ResponseBody
   @DeleteMapping("/cart_deleteAll")
   public int deleteCartAll() throws Exception{
      
      int user_idx = 0;
      
      if(loginUserBean.isUserLogin() == false) {
         //
         
      } else if(loginUserBean.isUserLogin() == true) {
         user_idx = loginUserBean.getUser_idx();   
      }
      cartService.deleteCartAll(user_idx);
      
      return 1;
   }
   
   @ResponseBody
   @PostMapping("/cart_deleteSelected")
   public int deleteCartSelected(@RequestParam(value = "checkArr[]") List<Integer> chArr, 
                           CartBean cartBean) throws Exception{
      
      int user_idx = 0;
      
      if(loginUserBean.isUserLogin() == false) {
         //
      } else if(loginUserBean.isUserLogin() == true) {
         user_idx = loginUserBean.getUser_idx();
      }
      cartBean.setUser_idx(user_idx);
      
      int product_idx;
      
      for(int i : chArr) {
         product_idx = i;
         cartBean.setProduct_idx(product_idx);
         cartService.deleteCartSelected(cartBean);
      }
      return 1;
   }
   
   @PostMapping("/cart_changeCnt")
   @ResponseBody
   public int changeCnt(CartBean cartBean, @RequestParam("product_amount") int product_amount, 
                  @RequestParam("product_idx") int product_idx) throws Exception{
      
      int user_idx = 0;
      
      if(loginUserBean.isUserLogin() == false) {
         //
         
      } else if(loginUserBean.isUserLogin() == true) 
         user_idx = loginUserBean.getUser_idx();
      
      cartBean.setUser_idx(user_idx);
      cartBean.setProduct_amount(product_amount);
      cartBean.setProduct_idx(product_idx);
      
      cartService.changeCnt(cartBean);
      
      return 1;
   }

}