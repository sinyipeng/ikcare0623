package tw.com.finalproj.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tw.com.finalproj.service.domain.CalendarSleepViewBean;


@Repository
public interface CalendarSleepViewRepositor extends JpaRepository<CalendarSleepViewBean, Object> {
	List<CalendarSleepViewBean> findAll();
	
}
