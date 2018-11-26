<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<div>
    <div class="mb-1">Add new user</div>
    <#if message??>${message}</#if>
</div>
    <@l.login "/registration" true />
</@c.page>

