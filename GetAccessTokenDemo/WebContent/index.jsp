<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- <html>
  <head>
    <script type="text/javascript" src="jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="jquery-barcode.min.js"></script>
    <script type="text/javascript">
    
      function generateBarcode(){
        var value = $("#barcodeValue").val();
        alert(value);
        var btype = "ean13";
        var settings = {
          output:"css",//用css输出图片
          bgColor: $("#bgColor").val(),
          color: $("#color").val(),
          barWidth: 3,//间隔宽度
          barHeight: 100//图片高度
        };
         $("#barcodeTarget").html("").show().barcode(value, btype, settings);
      }
          
/*       $(function(){
        generateBarcode();
      }); */
  
    </script>
  </head>
  <body>
    <div id="generator">
      输入编码: <input type="text" id="barcodeValue" value="6925303713009">
      <div id="submit">
        <input type="button" onclick="generateBarcode();" value="生成一维码">
      </div>
      <button onclick="generateBarcode()" >生成一维码</button>
    </div>
    <div id="barcodeTarget" class="barcodeTarget"></div>
  </body>
</html> -->
<html lang="zh">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Amals技术博客-jQuery自定义字符串生成条形码</title>
        <style type="text/css">
        body{
            color: #D5D6E2;
            font-weight: 500;
            font-size: 1.05em;
            font-family: "Microsoft YaHei","宋体","Segoe UI", "Lucida Grande", Helvetica, Arial,sans-serif, FreeSans, Arimo;
        }
        a{color: #2fa0ec;text-decoration: none;outline: none;}
        a:hover,a:focus{color:#74777b;}
        .Amals-body{
            margin: 0 auto;
            text-align: center;
            overflow: hidden;
        }
        #Amals{
            margin:100px auto;
        }
        </style>
    </head>
    <body>
        <article class="Amals-body">
            <canvas id="Amals" width="400" height="200"></canvas>
        </article>
        <script src="http://amals.org/zb_system/script/common.js" type="text/javascript"></script>
        必须导入生成条形码的插件
        <script type="text/javascript" src="jquery-ean13.min.js"></script>
        <script type="text/javascript">
            $(function() {
                //自定义条形码序列号,必须是13位.
                //必须得是正确的条形码编号才会扫描成功,例如:6925958520179金丐醋酸钙颗粒
                $("#Amals").EAN13("6925958520183", {
                    color: '#000'//自定义条形码颜色
                });
            });
        </script>
    </body>
</html> 