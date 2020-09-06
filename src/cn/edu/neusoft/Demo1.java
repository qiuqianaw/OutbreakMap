package cn.edu.neusoft;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

public class Demo1 {

	public static void main(String[] args) throws IOException {
		//下载疫情数据
		//1.	创建一个网址的工具对象
		URL url = new URL("https://zaixianke.com/yq/all");
		//2.	连接网址
		URLConnection conn = url.openConnection();
		//3.	获取读取网页内容的流
		InputStream is = conn.getInputStream();
		//4.	将流装饰为能一次读取一行文字的输入流
		BufferedReader br = new BufferedReader(new InputStreamReader(is, "UTF-8"));
		//5.	读取疫情数据(一行)
		String text = br.readLine();
		//6.	讲数据展示到控制台中
		System.out.println(text);
		

	}

}
