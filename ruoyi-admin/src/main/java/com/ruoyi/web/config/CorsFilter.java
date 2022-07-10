package com.ruoyi.web.config;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 跨域过滤器
 * @author liuxb
 *
 */
public class CorsFilter implements Filter{
	
	private CorsProperties prop;
	
	public CorsFilter(CorsProperties prop) {
		this.prop = prop;
	}
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
        final HttpServletRequest req = (HttpServletRequest) request;
        final HttpServletResponse resp = (HttpServletResponse) response;
        
//        if("OPTIONS".equals(req.getMethod().trim().toUpperCase())) {
//        	resp.setStatus(HttpServletResponse.SC_OK);
//        	return;
//        }

		if(CorsConfiguration.ALLOWED_ORIGINS.equals(prop.getAllowedOrigins())) {
			resp.setHeader("Access-Control-Allow-Origin", req.getHeader("Origin"));
		} else {
			resp.setHeader("Access-Control-Allow-Origin", prop.getAllowedOrigins());
		}

		if (null != prop.getExposeHeaders()) {
			resp.setHeader("Access-Control-Expose-Headers", prop.getExposeHeaders());
		}
		
		resp.setHeader("Access-Control-Allow-Methods", prop.getAllowedMethods());
		resp.setHeader("Access-Control-Allow-Headers", prop.getAllowHeaders());
		resp.setHeader("Access-Control-Max-Age", prop.getMaxAge().toString());
		resp.setHeader("Access-Control-Allow-Credentials", prop.getAllowCredentials().toString().toLowerCase());
		chain.doFilter(req, resp);
	}
	
	@Override
	public void destroy() {

	}

}
