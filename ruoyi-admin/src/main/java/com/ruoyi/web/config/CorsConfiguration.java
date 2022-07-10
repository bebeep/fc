package com.ruoyi.web.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@EnableConfigurationProperties(CorsProperties.class)
@ConditionalOnProperty(prefix="xcors", name="enable", havingValue="true", matchIfMissing=true)
public class CorsConfiguration {
	static final String ALLOWED_ORIGINS = "*";
//	# 启用全局CORS跨域，默认为true
//	private boolean enable = true;
//	# URL请求地址映射，默认为(/**)匹配所有请求路径
	private String urlMapping = "/*";
//	# 允许请求来源，默认：all origins are allowed，该字段是必须的。
	private String allowedOrigins = ALLOWED_ORIGINS;
//	# 允许方法，默认支持（GET,HEAD,POST,PUT,DELETE）
	private String allowedMethods = "GET,POST,PUT,DELETE,HEAD,OPTIONS";
//	# 允许凭证，默认true以支持cookie跨域，该字段可选。
	private boolean allowCredentials = true;
//	# 过滤器优先级，越小优先级越高，默认为: 20
	private int filterOrder = 20;
//	用来指定本次预检请求的有效期，单位为秒，，在此期间不用发出另一条预检请求。
	private int maxAge = 3600;
	/**
	 * 用于 preflight request （预检请求）中，列出了将会在正式请求的 Access-Control-Expose-Headers 字段中出现的首部信息。
	 * 简单首部，如 simple headers、Accept、Accept-Language、Content-Language、Content-Type 
	 * （只限于解析后的值为 application/x-www-form-urlencoded、multipart/form-data 或 text/plain 三种MIME类型（不包括参数）），
	 * 它们始终是被支持的，不需要在这个首部特意列出。
	 */
	private String allowHeaders = "X-Requested-With,Content-Type,Accept,Origin,XRequestedWith,LastModified,JSESSIONID,Accept-Language,Content-Language,Content-Length,Authorization";
	
	/**
	 * 响应报头指示哪些报头可以公开为通过列出他们的名字的响应的一部分。
	 * 默认情况下，只显示6个简单的响应标头：
		Cache-Control
		Content-Language
		Content-Type
		Expires
		Last-Modified
		Pragma
		如果您希望客户端能够访问其他标题，则必须使用Access-Control-Expose-Headers标题列出它们。
	 */
	private String exposeHeaders;
	
	public CorsConfiguration(@Autowired CorsProperties prop) {
		if(null == prop)	return;
		
		if(null != prop.getFilterOrder())		filterOrder = prop.getFilterOrder();
		if(null != prop.getAllowCredentials())	allowCredentials = prop.getAllowCredentials();
		if(null != prop.getAllowedMethods())	allowedMethods = prop.getAllowedMethods().trim();
		if(null != prop.getAllowedOrigins())	allowedOrigins = prop.getAllowedOrigins().trim();
		if(null != prop.getUrlMapping())		urlMapping = prop.getUrlMapping().trim();
		if(null != prop.getMaxAge())			maxAge = prop.getMaxAge();
		if(null != prop.getAllowHeaders())		allowHeaders = prop.getAllowHeaders();
		if(null != prop.getExposeHeaders())		exposeHeaders = prop.getExposeHeaders();
	}
	
    @Bean
    public FilterRegistrationBean<CorsFilter> crossRegistration() {
    	CorsProperties prop = new CorsProperties();
    	prop.setAllowCredentials(allowCredentials);
    	prop.setAllowedMethods(allowedMethods);
    	prop.setAllowedOrigins(allowedOrigins);
    	prop.setMaxAge(maxAge);
    	prop.setAllowHeaders(allowHeaders);
    	prop.setExposeHeaders(exposeHeaders);
    	
        FilterRegistrationBean<CorsFilter> registration = new FilterRegistrationBean<CorsFilter>();
        registration.setFilter(new CorsFilter(prop));
        registration.setName("CorsFilter");  
        registration.setOrder(filterOrder);
        String[] urlPatterns = urlMapping.split(",");
        registration.addUrlPatterns(urlPatterns);
        return registration;
    } 
	
}
