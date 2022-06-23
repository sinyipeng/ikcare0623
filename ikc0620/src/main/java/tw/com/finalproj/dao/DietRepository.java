package tw.com.finalproj.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.DietBean;
@Repository
public interface DietRepository extends JpaRepository<DietBean, Integer> {

	List<DietBean> findByUseraccountAndDietdate(String useraccount,Date dietdate);
	DietBean findByUseraccountAndDietdateAndDiettime(String useraccount,Date dietdate,String diettime);
}
