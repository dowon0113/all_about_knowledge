package kr.co.sist.aak.module.admin.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.sist.aak.domain.admin.AdminLoginDomain;
import kr.co.sist.aak.domain.admin.vo.AdminLoginVO;
@Service
public class AdminLoginService {
	@Autowired(required = false)
	private AdminLoginDAO adlDAO;
	
	public boolean searchLogin(AdminLoginVO alVO) {
		AdminLoginDomain adld = null;
		try {
			adld = adlDAO.selectAdminPass(alVO);
			
		}catch (Exception e) {
			
		}
		return adld!= null&& adld.getPassword().equals(alVO.getPassword());
	}
	
}
