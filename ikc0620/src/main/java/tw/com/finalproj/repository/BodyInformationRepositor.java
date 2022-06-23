package tw.com.finalproj.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.BodyInformationBean;

@Repository
public interface BodyInformationRepositor extends JpaRepository<BodyInformationBean, Integer> {
	
	
	@Query("SELECT bi.memberweight FROM BodyInformationBean bi WHERE bi.useraccount LIKE CONCAT('',:useraccount,'')")
	Integer findBodyInformationPartofName(@Param("useraccount")String useraccount);
	
}
