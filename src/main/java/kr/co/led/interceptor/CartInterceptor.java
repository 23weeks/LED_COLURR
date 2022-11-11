package kr.co.led.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.led.beans.ProductBean;
import kr.co.led.beans.UserBean;
import kr.co.led.service.ProductService;

public class CartInterceptor implements HandlerInterceptor {

	private UserBean loginUserBean;
	private ProductService productService;
	
	
	public CartInterceptor(UserBean loginUserBean, ProductService productService) {
		super();
		this.loginUserBean = loginUserBean;
		this.productService = productService;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		String str = request.getParameter("user_idx");
		int user_idx = Integer.parseInt(str);
		
		ProductBean CurrentCartBean = productService.getProductInfo(user_idx);
				
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}

	
	
}
