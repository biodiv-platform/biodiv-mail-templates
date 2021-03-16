<div style="padding: 40px 60px">

<div style="margin: 0 0 20px 0">
  <a href="${serverUrl}">
    <img
      src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}"
      alt="${siteName}"
    />
  </a>
</div>

<p>Hi ${name},</p>

<p>
  <a href="${serverUrl}/user/show/${requestor.id?c}">${requestor.name}</a>
  is requesting to be a member of the group
  <a href="
  <#if group.webAddress?starts_with("/group")>
  ${serverUrl}${group.webAddress}/show
  <#else>
  ${group.webAddress}
  </#if>
  ">${group.name}</a>
  which you are an administrator of on the ${siteName}.
</p>

<a
href="
  <#if group.webAddress?starts_with("/group")>
    ${serverUrl}${group.webAddress}/continue/verify-request?token=${encrypted_key}
  <#else>
    ${group.webAddress}/continue/verify-request?token=${encrypted_key}
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
>Approve Request</a>

<p>To deny, you need not perform any action.</p>

<p>
  Regards,<br/>
  The ${siteName} Team
</p>

</div>
