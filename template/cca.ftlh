<div style="padding: 40px 60px">

  <div style="margin: 0 0 20px 0">
    <a href="${serverUrl}">
      <img
        src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}"
        alt="${siteName}"
      />
    </a>
  </div>

  <#if type=="COMMENT_POST">
    <p>Hi ${follower.name},</p>
    <p>
      <a style="text-decoration: none;" href="${serverUrl}/user/show/${user.id?c}">
        <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${user.icon}">
        ${user.name}
      </a> added a comment to the page listed below.
    </p>

  <#elseif type=="CCA_TEMPLATE_ADDED" || type=="CCA_TEMPLATE_UPDATED">
    <p>Hi ${user.name},</p>
    <p>
      <#if type=="CCA_TEMPLATE_ADDED">Added <#else>Updated </#if>CCA template with short name: ${template.short_name}
    </p>
    <div style="display: flex; flex-direction: row;">
      <span>
        <img src="https://staging.communityconservedareas.org/files-api/api/get/crop/users/ibpmu-AQgXorQe7ATMExgXTaqxC/631876356e984c25ba873b35d5df96cf.png?w=50" alt="Administrator" class="chakra-avatar__img css-3a5bz2">
      </span>
      <div style="display: flex; flex-direction: column; ">
        <a href="/user/show/1">${user.name}
          <span>
            <svg style="height: 14px; width: 14px; " viewBox="0 0 16 16" focusable="false">
              <path fill="currentColor" d="M9.585.52a2.678 2.678 0 00-3.17 0l-.928.68a1.178 1.178 0 01-.518.215L3.83 1.59a2.678 2.678 0 00-2.24 2.24l-.175 1.14a1.178 1.178 0 01-.215.518l-.68.928a2.678 2.678 0 000 3.17l.68.928c.113.153.186.33.215.518l.175 1.138a2.678 2.678 0 002.24 2.24l1.138.175c.187.029.365.102.518.215l.928.68a2.678 2.678 0 003.17 0l.928-.68a1.17 1.17 0 01.518-.215l1.138-.175a2.678 2.678 0 002.241-2.241l.175-1.138c.029-.187.102-.365.215-.518l.68-.928a2.678 2.678 0 000-3.17l-.68-.928a1.179 1.179 0 01-.215-.518L14.41 3.83a2.678 2.678 0 00-2.24-2.24l-1.138-.175a1.179 1.179 0 01-.518-.215L9.585.52zM7.303 1.728c.415-.305.98-.305 1.394 0l.928.68c.348.256.752.423 1.18.489l1.136.174c.51.078.909.478.987.987l.174 1.137c.066.427.233.831.489 1.18l.68.927c.305.415.305.98 0 1.394l-.68.928a2.678 2.678 0 00-.489 1.18l-.174 1.136a1.178 1.178 0 01-.987.987l-1.137.174a2.678 2.678 0 00-1.18.489l-.927.68c-.415.305-.98.305-1.394 0l-.928-.68a2.678 2.678 0 00-1.18-.489l-1.136-.174a1.178 1.178 0 01-.987-.987l-.174-1.137a2.678 2.678 0 00-.489-1.18l-.68-.927a1.178 1.178 0 010-1.394l.68-.928c.256-.348.423-.752.489-1.18l.174-1.136c.078-.51.478-.909.987-.987l1.137-.174a2.678 2.678 0 001.18-.489l.927-.68zM11.28 6.78a.75.75 0 00-1.06-1.06L7 8.94 5.78 7.72a.75.75 0 00-1.06 1.06l1.75 1.75a.75.75 0 001.06 0l3.75-3.75z"></path>
            </svg>
          </span>
        </a>
            <#if type=="CCA_TEMPLATE_ADDED">
              Template created
            <#else>
            <i>Template updated</i>
            <div>
              <div>${template.label} : ${template.value}</div>
            </div>
            </#if>
        <div >
          <small >${template.time}</small>
        </div>
      </div>
    </div>
  
  <#elseif type=="CCA_TEMPLATE_DELETED">
    <p>
      <a style="text-decoration: none;" href="${serverUrl}/user/show/${user.id?c}">
        <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${user.icon}">
        ${user.name}
      </a> template deleted with short name: ${template.short_name}
    </p>
  
  <#elseif type=="CCA_DATA_DELETED">
    <p>Hi ${follower.name},</p>
    <p>
      <a style="text-decoration: none;" href="${serverUrl}/user/show/${user.id?c}">
        <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${user.icon}">
        ${user.name}
      </a> deleted the CCA data with id : ${data.id}:
    </p>
  
  <#elseif type=="CCA_DATA_UPDATED" || type=="CCA_DATA_ADDED">
    <p>Hi ${follower.name},</p>
    <p>
      <a style="text-decoration: none;" href="${serverUrl}/user/show/${user.id?c}">
        <img style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${user.icon}">
        ${user.name}
      </a> <#if type=="CCA_DATA_ADDED">Added <#else>Updated </#if> the following CCA data.
    </p>
    <div style="background: #EDF2F7; padding: 0.7rem; border-radius: 0.7rem; margin-bottom: 1rem;">
      <table>
        <tbody>
          <caption style="margin-bottom: 1rem;"> ${activity.title}</caption>
          <tr>
            <td rowspan="5">
              <a href="${serverUrl}/data/show/${data.id?c}">
                <img
                  src="${serverUrl}/files-api/api/get/crop/pages/ibpmu-UULV7G1Y7svuQCrCURUIx/${activity.image}"
                  style="height: 100px; width: auto; border-radius: 0.5rem; margin-right: 0.5rem;"
                />
              </a>
            </td>
            <td>
              <b>Name:</b> ${activity.title}
            </td>
          </tr>
          <tr>
            <td>
              <b>Ecosystem Type:</b> ${activity.ecosystem}
            </td>
          </tr>
          <tr>
            <td>
              <b>Area (ha):</b> ${activity.area}
            </td>
          </tr>
          <tr>
            <td>
              <b>Legal Status :</b> ${activity.legalStatus}
            </td>
          </tr>
          <tr>
            <td>
              <b>Name of CCA:</b> ${activity.nameOfCCA}
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    <#if type=="CCA_DATA_UPDATED">
      <div style="display: flex; flex-direction: row;">
          <span>
            <img src="https://staging.communityconservedareas.org/files-api/api/get/crop/users/ibpmu-AQgXorQe7ATMExgXTaqxC/631876356e984c25ba873b35d5df96cf.png?w=50" alt="Administrator" class="chakra-avatar__img css-3a5bz2">
          </span>
          <div style="display: flex; flex-direction: column; ">
            <a href="/user/show/1">Administrator
              <span>
                <svg style="height: 14px; width: 14px; " viewBox="0 0 16 16" focusable="false">
                  <path fill="currentColor" d="M9.585.52a2.678 2.678 0 00-3.17 0l-.928.68a1.178 1.178 0 01-.518.215L3.83 1.59a2.678 2.678 0 00-2.24 2.24l-.175 1.14a1.178 1.178 0 01-.215.518l-.68.928a2.678 2.678 0 000 3.17l.68.928c.113.153.186.33.215.518l.175 1.138a2.678 2.678 0 002.24 2.24l1.138.175c.187.029.365.102.518.215l.928.68a2.678 2.678 0 003.17 0l.928-.68a1.17 1.17 0 01.518-.215l1.138-.175a2.678 2.678 0 002.241-2.241l.175-1.138c.029-.187.102-.365.215-.518l.68-.928a2.678 2.678 0 000-3.17l-.68-.928a1.179 1.179 0 01-.215-.518L14.41 3.83a2.678 2.678 0 00-2.24-2.24l-1.138-.175a1.179 1.179 0 01-.518-.215L9.585.52zM7.303 1.728c.415-.305.98-.305 1.394 0l.928.68c.348.256.752.423 1.18.489l1.136.174c.51.078.909.478.987.987l.174 1.137c.066.427.233.831.489 1.18l.68.927c.305.415.305.98 0 1.394l-.68.928a2.678 2.678 0 00-.489 1.18l-.174 1.136a1.178 1.178 0 01-.987.987l-1.137.174a2.678 2.678 0 00-1.18.489l-.927.68c-.415.305-.98.305-1.394 0l-.928-.68a2.678 2.678 0 00-1.18-.489l-1.136-.174a1.178 1.178 0 01-.987-.987l-.174-1.137a2.678 2.678 0 00-.489-1.18l-.68-.927a1.178 1.178 0 010-1.394l.68-.928c.256-.348.423-.752.489-1.18l.174-1.136c.078-.51.478-.909.987-.987l1.137-.174a2.678 2.678 0 001.18-.489l.927-.68zM11.28 6.78a.75.75 0 00-1.06-1.06L7 8.94 5.78 7.72a.75.75 0 00-1.06 1.06l1.75 1.75a.75.75 0 001.06 0l3.75-3.75z"></path>
                </svg>
              </span></a>
                <i>field updated</i>
            <div >
              <div>${data.label} : ${data.old} -> ${data.new}</div>
          </div>
          <div >
            <small >${data.time}</small>
          </div>
        </div>
      </div>
    </#if>
  </#if>

  <#if (data.id)??>
    <p>
      For more information, please visit the page <a href="${serverUrl}/data/show/${data.id?c}">here</a>
    </p>
  </#if>

  <hr
    style="
      border: none;
      border-top: 1px solid #eaeaea;
      margin: 32px 0;
      width: 100%;
    "
  />

  <div style="color: #666; font-size: 14px; line-height: 24px">
    Don't want to receive these emails? <a href='${unregisterEmailNotification}'>unsubscribe</a>
  </div>

</div>