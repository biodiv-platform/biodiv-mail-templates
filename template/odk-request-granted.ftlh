<div style="padding: 40px 60px">
  <div style="margin: 0 0 20px 0">
    <a href="${serverUrl}">
      <img src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}" alt="${siteName}" />
    </a>
  </div>

  <p>Hi ${name},</p>

  <p>

    <#if role?matches("ODK_APP_USER")>
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


  <#if role?matches("ODK_WEB_USER")>

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
      <#if serverUrl?contains("staging")>
        <a href="https://odk.staging.eastafricacoffee.org/#/login?next=/">
          <i>link.</i>
        </a>
        <#else>
          <a href="https://odk.eastafricacoffee.org/#/login?next=/">
            <i>link.</i>
          </a>
      </#if>
    </p>
    <p>After you login, go to the <b>Dashboard</b> and click on <b>ROBUST ODK</b>.
      In the pop-up dialog you will see alink to the ODK Platform.
      Click the ODK platform link.
      Give your email and password and login to the ODK Platform.</p>
  </#if>

  <p>
    Regards,<br />
    ${siteName} Team
  </p>
</div>
