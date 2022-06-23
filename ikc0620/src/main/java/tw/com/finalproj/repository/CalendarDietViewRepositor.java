package tw.com.finalproj.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.CalendarDietViewBean;


@Repository
public interface CalendarDietViewRepositor extends JpaRepository<CalendarDietViewBean, Object> {
	List<CalendarDietViewBean> findAll();
	
}
