package service;

import model.Product;
import repository.IProductRepository;
import repository.ProductRepository;

import java.util.List;

public class ProductService implements IProductService {
    IProductRepository iProductRepository=new ProductRepository();
    @Override
    public List<Product> display() {
        return iProductRepository.display();
    }

    @Override
    public void save(Product product) {
        iProductRepository.save(product);
    }

    @Override
    public Product findById(int id) {
        return iProductRepository.findById(id);
    }

    @Override
    public void update(Product product) {
        iProductRepository.update(product);
    }

    @Override
    public void remove(int id) {
        iProductRepository.remove(id);
    }
}
