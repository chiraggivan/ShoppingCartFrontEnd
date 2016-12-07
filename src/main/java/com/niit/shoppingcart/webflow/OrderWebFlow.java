/*package com.niit.shoppingcart.webflow;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.niit.shoppingcartbackend.model.Product;

@Component
public class OrderWebFlow {
	
	//private static Logger log = LoggerFactory.getLogger(OrderWebFlow.class);

	@Autowired
	private OrderDAO orderDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	MyCart myCart;
	
	@Autowired
	Order order;
	
	@Autowired
	HttpSession httpSession;
	
	@Autowired
	Product product;
	
	public Order initFlow()
	{
		
		log.debug("WEBFLOW-----> starting of initflow method");
		order = new Order();
		
		log.debug("WEBFLOW-----> END of initflow method");
		
		return order;
		
	}
	
	public String addShippingAddress(Order order, ShippingAddress shippingAddress)
	{
		log.debug("WEBFLOW-----> starting of addShippingAddress method");
		
		order.setShippingAddress(shippingAddress);
		
		log.debug("WEBFLOW-----> END of addShippingAddress method");
		return "success";
	}
	
	public String addBillingAddress(Order order, BillingAddress billingAddress)
	{
		log.debug("WEBFLOW-----> starting of addBillingAddress method");
		
		order.setBillingAddress(shippingAddress);
		
		log.debug("WEBFLOW-----> END of addBillingAddress method");
		return "success";
	}
	
	public String addPaymentMethod(Order order, PaymentMethod paymentMethod)
	{
		log.debug("WEBFLOW-----> starting of paymentMethod method");
		
		order.setPaymentMethod(paymentMethod);
		
		log.debug("WEBFLOW-----> END of paymentMethod method");
		return "success";
	}
	
	public String confirmOrder(Order order)
	{
		log.debug("WEBFLOW-----> starting of confirmOrder method");
		
		orderDAO.saveOrUpdate(order);
		
		log.debug("WEBFLOW-----> END of confirmOrder method");
		return "success";
	}

}



*/
