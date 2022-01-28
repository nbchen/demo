<#--测试boolean类型数据取值
布尔值不能直接输出，需要转换为字符串
-->
<!DOCTYPE>
<html>
<head>
    <title>freemark</title>
</head>
<body>
halo isGood? ${isGood?c}
<hr>
更多用法：
${isGood?string}
${isGood?string("yes","no")}
${isGood?string("喜欢","不喜欢")}
${isGood?then("a","b")}

</body>
</html>