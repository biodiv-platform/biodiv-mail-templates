<div style="padding: 40px 60px">

  <div style="margin: 0 0 20px 0">
    <a href="${serverUrl}">
      <img src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}" alt="${siteName}" />
    </a>
  </div>

  <p>Hi ,</p>

  <p>
    <a href="${serverUrl}/user/show/${requesteeId?c}">${requestorName}</a>
    is requesting to be a Contibutor of the following CCA
    <a href="${serverUrl}/data/show/${ccaId?c}">${ccaName}</a>
  </p>
  <a href='${serverUrl}/continue/verify-request?token=${encrypted_key}&type=cca-contibutor-request'
     style="
      background-color: #38A169;
      border-radius: 5px;
      color: #fff;
      display: inline-block;
      line-height: 50px;
      text-align: center;
      text-decoration: none;
      width: 180px;
    ">Approve Request</a>

  <p>To deny, you need not perform any action.</p>

  <p>
    Regards,<br />
    The ${siteName} Team
  </p>

</div>