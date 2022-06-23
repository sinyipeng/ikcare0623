package tw.com.finalproj.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.SleepingBean;


@Repository
public interface SleepingRepositor extends JpaRepository<SleepingBean, Integer> {
	List<SleepingBean> findAll();
}
