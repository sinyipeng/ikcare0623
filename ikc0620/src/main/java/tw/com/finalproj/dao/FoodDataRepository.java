package tw.com.finalproj.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.FoodDataBean;
@Repository
public interface FoodDataRepository extends JpaRepository<FoodDataBean, Integer> {
	List<FoodDataBean> findBySamplenameLike(String samplename);
}
