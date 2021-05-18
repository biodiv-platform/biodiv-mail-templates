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
    Your request as a <b>${role?lower_case}</b> role on
    <a href="${serverUrl}/namelist/index?taxon=${taxonId?c}">
      <i>${taxonName}</i>
    </a>
    is approved.
  </p>

  <p>
    Regards,<br />
    The ${siteName} Team
  </p>
</div>
