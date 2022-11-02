<div style="padding: 40px 60px">

  <div style="margin: 0 0 20px 0">
    <a href="${serverUrl}">
      <img src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}" alt="${siteName}" />
    </a>
  </div>

  <p>Hi ${name},</p>

  <p>
    <a href="${serverUrl}/user/show/${requestor.id?c}">${requestor.name}</a>
    is requesting to be a Contibutor of the CCA
  </p>
  <#if (summary)??>
    <div style="background: #EDF2F7; padding: 0.7rem; border-radius: 0.7rem; margin-bottom: 1rem;">
      <table>
        <tbody>
          <#if (summary.title)??>
            <caption style="margin-bottom: 1rem;"> ${summary.title}</caption>
          </#if>
          <tr>
            <td rowspan="5">
              <#if (summary.image)??>
                <a href="${serverUrl}/data/show/${data.id?c}">
                  <img src="${summary.image}"
                    style="height: 100px; width: auto; border-radius: 0.5rem; margin-right: 0.5rem;" />
                </a>
              </#if>
            </td>
            <td>
              <#if (summary.title)??>
                <b>Name:</b> ${summary.title}
              </#if>
            </td>
          </tr>
          <tr>
            <td>
              <#if (summary.ecosystem)??>
                <b>Ecosystem Type:</b> ${summary.ecosystem}
              </#if>
            </td>
          </tr>
          <tr>
            <td>
              <#if (summary.area)??>
                <b>Area (ha):</b> ${summary.area}
              </#if>
            </td>
          </tr>
          <tr>
            <td>
              <#if (summary.legalStatus)??>
                <b>Legal Status :</b> ${summary.legalStatus}
              </#if>
            </td>
          </tr>
          <tr>
            <td>
              <#if (summary.nameOfCCA)??>
                <b>Name of CCA:</b> ${summary.nameOfCCA}
              </#if>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </#if>
  <a href='
      <#if group.webAddress?starts_with("/group")>
        ${serverUrl}${group.webAddress}/continue/verify-request?token=${encrypted_key}&type=group-member
      <#else>
        ${group.webAddress}/continue/verify-request?token=${encrypted_key}&type=group-member
      </#if>
      ' style="
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