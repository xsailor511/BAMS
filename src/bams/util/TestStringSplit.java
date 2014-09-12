package bams.util;

public class TestStringSplit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str = "test;ert;asdf";
		String strs[] = str.split(";");
		System.out.println(strs.length);
		for(int i=0;i<strs.length;i++){
			System.out.print(strs[i]+" ");
		}
		String ss = "我在alksdjf";
		System.out.println("encoding:   "+getEncoding(ss));
		
		String sss = "我地址_alskdjfkjaldf124";
		String tt = sss.substring(sss.lastIndexOf("_")+1);
		System.out.println("ttt:  "+tt);
		
		String so = "xsailor_中小企业一揽子保险委托书.doc";
		if(so.contains("xsailor"))
			System.out.println("so contains xsailor");
	}
	
	 public static String getEncoding(String str) {
	        String encode = "GB2312";
	        try {
	            if (str.equals(new String(str.getBytes(encode), encode))) {
	                String s = encode;
	                return s;
	            }
	        } catch (Exception exception) {
	        }
	        encode = "ISO-8859-1";
	        try {
	            if (str.equals(new String(str.getBytes(encode), encode))) {
	                String s1 = encode;
	                return s1;
	            }
	        } catch (Exception exception1) {
	        }
	        encode = "UTF-8";
	        try {
	            if (str.equals(new String(str.getBytes(encode), encode))) {
	                String s2 = encode;
	                return s2;
	            }
	        } catch (Exception exception2) {
	        }
	        encode = "GBK";
	        try {
	            if (str.equals(new String(str.getBytes(encode), encode))) {
	                String s3 = encode;
	                return s3;
	            }
	        } catch (Exception exception3) {
	        }
	        return "";
	    }

}
