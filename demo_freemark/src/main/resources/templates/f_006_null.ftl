<#--空值处理
-->
<!DOCTYPE>
<html>
<head>
    <title>freemark</title>
</head>
<body>
<#--报错-->
<#--不存在的数据： ${xxoo}-->

处理不存在的数据，不报错： ${xxoo!} <br>
处理不存在的数据，给默认值： ${xxoo!"xxoo不存在"} <br>
判断是否存,返回布尔，要转字符串： ${xxoo???c} 这样可读更佳：  ${(xxoo??)?c} <br>
</body>
</html>