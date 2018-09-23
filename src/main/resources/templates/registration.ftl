<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
    Add new user
    <#if message??>${message}</#if>
</div>
<@l.login "/registration" />
</@c.page>

