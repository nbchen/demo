<#--s获取数字类型
-->
<!DOCTYPE>
<html>
<head>
    <title>freemark</title>
</head>
<body>
${age} <br>
${num} <br>
${avg} <br>
<#--转字符串-->
${age?c} <br>
<#--转货币-->
${age?string.currency} <br>
<#--转百分比-->
${age?string.percent} <br>
<#--保留小数-->
${avg?string["0.##"]} <br>
</body>
</html>