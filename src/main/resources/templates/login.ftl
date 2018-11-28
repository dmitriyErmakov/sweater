<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
<#if message??>${message}</#if>
<div class="mb-1">Login page</div>
    <@l.login "/login" false />
</@c.page>
