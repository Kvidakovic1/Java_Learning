package test;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;

@Path("/hello")

public class Hello {
	
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String sayHello() {
		String resource = "<? xml version = '1.0'?>" + "<hello> Hi Neelm This is Hello from xml </hello>"  ;
		return resource;
		
	}
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public String sayHelloJASON() {
		String resource = null;
		return resource;
		
	}
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String sayHelloHTML() {
		String resource = "<h1> Hi Neel, This is Hell from HTML </h1>";
		return resource;
		
	}
	
}
