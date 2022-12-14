package kr.co.led.config;

import javax.servlet.Filter;
import javax.servlet.MultipartConfigElement;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;


/*
public class SpringConfigClass implements WebApplicationInitializer {

   @Override
   public void onStartup(ServletContext servletContext) throws ServletException {
      
       404error ï¿½ë¤? ï¿?   ï¿½ë¤? ï¿? ? ??? ??  ? ???? ??­? ??¹ ï¿½êµ¢? ï¿? onStartup ? ??²? ?ì¸å ?ì¡? ç­ë?  ? ?ê»? ? ?ê¶? Spring MVC ? ?? ? ??? ???? ??§? ?ëª å ??¨? ??   ç¤ï¿½?Î»ï¿½ç­ë¥ì setting ï¿½ë¡? ??? ï¿?   ? ??¿ ? ?ì¸?  ?«?ì ? ?? ? ???²ï¿½å ï¿? 
       WebApplicationInitializer? ??  ? ?ì¨¨å ?ë¿?å¯ï¿½ ï¿½ë¡? ??? ï¿?   ? ??¿ ? ?ì¸?  ?ê»ì ? ?êµ? ? ?ì¸©ï¿½ë¤å ï¿?   ? ??¿ ? ??²?²ï¿½å ï¿?   ? ?ê²? ï¿½ë´? ï¿? ? ??ï¿½ì? ï¿?   ? ?ë¹? ç­ë¬? ï¿½ëµ³?ê»ì¾µ ï¿½ì? ï¿?  ï¿½ì»æ´¹ï½êµ¡å ?êµ? ? ?ì¸? web.xml ? ??  ? ?ë¹? ç­ë¬? ï¿½ëµ³? ï¿? ï¿½ì ? ï¿? ï¿½ë®? ï¿?  ï¿½ë¡? ???±ï¿? ? ?ë¦? 
        ï¦ë³©? ? ??äº?ê»ì ï¿½ì? ï¿?  SpringConfigClassï¿½ë¤? ï¿?   ? ?êµ? ï¿½ë´? ï¿? ï¿½ëµ³?ê»ì¾µ ï¿½ì? ï¿?  404error ï¿½êµ¢? ï¿? ï¿½ë´? ï¿? ? ???? ??­? ??¹ ï¿½êµ¢? ï¿? ? ??²? ?ì¸å ?ì¡? ï¿½ëµ³? ï¿? ? ?ì¸ï¿½?¦?¿?²?? ??® ->  ? ?ê²±ï¿½?¾ï¿½ë£ï¿½ë¾¼? ?ì­? ?ï¿½ï¿½?ï¿½ë¿  web.xml? ??  ? ?ì¨¨å ?ë¿?å¯ï¿½
       
      // (web.xml ï¿½êµ¢? ï¿? ï¿½ë»? ï¿? <servlet> ? ?ì¨¨å ?ë¿?å¯ê¹?å¯ï¿½    ï¿½ë¤ï¿½ë£ï¿½ë? ?ì¾?)
      // Spring MVC  ï¿½ê±¡ï¿½ë½ï¿½ë¿? ?ì¸å ?? ¾ ? ?ì½?  ï¿½ë»? ï¿? ? ?? § ? ?êµ?  ? ?ì­? ï¿½ë®? ï¿?  ? ?êµ? ï¿½ë»? ï¿? ï¿½ë¡? ï¿? ? ?ì¸?  ?ê»ì ? ?êµ? ? ?ì¸? ? ?êº? ï¿½ë¤ï¿½ë£?®??¼ï¿½ë®ï§ï¿½   ç¹¹ë¨²? ï¿½ë»? ï¿? ï¿½ë¡? ï¿? ? ??².
      AnnotationConfigWebApplicationContext servletAppContext = new AnnotationConfigWebApplicationContext();
      servletAppContext.register(ServletAppContext.class);

      //  ? ?ë­µç²??  ï¿½ë¾ï¿½ë£è£ë?¦? ï¿?  ? ?ë»?  ? ?ë­µç²??  ? ?êµ? ?²??¨?¬? ??´ ï¿½ë¡? ï¿? ? ?ì¸?  ï¿½ë»ï¿½ìï¿½ë?ï¿½ê²«ï¿½ë»¹?¾ï¿½ ? ?êµ? DispatcherServlet ? ??ï¿½ì? ï¿?   ï¿½ë»? ï¿? ? ?? § ï¿½ë®??ë­?  ? ??².
      DispatcherServlet dispatcherServlet = new DispatcherServlet(servletAppContext);
      // ? ?ë¦°å ?ê±ï¿½?¯ê¶ï¿½?¦  ? ?ë¹?ï¿½ì? ï¿?   ï¿½ë»? ï¿? ï¿½ì ? ï¿? ç­ë? servletContextï¿½ë¤ï¿½ë£?®??¼ï¿½ë®ï§ï¿½   ? ?? ? ?ë®? ï¿½ë¡? ï¿? ï¿½êµ¢? ï¿? servlet ? ??²ï¿½ê²«? ï¿?  load-on
      ServletRegistration.Dynamic servlet = servletContext.addServlet("dispatcher", dispatcherServlet);

      // ? ?ê»? ï¿½ë¤? ï¿?   ï¿½ë»? ï¿? ? ?? §
      servlet.setLoadOnStartup(1);// ï¿½ë¤? ï¿?  ? ?ê¶å ??? ??  ï¿½ë¾ï¿½ë£?·??¡? ï¿? ?ï¿½å ï¿? ? ??ï¿½ë¦?¿?­ìªå ??² ? ?ì¸?  ? ??
      servlet.addMapping("/");

      // ==================================================================
      // (web.xml ï¿½êµ¢? ï¿? ï¿½ë»? ï¿? <context-param>? ?ì¨¨å ?ë¿?å¯ê¹?å¯ï¿½    ï¿½ë¤ï¿½ë£ï¿½ë? ?ì¾?)
      // Bean ? ?êµ?  ? ?? § ? ?êº? ï¿½ë¡? ï¿? ? ?ì¸?  ?ê»ì ? ?êµ? ? ?ì¸©å ??  ? ??  ? ?? § ï¿½ë¡? ï¿? ? ??²
      AnnotationConfigWebApplicationContext rootAppContext = new AnnotationConfigWebApplicationContext();
      rootAppContext.register(RootAppContext.class);
      // (web.xml ï¿½êµ¢? ï¿? ï¿½ë»? ï¿? <listener>? ?ì¨¨å ?ë¿?å¯ê¹?å¯ï¿½    ï¿½ë¤ï¿½ë£ï¿½ë? ?ì¾?)
      ContextLoaderListener listener = new ContextLoaderListener(rootAppContext);
      servletContext.addListener(listener);
      // (web.xml ï¿½êµ¢? ï¿? ï¿½ë»? ï¿? <filter>? ?ì¨¨å ?ë¿?å¯ê¹?å¯ï¿½    ï¿½ë¤ï¿½ë£ï¿½ë? ?ì¾?)
      //  ? ??± ? ??äº?ê»ê¼¶ï§?ë©±ë»? ï¿?  ? ??°? ???ï¿½ê²«ï¿½ë¼ï¿½ë   ï¿½ë»? ï¿? ? ?? §
      FilterRegistration.Dynamic filter = servletContext.addFilter("encodingFilter", CharacterEncodingFilter.class);
      filter.setInitParameter("encoding", "UTF-8");
      // dispatcher ï¿½êµ¢? ï¿?  ? ?êº? ï¿½ë®? ï¿? ï¿½ë»? ï¿? ? ??²ï¿½ê²«? ï¿?  ç­ë? Servlet ï¿½êµ¢? ï¿? UTF-8ï¿½ì? ï¿?  encoding ï¿½ë¡? ?½?¦?¿?­ìªå ??² ? ?ì¸? ? ?ì¨¨å ?ë¿?å¯ê¹?å¯ï¿½ 
      filter.addMappingForServletNames(null, false, "dispatcher");

   }*/
   
	public class SpringConfigClass extends AbstractAnnotationConfigDispatcherServletInitializer {
		   // DispatcherServletï¿½ë¿ ï§ã½ë¸¨ï¿½ë¸? ï¿½ìï§£ï¿½ äºì±?¼?ï¿? ï¿½ë?ï¿½?¿ï¿½ë¸³ï¿½ë.
		   @Override
		   protected String[] getServletMappings() {
		      // TODO Auto-generated method stub
		      return new String[] { "/" };
		   }

		   // Spring MVC ï¿½ë´½æ¿¡ì? ¥ï¿½ë ï¿½ê½ï¿½ì ï¿½ì£ ï¿½ìï¿½ë¸³ ï¿½ê²¢ï¿½ìï¿½ëª?ï¿? ï§ï¿½ï¿½ì ï¿½ë¸³ï¿½ë.
		   @Override
		   protected Class<?>[] getServletConfigClasses() {
		      // TODO Auto-generated method stub
		      return new Class[] { ServletAppContext.class };
		   }

		   // ï¿½ë´½æ¿¡ì? ¥ï¿½ëï¿½ë¿ï¿½ê½ ï¿½ê¶ï¿½ìï¿½ë¸· Beanï¿½ë±¾ï¿½ì£ ï¿½ì ï¿½ì½æ¹²ï¿½ ï¿½ìï¿½ë¸³ ï¿½ê²¢ï¿½ìï¿½ëª?ï¿? ï§ï¿½ï¿½ì ï¿½ë¸³ï¿½ë.
		   @Override
		   protected Class<?>[] getRootConfigClasses() {
		      // TODO Auto-generated method stub
		      return new Class[] { RootAppContext.class };
		   }

		   // ï¿½ëï¿½ìªèªëªê½? ï¿½ì¤?ë¶¾ëµ« ï¿½ë¸ï¿½ê½£ ï¿½ê½ï¿½ì 
		   @Override
		   protected Filter[] getServletFilters() {
		      // TODO Auto-generated method stub
		      CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
		      encodingFilter.setEncoding("UTF-8");
		      return new Filter[] {encodingFilter};
		   }
   
 //ï¿½ì ï¿½ì»ï¿½ë²ï¿½ì ï¿½ê½£ï¿½ì½ ï¿½ìå¯ìê½ï¿½?  : ï¿½ìï¿½ì¾
   //null: ï¿½ê¶ï¿½ìï¿½ìåªï¿½ ï¿½ì¯ï¿½ì °ï¿½ë¸³ ï¿½ê¶¡ï¿½ìï¿½ì£ ï¿½ì«ï¿½ëæ¹²ê³ë¼²ï¿½ë¸? ï¿½ë¸ï¿½ëç§»ì?±?³ë³¦ë¿ï¿½ê½? ï¿½ì £?¨ë¯ë¸?ï¿½ë ï¿½ê½è¸°ê¾©?½ ï¿½ì«ï¿½ëæ¹²ê³ë¼²ï¿½?£ï¿½ë¼
   //52428800 :  ï¿½ë¾½æ¿¡ìë±? ï¿½ë²ï¿½ì ï¿½ê½£ï¿½ì½ ï¿½ìï¿½ì¾ (1024*50) 50Mæ¿¡ï¿½ ï¿½ê½ï¿½ì 
   //524288000 : ï¿½ëï¿½ìªï¿½ë²ï¿½ì ï¿½ê½£?ï¿? ï¿½ë£·ï¿½ë¸¿ï¿½ë¸³ ï¿½ì¾ï§£ë?ï¿½ì¾ 500M ï¿½ê½ï¿½ì 
   //0 : ï¿½ëï¿½ìªï¿½ì½ ï¿½ì«?¨ê¾§ì»?(ï¿½ë²ï¿½ì ï¿½ê½£?ï¿? è«ìë¸ï¿½ê½? ï¿½ìï¿½ë£ï¿½ìæ¿¡ï¿½ ï¿½ï¿½ï¿½ì£)
   @Override
   protected void customizeRegistration(Dynamic registration) {
	   super.customizeRegistration(registration);
	   MultipartConfigElement config1 = new MultipartConfigElement(null,52428800, 524288000, 0 );
	   registration.setMultipartConfig(config1);
   }

}