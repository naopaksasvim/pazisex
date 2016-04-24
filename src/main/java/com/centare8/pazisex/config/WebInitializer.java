package com.centare8.pazisex.config;

import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;

public class WebInitializer  implements WebApplicationInitializer {

    @Override
    public void onStartup(javax.servlet.ServletContext servletContext) throws ServletException {
    	AnnotationConfigWebApplicationContext ctx = new AnnotationConfigWebApplicationContext();
		ctx.register(AppConfiguration.class);
		ctx.setServletContext(servletContext);

		DispatcherServlet ds = new DispatcherServlet(ctx);
		ds.setDispatchOptionsRequest(true);

		ServletRegistration.Dynamic servlet = servletContext.addServlet("dispatcher", ds);
		servlet.addMapping("/");
		servlet.setLoadOnStartup(1);

    }

}
