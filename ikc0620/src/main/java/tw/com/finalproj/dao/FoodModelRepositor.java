package tw.com.finalproj.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.FoodDataBean;
@Repository
public interface FoodModelRepositor extends JpaRepository<FoodDataBean, Integer> {

}
