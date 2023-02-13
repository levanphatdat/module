package repository;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductRepository implements IProductRepository{
    private static List<Product> productList=new ArrayList<>();
    static {
        productList.add(new Product(1,"Quạt","350000","V.1","Panasonic"));
        productList.add(new Product(2,"Quạt","350000","V.1","Panasonic"));
        productList.add(new Product(3,"Quạt","350000","V.1","Panasonic"));
        productList.add(new Product(4,"Quạt","350000","V.1","Panasonic"));

    }
    @Override
    public List<Product> display() {
        return productList;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
    }

    @Override
    public Product findById(int id) {
        return productList.get(id);
    }

    @Override
    public void update(Product product) {
        productList.add(product);
    }

    @Override
    public void remove(int id) {
        productList.remove(id);
    }
}
