package productCRUD.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import productCRUD.models.Product;

@Component
public class ProductDao {
 @Autowired
	private HibernateTemplate hibernateTemplate;
 // add product
 @Transactional
    public void addproduct(Product product)
    {
    	this.hibernateTemplate.saveOrUpdate(product);
    }
 
 // get all products
 
   public List<Product> getAll()
   {
	   List<Product> product=  this.hibernateTemplate.loadAll(Product.class);
	   return product;
   }
   
   //delete a single record
   @Transactional
   public void deleterecord(int pid)
   {
	 Product p=  this.hibernateTemplate.load(Product.class,pid);
	 this.hibernateTemplate.delete(p);
   }
   
   // get a single product
   
   public Product getProduct(int pid)
   {
	   return this.hibernateTemplate.get(Product.class,pid);
   }
   
}
