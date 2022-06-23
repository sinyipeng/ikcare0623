package tw.com.finalproj.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.repository.SleepingRepositor;
import tw.com.finalproj.service.domain.SleepingBean;

@Service
@Transactional
public class SleepingRepositorService {
	@Autowired
	private SleepingRepositor sleepingRepositor;
	
	@Transactional(readOnly = true)
	public List<SleepingBean> select(){
		List<SleepingBean> result = sleepingRepositor.findAll();
		System.err.println(result);
		if(result!=null&&result.size()!=0) {
			System.err.println("OK");
			return result;
		}
		return null;
	}
}
