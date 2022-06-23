package tw.com.finalproj.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.DietDetailsBean;
@Repository
public interface DietDetailsRepository extends JpaRepository<DietDetailsBean, Integer> {
	List<DietDetailsBean> findByDietid(Integer dietid);
}
