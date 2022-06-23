package tw.com.finalproj.dao;

import java.util.List;

import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import tw.com.finalproj.service.domain.MembersBean;

@Repository
public class MembersDAOHibernate implements MembersDAO {
	@PersistenceContext
	private Session session;

	public Session getSession() {
		return session;
	}

	@Override
	public MembersBean select(String useraccount) {
		if (useraccount != null) {
			return this.getSession().get(MembersBean.class, useraccount);
		}
		return null;
	}

	@Override
	public MembersBean insert(MembersBean bean) {
		if (bean != null && bean.getUseraccount() != null) {
			MembersBean temp = this.getSession().get(MembersBean.class, bean.getUseraccount());
			if (temp == null) {
				this.getSession().save(bean);
				return bean;
			}
		}
		return null;
	}

	@Override
	public List<MembersBean> select() {
		CriteriaBuilder criteriaBuilder = this.getSession().getCriteriaBuilder();
		CriteriaQuery<MembersBean> criteriaQuery = criteriaBuilder.createQuery(MembersBean.class);

		Root<MembersBean> root = criteriaQuery.from(MembersBean.class);

		TypedQuery<MembersBean> typedQuery = this.getSession().createQuery(criteriaQuery);
		List<MembersBean> result = typedQuery.getResultList();
		if (result != null && !result.isEmpty()) {
			return result;
		}
		return null;
	}

	@Override
	public MembersBean update(String useraccount, String userpassword, String membername, java.util.Date birthday,
			String address, String telephone, String cellphone, String email, String userlevel, String area,
			String gender) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(String useraccount) {
		// TODO Auto-generated method stub
		return false;
	}
}
