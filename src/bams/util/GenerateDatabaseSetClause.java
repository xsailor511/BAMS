package bams.util;

import java.lang.reflect.Method;

public class GenerateDatabaseSetClause {

	private  String classname = "xsailor.entity.User";
	
	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public static void main(String args[]) {
		GenerateDatabaseSetClause one = new GenerateDatabaseSetClause();
		one.setClassname("bams.entity.EmployerDuty");
		one.generateSet();
		//one.generateGet();
	}
	//user.setUsername(rs.getString("username"));
	public  void generateSet(){
		//String clause = "";
		 try { 
	           Class<?> c = Class.forName(classname);
	           String simpleclassname = c.getSimpleName().toLowerCase();
	           //clause = clause + simpleclassname;
	           
	           Method m[] = c.getDeclaredMethods();
	           //System.out.println(m.length);
	           for(int k=0;k<m.length;k++){
	        	   String methodname = m[k].getName();
	        	   //System.out.println(methodname);
	        	   if(methodname.contains("set")){
	        		   String parametertypename = m[k].getParameterTypes()[0].getSimpleName();
	        		   //String parametername = m[k].getReturnType().getSimpleName();
	        		   //System.out.println(parametername);
	        		   char ch = parametertypename.charAt(0);
	        		   //System.out.println(ch);
	        		   String tt  = parametertypename.replaceFirst(ch+"", (ch+"").toUpperCase());
	        		   String result = simpleclassname+"."+methodname+"(rs.get"+tt+"(\""+methodname.replace("set", "").toLowerCase()+"\"));";
	        		   System.out.println(result);
	        	   }
	        	  
	           }

	      } 
	      catch (Throwable e){
	            System.err.println(e);
	      } 
	}
	//ps.setString(1, user.getUsername());
	public  void generateGet(){
		String sql = "insert into ";
		  try {
			Class<?> c = Class.forName(classname);
			  String simpleclassname = c.getSimpleName().toLowerCase();
			  sql = sql + simpleclassname + "(";
			  Method m[] = c.getDeclaredMethods();
			  int count = 0;
			  for(int k=0;k<m.length;k++){
				  String methodname = m[k].getName();
				  if(methodname.contains("get")){
					  String columnname = methodname.replaceAll("get", "").toLowerCase();
					  count ++ ;
					  if(count==1)
						  sql = sql + columnname;
					  else
						  sql = sql +","+ columnname;
					  String returntype = m[k].getReturnType().getSimpleName();
					  char ch = returntype.charAt(0);
					  String tt  = returntype.replaceFirst(ch+"", (ch+"").toUpperCase());
					  String result = "ps.set"+tt+"("+(count)+", "+simpleclassname+"."+methodname+"())";
					  System.out.println(result);
				  }
			  }
			  sql = sql + ") values(";
			  count = 0;
			  for(int i=0;i<m.length-1;i++){
				  String methodname = m[i].getName();
				  if(methodname.contains("get")){
					  count ++;
					  if(count==1)
						  sql = sql +"?";
					  else
						  sql = sql +",?";
				  }
					 
			  }
			  sql = sql + ")";
			  System.out.println("sql : "+sql);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}
