<div style="padding: 40px 60px">
    <div style="margin: 0 0 20px 0">
      <a href="${serverUrl}">
        <img
          src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}"
          alt="${siteName}"
        />
      </a>
    </div>
    <#if type=="COMMENT_POST" || type=="DATATABLE_COMMENT_POST">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> added a comment to the page listed below.
      </p>
    <#elseif type=="DATATABLE_CREATE">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> added the following Datatable:
      </p>

    <#elseif type=="DATATABLE_DELETE">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> deleted the following Datatable:
      </p>

    <#elseif type=="POST_TO_GROUP"  || type=="DATATABLE_POST_TO_GROUP">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a>
        <#if submitType=="post">posted<#else>removed </#if> Datatable
        <#if submitType=="post">to<#else>from </#if> group
        <a href="${serverUrl}/group/${where.webAddress}/show"><i>${where.userGroupName}</i></a>
      </p>
    </#if>

    <#if type=="COMMENT_POST" || type=="DATATABLE_COMMENT_POST" >
    <div style="margin-bottom: 1.4rem; padding: 1rem; border-radius: 0.5rem; background: #EDF2F7">${commentBody}</div>
    </#if>


    <div style="background: #EDF2F7; padding: 0.7rem; border-radius: 0.7rem; margin-bottom: 1rem;overflow-wrap: break-word;">
      <table>
        <tbody>
          <tr>
            <td rowspan="3" style="padding-right: 15px;">
              <a href="${serverUrl}/datatable/show/${whatPosted.id?c}">
                <img
                src="${serverUrl+'/biodiv/newsletters/welcome/datatable-icon.png'}"
                style="width: 80px; height: 80px; margin-right: 24px"
                alt="Datatable"
              />
              </a>
            </td>
            <td>
              <b>Title:</b> ${whatPosted.name}
            </td>
          </tr>
          <tr>
            <td>
              <b>Location:</b> ${whatPosted.location}
            </td>
          </tr>
          <tr>
            <td>
              <b>Observed On:</b> ${whatPosted.observedOn} UTC
            </td>
          </tr>
        </tbody>
      </table>
    </div>

    <#if whatPosted.userGroups?size != 0>
     <div style="margin-bottom: 0.5rem;">The above datatable is a member of the following groups: </div>
    </#if>
    <table style="width: 100%; table-layout: fixed;" cellspacing="0" cellpadding="0">
      <#list whatPosted.userGroups?chunk(2) as row>
        <tr>
          <#list row as memberOf>
            <#if (memberOf.webAddress)??>
              <td>
                  <a
                    style="
                      display: block;
                      align-items: center;
                      border: 2px solid #e2e8f0;
                      border-radius: 0.375rem;
                      text-decoration: none;
                      color: inherit;
                      height: 3rem;
                      line-height: 3rem;
                      text-overflow:ellipsis;
                      overflow:hidden;
                      white-space:nowrap;
                      margin-right: 0.75rem;
                      margin-bottom: 0.75rem;
                    "
                    href="
                    <#if memberOf.webAddress?starts_with("/group")>
                    ${serverUrl}${memberOf.webAddress}/show
                    <#else>
                      ${memberOf.webAddress}
                    </#if>
                    " >
                    <#if (memberOf.icon)??>
                      <img src="${serverUrl}/biodiv/userGroups/${memberOf.icon}" style="
                        float: left;
                        height: 35px;
                        width: 35px;
                        object-fit: contain;
                        padding: 0.4rem;
                      "/>
                    </#if>
                    ${memberOf.name}
                </a>
              </td>
            </#if>
          </#list>
        </tr>
      </#list>
    </table>

    <#if (whatPosted.id)??>
      <p>
        For more information, please visit the page <a href="${serverUrl}/datatable/show/${whatPosted.id?c}">here</a>
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
