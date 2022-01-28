<#--字符串类型处理
-->
<!DOCTYPE>
<html>
<head>
    <title>freemark</title>
</head>
<body>

<#--支持运算符-->
<#--四则运算，逻辑运算，空值运算符-->

${msg1} == ${msg2}
截取： ${msg1?substring(0,1)} <br>
首字母转小写： ${msg1?uncap_first} <br>
首字母转大写： ${msg1?cap_first} <br>
全部转小写： ${msg1?lower_case} <br>
全部转大写： ${msg1?upper_case} <br>
长度： ${msg1?length} <br>
以XX开头： ${msg1?starts_with("a")?string} <br>
以XX结尾： ${msg1?ends_with("o")?string} <br>
指定字符索引： ${msg1?index_of("h")} <br>
去除空格： ${" 123 "?trim} <br>
替换： ${msg1?replace("h","H")} <br>
</body>
</html>