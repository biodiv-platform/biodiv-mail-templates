<div style="padding: 40px 60px">

<#if type=="RESET_PASSWORD">

<h1
  style="
    font-size: 30px;
    font-weight: bold;
    padding: 0;
    line-height: 1;
    margin-bottom: 32px;
  "
>
  Reset Your Passsword
</h1>

<p>Hello ${username},</p>
<p>
  You (or someone pretending to be you) requested that your
  password be reset.
</p>
<p>
  If you have made this request, enter below OTP to reset your
  password.
</p>
<div
  style="
    font-family: monospace;
    font-size: 32px;
    margin: 32px 0;
    line-height: 1;
  "
>
  ${otp}
</div>

<#else>

<h1
  style="
    font-size: 30px;
    font-weight: bold;
    padding: 0;
    line-height: 1;
    margin-bottom: 32px;
  "
>
  Verify Your email
</h1>
<p>Hello ${username},</p>
<p>
  You (or someone pretending to be you) created an account
  with this email address.
</p>
<p>
  If you made the request, please enter below OTP to finish
  the registration and activate your account.
</p>
<div
  style="
    font-family: monospace;
    font-size: 32px;
    margin: 32px 0;
    line-height: 1;
  "
>
  ${otp}
</div>
<p>
  If you didn't make this request then ignore the email; no
  changes have been made.
</p>
</#if>

<p>
  Regards,<br />
  The ${siteName} Team.
</p>

</div>