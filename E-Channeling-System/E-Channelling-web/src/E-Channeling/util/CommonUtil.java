package E.Channelling.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;

public class CommonUtil {
	
	public static final Properties properties = new Properties();
	
	static {
		
		try {
			
			properties.load(QueryUtil.class.getResourceAsStream(CommonConstants.PROPERTY_FILE));
			
		}catch(IOException e) {
			
			System.out.println(e.getMessage());
		} 
		
		
	}
	
	public static String genarateUserID(ArrayList<String>idu) {
		
		String id;
		
		int next = idu.size();
		
		id = CommonConstants.USER_ID_PREFIX+next;
		
		if(idu.contains(id)) {
			
			next++;
			
			id = CommonConstants.USER_ID_PREFIX+next;
		}
		return id;
	}

	
	

}
