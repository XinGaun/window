package com.shiro;

import java.util.HashMap;
import java.util.List;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import com.dao.guanDao.UserDaoPort;
import com.entity.UserTab;

/**
 * 
* @Title: Realm.java  
* @Package com.shiro  
* @Description: TODO(验证用户和为用户授权)  
* @author 自定义 Realm
* @date 2017年8月31日
 */
public class Realm extends AuthorizingRealm{
	@Autowired
	private UserDaoPort userdaoport;//调用用户DAO接口
	/**
	 * 为用户授权
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection PC) {
		// TODO Auto-generated method stub
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		UserTab user =(UserTab)PC.getPrimaryPrincipal();
		List<HashMap<String,Object>> userMap = userdaoport.queryCallUserRolePower(user);
		for(int i=0;i<userMap.size();i++){
			info.addStringPermission(userMap.get(i).get("POWER_KEY").toString());
		}

		return info;
	}
	/**
	 * 为用户认证
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// TODO Auto-generated method stub

		UsernamePasswordToken upToken =(UsernamePasswordToken) token;
		String userName = upToken.getUsername();//从令牌中获得用户名称
		List<UserTab> list=userdaoport.finUserByUsername(userName);
		if(list.size()==0){
			return null;//用户名不存在
		}else{
			UserTab user = list.get(0);
			String password = user.getUserPassword();//获得数据库用户密码
			
			/**创建简单认证信息
			 * 参数一：签名:程序可以在任意位置获取当前放入的对象
			 * 参数二：从数据库中查询出的密码
			 * 参数三：当前realm的名称
			 */
			SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user,password,this.getClass().getSimpleName());
		
			return info;//返回给安全管理器 ，由安全管理器比对密码	
		}
		

	}

}
