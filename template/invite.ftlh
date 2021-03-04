<div style="padding: 40px 60px">

<div style="margin: 0 0 20px -10px">
  <a href="${serverUrl}">
    <img
      src="${serverUrl+'/files-api/api/get/raw/logo/IBP.png'}"
      alt="${siteName}"
      style="width: 180px"
    />
  </a>
</div>

<p>Hello ${name},</p>

<p>
  <a target="_blank" href="${serverUrl}/user/show/${inviter.id?c}">${inviter.name}</a>
  is inviting you to be a
  <#if role=="Founder">
    founder for the
  <#elseif role=="Moderator">
    moderator for the
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

<div style="margin: 32px 0">
  <a
    href="
    <#if group.webAddress?starts_with("/group")>
      ${serverUrl}${group.webAddress}/continue/verify-invitation?token=${encrypted_key}
    <#else>
      ${group.webAddress}/continue/verify-invitation?token=${encrypted_key}
    </#if>
    "
    style="
      background-color: #38A169;
      border-radius: 5px;
      color: #fff;
      display: inline-block;
      line-height: 50px;
      text-align: center;
      text-decoration: none;
      width: 180px;
    "
    >Accept Invitation</a
  >
</div>

<p>
  Regards,<br />
  The ${siteName} Team
</p>

</div>
