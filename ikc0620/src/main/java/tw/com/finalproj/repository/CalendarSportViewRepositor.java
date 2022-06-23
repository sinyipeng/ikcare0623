package tw.com.finalproj.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.CalendarSportViewBean;


@Repository
public interface CalendarSportViewRepositor extends JpaRepository<CalendarSportViewBean, Object> {
	List<CalendarSportViewBean> findAll();
	
	@Query("SELECT COUNT(cs) FROM CalendarSportViewBean cs WHERE cs.useraccount LIKE CONCAT('',:useraccount,'')")
	List<CalendarSportViewBean> findCalendarSportPartofName(@Param("useraccount")String useraccount);
	
}
