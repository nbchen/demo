<#--常用指令
-->
<!DOCTYPE>
<html>
<head>
    <title>freemark</title>
</head>
<body>

assign: <br>
<#assign str = "hello">
定义单个变量：${str} <br>

<#assign num = 1 names=["张三","李四","王五"]>
定义多个变量：
${num}<br>
${names?join(",")}<br>

<hr>
判断：<br>
<#if 1!=2>
1 != 2 <br>
</#if>
<#assign score = 60>
<#if score lt 60>
小于60
<#elseif score == 60>
等于60
<#elseif score gt 60 && score lt 80>
良好
<#else>
优秀
</#if>

<br>
判断数据是否存在：<br>
<#assign list = "">
<#if list2??>
数据存在
<#else>
数据不存在
</#if>

<br>
<#assign list3= []>

<#if list3??>
    变量存在
    <#list list3 as user>
        ${user}
    <#else >
        用户数据
    </#list>
</#if>



<br>
<#assign list3= []>
<#list list3 as user>
    ${user}
    <#else >
    用户数据不存在
</#list>

<hr>
<br>
自定义指令： <br>
基本使用：<br>
<#macro address>
    这是一段地址
</#macro>
可以多处使用 <br>
<@address></@address> <br>
<@address></@address> <br>
<@address></@address> <br>

可以传参数： <br>
<#macro email arg1>
    这是一段email - ${arg1}
</#macro>
<@email arg1="hello"></@email> <br>
<@email arg1="hello"></@email> <br>
<@email arg1="hello"></@email> <br>

可以传参数 多个： <br>
<#macro login arg1 arg2>
    这是一段email - ${arg1} - ${arg2}
</#macro>
<@login arg1="hello" arg2="world"></@login> <br>
<@login arg1="hello" arg2="world"></@login> <br>
<@login arg1="hello" arg2="world"></@login> <br>

<hr>
99乘法表：<br>
<#macro cfb num>
    <#list 1..num as i>
        <#list 1..i as j>
            ${j} * ${i} = ${j * i} &nbsp;
        </#list>
        <br>
    </#list>
</#macro>
<@cfb num = 9></@cfb>
<hr>
88乘法表： <br>
<@cfb num = 8></@cfb>

<hr>
占位符： <br>
<#macro test>
    这是一段文本
    <#nested > <br>
</#macro>
<@test>你好世界</@test>
<@test>你好世界</@test>
<@test>你好世界</@test>


<hr>
import 导入宏 macro: <br>
<#import "f_008_常用指令.ftl" as my2>
<@my2.address></@my2.address>

<hr>
include 包含 页面： <br>
<div style="color: red">
    <#include "f_006_null.ftl">
</div>




</body>
</html>