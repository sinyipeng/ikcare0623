package tw.com.finalproj.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.BodyInformationBean;
@Repository
public interface BodyInformationRepository extends JpaRepository<BodyInformationBean, Integer> {
	
	List<BodyInformationBean> findByUseraccountOrderByBodyidDesc(String useraccount);
}
