<div style="padding: 40px 60px">
    <div style="margin: 0 0 20px 0">
      <a href="${serverUrl}">
        <img
          src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}"
          alt="${siteName}"
        />
      </a>
    </div>
    <#if type=="COMMENT_POST" || type=="DOCUMENT_COMMENT_POST">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> added a comment to the page listed below.
      </p>
    <#elseif type=="DOCUMENT_ADDED">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> added the following Document:
      </p>
    
    <#elseif type=="DOCUMENT_DELETED">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> deleted the following Document:
      </p>
    
    <#elseif type=="DOCUMENT_UPDATED">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> updated the following Document:
      </p>
    <#elseif type=="DOCUMENT_FLAGGED">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> flagged your Document
      </p>    
    
    <#elseif type=="POST_TO_GROUP">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a>
        <#if submitType=="post">posted<#else>removed </#if> document
        <#if submitType=="post">to<#else>from </#if> group
        <a href="${serverUrl}/group/${where.webAddress}/show"><i>${where.userGroupName}</i></a>
      </p>
    </#if>

    <#if type=="COMMENT_POST" || type=="DOCUMENT_COMMENT_POST" ||  type=="DOCUMENT_FLAGGED">
    <div style="margin-bottom: 1.4rem; padding: 1rem; border-radius: 0.5rem; background: #EDF2F7">${commentBody}</div>
    </#if>

    
   
    <div style="background: #EDF2F7; padding: 0.7rem; border-radius: 0.7rem; margin-bottom: 1rem;overflow-wrap: break-word;">
      <table>
        <tbody>
          <tr>
            <td rowspan="3" style="padding-right: 15px;">
              <a href="${serverUrl}/document/show/${whatPosted.id?c}">
                <svg xmlns="http://www.w3.org/2000/svg" width="100" height="100" viewBox="0 0 140 140" fill="none">
                  <rect width="140" height="140" fill="#f7f8fa" rx="18"></rect>
                  <path fill="#075ff0" fillRule="evenodd" d="M41 46v42.523h22.521c2.503 0 4.588 2.085 4.588 4.586h4.588c0-2.501 1.668-4.586 4.17-4.586H99.39V46H76.867c-2.502 0-5.004.834-6.673 2.918C68.526 46.834 66.441 46 63.521 46H41zm4.588 4.169H63.52c2.503 0 4.588 2.084 4.588 4.586h4.588c0-2.502 1.668-4.586 4.17-4.586h17.934v33.768H76.867c-2.502 0-5.004 1.251-6.673 2.919-1.668-1.668-3.753-2.919-6.673-2.919H45.588V50.17zm22.521 9.172v4.585h4.588v-4.585h-4.588zm0 8.754v4.586h4.588v-4.586h-4.588zm0 9.172v4.586h4.588v-4.586h-4.588z" clipRule="evenodd"></path>
                </svg>
              </a>
            </td>
            <td>
              <b>Name:</b> ${whatPosted.name}
            </td>
          </tr>
          <tr>
            <td>
              <b>Type:</b> ${whatPosted.type}
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    
    <div style="margin-bottom: 0.5rem;">The above document is a member of the following groups: </div>
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
        For more information, please visit the page <a href="${serverUrl}/document/show/${whatPosted.id?c}">here</a>
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
