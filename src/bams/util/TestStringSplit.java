package bams.util;

public class TestStringSplit {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str = "test;ert;asdf;";
		String strs[] = str.split(";");
		for(int i=0;i<strs.length;i++){
			System.out.print(strs[i]+" ");
		}
	}

}
