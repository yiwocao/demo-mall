package com.std.user.bo;

public class Test {
	
	public static void main(String[] args) {
		try {
			Class cls = Class.forName("com.std.user.api.impl.XN805043");
			Object result = cls.newInstance();
			System.out.println(result);
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
		
	}

}
