<#--数组
-->
<!DOCTYPE>
<html>
<head>
    <title>freemark</title>
</head>
<body>
<#--msg ： 传入的数组-->
<#list msg as item>
    ${item} <br>
</#list>
长度：${msg?size} <br>
第一个：${msg?first} <br>
最后一个： ${msg?last} <br>

<hr>
<#--msg2 : 传入的集合list-->
<#list msg2 as item>
    ${item} <br>
</#list>
倒序：<br>
<#list msg2?reverse as item>
    ${item} <br>
</#list>

<hr>
<#--遍历msg3 传入的list对象 ， user对象-->
<#list msg3 as user>
    ${user.id} - ${user.name} - ${user.age} <br>
</#list>
按年龄排序: <br>
<#list msg3?sort_by("age") as user>
    ${user.id} - ${user.name} - ${user.age} <br>
</#list>

<hr>
map类型：<br>
<#list msg4?keys as item>
    key : ${item} - value: ${msg4[item]} <br>
</#list>
直接取value: <br>
<#list msg4?values as item>
    value : ${item}   <br>
</#list>

</body>
</html>