<%@ page import="java.net.URL,java.net.URLConnection,java.io.InputStream,java.io.InputStreamReader,java.io.BufferedReader" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8">
<title>疫情地图</title>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/echarts/4.7.0/echarts.min.js"></script> 
<script src="http://cdn.zaixianke.com/china.js"></script>
<script src="http://cdn.zaixianke.com/world.js"></script>
</head>
<body>
<div id="main" style="width: 100%;height:600px;"></div> <br>
<div style="text-align:center">
		<a style="color:#333" class="control" align="center" href="javascript:updateMap(0)">国内累计</a>
		<a style="color:#333" class="control" align="center" href="javascript:updateMap(1)">国内新增</a>
		<a style="color:#333" class="control" align="center" href="javascript:updateMap(2)">全球累计</a>
		<a style="color:#333" class="control" align="center" href="javascript:updateMap(3)">全球新增</a>
</div>
</body>
<script type="text/javascript">
    <%
        //声明区域
        //1790年
        long time = 0;
        //用于缓存疫情数据的位置
        String text = null;
    %>
	<%
	if ( System.currentTimeMillis() - time > 600000 ) {
	    time = System.currentTimeMillis();
		//Java代码执行区域
		//1.	创建一个网址的工具对象
		URL url = new URL("https://zaixianke.com/yq/all");
		//2.	连接网址
		URLConnection conn = url.openConnection();
		//3.	获取读取网页内容的流
		InputStream is = conn.getInputStream();
		//4.	将流装饰为能一次读取一行文字的输入流
		BufferedReader br = new BufferedReader(new InputStreamReader(is, "UTF-8"));
		//5.	读取疫情数据(一行)
		text = br.readLine();
		}
	%>
	var data = <%= text%>;
    		var data;

</script>
<script src="control.js"></script>
</html>