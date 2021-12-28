package dao;

import java.util.ArrayList;

import dto.Product;
//싱글톤으로 생성
public class ProductRepository {
 //자신타입의 private static 필드 선언 
 private static ProductRepository instance=new ProductRepository();
 //public 접근지정자를 가진 getInstance메소드 선언
public static ProductRepository getInstance() {
	return instance;
}
//필드
 private ArrayList<Product> listOfProducts = new ArrayList<>();
//생성자 private
public ProductRepository() {
	  Product gameProduct1 = new Product("G00010","로복록스 게임제작",24000);
      gameProduct1.setCategory("게임");
      gameProduct1.setPublisher("깃벗");
      gameProduct1.setPublishDate(20210607);
      gameProduct1.setDescription("나만의 로블록스 게임을 단계별로 따라 하며 만들 수 있는 튜토리얼 교재\n" +
              "국내 최초 로블록스 공식 교육자(Roblox Featured Eucator)로 선정된 저자 집필!");
      gameProduct1.setUnitsInStock(0);
      gameProduct1.setFilename("");
      gameProduct1.setQuantity(0);
      listOfProducts.add(gameProduct1);





      //그래픽
      Product grapicProduct  = new Product("G00010","로복록스 게임제작",24000);
      grapicProduct.setCategory("게임");
      grapicProduct.setPublisher("깃벗");
      grapicProduct.setPublishDate(20210607);
      grapicProduct.setDescription("나만의 로블록스 게임을 단계별로 따라 하며 만들 수 있는 튜토리얼 교재\n" +
              "국내 최초 로블록스 공식 교육자(Roblox Featured Eucator)로 선정된 저자 집필!");
      grapicProduct.setUnitsInStock(0);
      grapicProduct.setFilename("");
      grapicProduct.setQuantity(0);
      listOfProducts.add(grapicProduct);
	
	
}

//상품 리스트 출력 메소드
public ArrayList<Product> getAllProducts(){
	return listOfProducts;
} 

//상품 id로 상품 상제 정보 얻기
 public Product getProductById(String productId) {
	 Product productById = null;
    for(int i=0;i<listOfProducts.size();i++) {
    	 Product product = listOfProducts.get(i);
    	 if(product !=null && product.getProductId()!=null 
    			 && product.getProductId().equals(productId)) {
    		 productById = product;
    		 break;
    	  }
    	 }
	return  productById;
 }//

 //상품등록
 public void addProduct(Product product) {
	 listOfProducts.add(product);
 }
}