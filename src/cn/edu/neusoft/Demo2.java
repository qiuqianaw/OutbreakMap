package cn.edu.neusoft;

import java.io.IOException;

public class Demo2 {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		String text =  HttpUtil.getJSON();
		System.out.println(text);
	}

}
