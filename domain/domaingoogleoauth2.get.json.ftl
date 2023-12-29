<#escape x as jsonUtils.encodeJSONString(x)>
{
        "success": ${success?string('true', 'false')} ,
        "extTK": <#if extTK??>"${(extTK)}"<#else>null</#if>,
        "sessionOK": ${sessionOK?string('true', 'false')} ,
        "ticketToken": <#if TICKET_TOKEN??>"${(TICKET_TOKEN)}"<#else>null</#if>
        <#if userInfo??>
        ,
        "userInfo":{
        	"email":<#if userInfo.email??>"${(userInfo.email)}"<#else>null</#if>,
        	"name":<#if userInfo.name??>"${(userInfo.name)}"<#else>null</#if>
        }
        </#if>

}
</#escape>
