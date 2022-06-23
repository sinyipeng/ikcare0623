package tw.com.finalproj.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.MealExchangeListBean;


@Repository
public interface MealExchangeListRepository extends JpaRepository<MealExchangeListBean, Integer> {
	List<MealExchangeListBean> findByfoodtype(String foodtype);
}
