package bams.util;

import java.util.Enumeration;
import java.util.PropertyResourceBundle;

public class ManagerUtil {

	private final static String fileName = "manager";
	private String password;
	private String username;
	public ManagerUtil(){
		// 读取系统配置
		PropertyResourceBundle resourceBundle = (PropertyResourceBundle) PropertyResourceBundle
						.getBundle(fileName);
		// 将系统设置赋值给类变量
		Enumeration<String> enu = resourceBundle.getKeys();
		while (enu.hasMoreElements()) {
			String propertyName = enu.nextElement().toString();
			if (propertyName.equals("manager.username")){
				username = resourceBundle.getString("manager.username");
			}else if(propertyName.equals("manager.password")){
				password = resourceBundle.getString("manager.password");
			}
		}
	}
	public String getPassword(){
		return password;
	}
	public String getUsername(){
		return username;
	}
}
