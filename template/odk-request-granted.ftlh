<div style="padding: 40px 60px">
  <div style="margin: 0 0 20px 0">
    <a href="${serverUrl}">
      <img src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}" alt="${siteName}" />
    </a>
  </div>

  <p>Hi ${name},</p>

  <p>

    <#if role?matches("ODKAPPUSER")>
      You have been added as

      <b> ODK appuser</b> in the Project <b>${projectName}</b>

      <p>This allows you to use ODK forms to upload data on the server.</p>
      <p>
        After you login, go to the <b>Dashboad</b> and click on <b>ROBUST ODK</b>.
        In the pop-up dialog you will see the project forms available to you.
        Click and get the QR Code.
      </p>
      This QR Code will help you set up the project in the <b>ODK Collect</b> app on your mobile.
    </#if>
  </p>


  <#if role?matches("ODKWEBUSER")>

    <p>You have been added as an <b>ODK Webuser</b> with the</p>

    <div style="
      background: #edf2f7;
      padding: 0.7rem;
      border-radius: 0.7rem;
      margin-bottom: 1rem;
    ">
      <table>
        <tbody>
          <tr>
            <td><b>email:</b> ${email}</td>
          </tr>
          <tr>
            <td><b>password:</b> ${password}</td>
          </tr>
        </tbody>
      </table>
    </div>

    <p>You can login to your account using this
      <a href="${odkLoginUrl}">
        <i>link.</i>
      </a>
    </p>
    <p>After you login, go to the <b>Dashboard</b> and click on <b>ROBUST ODK</b>.
      In the pop-up dialog you will see a a link to the ODK Platform.
      Click the ODK platform link.
      Give your email and password and login to the ODK Platform.</p>
  </#if>

  <p>
    Regards,<br />
    ${siteName} Team
  </p>
</div>