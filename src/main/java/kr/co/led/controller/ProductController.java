package kr.co.led.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;


import kr.co.led.beans.CartListBean;
import kr.co.led.beans.ProductBean;
import kr.co.led.beans.UserBean;
import kr.co.led.service.ProductService;

@Controller
public class ProductController {

   @Autowired
   private ProductService productService;
   
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
   

}