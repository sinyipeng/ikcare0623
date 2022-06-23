package tw.com.finalproj.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.finalproj.dao.DietDetailsRepository;
import tw.com.finalproj.service.domain.DietDetailsBean;

@Service
@Transactional
public class DietDetailsRepositoryService {

	@Autowired
	private DietDetailsRepository dietDetailsRepository;
	
	@Transactional(readOnly = true)
	public List<DietDetailsBean> select(DietDetailsBean bean){
		List<DietDetailsBean> beans = dietDetailsRepository.findByDietid(bean.getDietid());
		if (beans!=null&&beans.size()!=0) {
			return beans;
		}
		return null;
	}
	
	public DietDetailsBean insert(DietDetailsBean bean) {
		if(bean.getDietid()!=null&& bean.getDietid()!=0 && bean.getSampleid()!=null
				&& bean.getSampleid()!=0 && bean.getFoodnumber()!=0&& bean.getFoodnumber()!=null) {
			DietDetailsBean resultBean = dietDetailsRepository.save(bean);
			return resultBean;
		}
		return null;
	}
	
	public DietDetailsBean update(DietDetailsBean bean) {
		DietDetailsBean result = null;
		if(bean.getDietdetailid()!=null &&bean.getDietdetailid()!=0) {
			Optional<DietDetailsBean> optional =  dietDetailsRepository.findById(bean.getDietdetailid());
			if(optional.isPresent()) {
				return dietDetailsRepository.save(bean);
			}
		}
		return result;
	}
	public boolean delete(DietDetailsBean bean) {
		boolean result = false;
		if(bean!=null &&bean.getDietdetailid()!=null) {
			Optional<DietDetailsBean> optional = dietDetailsRepository.findById(bean.getDietdetailid());
			if(optional.isPresent()) {
				DietDetailsBean temp = optional.get();
				dietDetailsRepository.delete(temp);
				return true;
			}
		}
		return result;
	}
}
