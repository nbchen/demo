<#--测试date类型
-->
<!DOCTYPE>
<html>
<head>
    <title>freemark</title>
</head>
<body>
halo time => ${time?date} <br>
halo time => ${time?time} <br>
halo time => ${time?datetime} <br>
<#--不常用-->
halo time => ${time?string("yyyy-MM-dd HH:mm:ss")} <br>


</body>
</html>