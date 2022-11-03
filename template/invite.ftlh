<div style="padding: 40px 60px">

<div style="margin: 0 0 20px 0">
  <a href="${serverUrl}">
    <img
      src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}"
      alt="${siteName}"
    />
  </a>
</div>

<p>Hello ${name},</p>

<p>
  <a target="_blank" href="${serverUrl}/user/show/${inviter.id?c}">${inviter.name}</a>
  added you as a
  <#if role=="Founder">
    founder of the
  <#elseif role=="Moderator">
    moderator of the
  <#else>
    member in this
  </#if>
  group - <a target="_blank" href="
  <#if group.webAddress?starts_with("/group")>
    ${serverUrl}${group.webAddress}/show
  <#else>
    ${group.webAddress}
  </#if>
  ">${group.name}</a> on ${siteName}.
</p>



<p>
  Regards,<br />
  The ${siteName} Team
</p>

</div>
