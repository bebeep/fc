package com.ruoyi.web.config;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties(prefix = "xcors")
public class CorsProperties {
//	# URL请求地址映射，默认为(/**)匹配所有请求路径
	private String urlMapping;
//	# 允许请求来源，默认：all origins are allowed
	private String allowedOrigins;
//	# 允许方法，默认支持（GET, HEAD, POST）
	private String allowedMethods;
//	# 允许凭证，默认true以支持cookie跨域
	private Boolean allowCredentials;
//	# 过滤器优先级，越小优先级越高，默认为: 60
	private Integer filterOrder;
//	用来指定本次预检请求的有效期，单位为秒，，在此期间不用发出另一条预检请求。
	private Integer maxAge;
	/**
	 * 用于 preflight request （预检请求）中，列出了将会在正式请求的 Access-Control-Expose-Headers 字段中出现的首部信息。
	 * 简单首部，如 simple headers、Accept、Accept-Language、Content-Language、Content-Type 
	 * （只限于解析后的值为 application/x-www-form-urlencoded、multipart/form-data 或 text/plain 三种MIME类型（不包括参数）），
	 * 它们始终是被支持的，不需要在这个首部特意列出。
	 */
	private String allowHeaders;
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
	
	public String getUrlMapping() {
		return urlMapping;
	}
	public void setUrlMapping(String urlMapping) {
		this.urlMapping = urlMapping;
	}
	public String getAllowedOrigins() {
		return allowedOrigins;
	}
	public void setAllowedOrigins(String allowedOrigins) {
		this.allowedOrigins = allowedOrigins;
	}
	public String getAllowedMethods() {
		return allowedMethods;
	}
	public void setAllowedMethods(String allowedMethods) {
		this.allowedMethods = allowedMethods;
	}
	public Boolean getAllowCredentials() {
		return allowCredentials;
	}
	public void setAllowCredentials(Boolean allowCredentials) {
		this.allowCredentials = allowCredentials;
	}
	public Integer getFilterOrder() {
		return filterOrder;
	}
	public void setFilterOrder(Integer filterOrder) {
		this.filterOrder = filterOrder;
	}
	public Integer getMaxAge() {
		return maxAge;
	}
	public void setMaxAge(Integer maxAge) {
		this.maxAge = maxAge;
	}
	public String getAllowHeaders() {
		return allowHeaders;
	}
	public void setAllowHeaders(String allowHeaders) {
		this.allowHeaders = allowHeaders;
	}
	public String getExposeHeaders() {
		return exposeHeaders;
	}
	public void setExposeHeaders(String exposeHeaders) {
		this.exposeHeaders = exposeHeaders;
	}
	
}
