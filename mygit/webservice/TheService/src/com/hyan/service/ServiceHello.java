package com.hyan.service;

import javax.jws.WebService;
import javax.xml.ws.Endpoint;

@WebService
public class ServiceHello {
	
	/**
	 * client function
	 * @param name
	 * @return
	 */
	public String getValue(String name){
		return "name:"+name;
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Endpoint.publish("http://localhost:8081/Service/ServiceHello", new ServiceHello());
		System.out.println("service publish successfully!");
	}

}
