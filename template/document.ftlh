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

    <#if type=="COMMENT_POST" || type=="DOCUMENT_COMMENT_POST" >
    <div style="margin-bottom: 1.4rem; padding: 1rem; border-radius: 0.5rem; background: #EDF2F7">${commentBody}</div>
    </#if>

    
   
    <div style="background: #EDF2F7; padding: 0.7rem; border-radius: 0.7rem; margin-bottom: 1rem;overflow-wrap: break-word;">
      <table>
        <tbody>
          <tr>
            <td rowspan="3" style="padding-right: 15px;">
              <a href="${serverUrl}/document/show/${whatPosted.id?c}">
              <svg width="3rem" viewBox="0 0 140 140" fill="none">
        <rect width="100" height="100" fill="#DBEAFE" rx="18"></rect>
        <path
          fill="#3B82F6"
          d="M77 32h1.8v.8h.9l21.6 21v.8h.8v42.9c0 3.2-.8 5.6-3.3 7.3-1.7 2.4-4.2 3.2-7.5 3.2H48.8c-3.3 0-5.8-.8-7.5-3.2-1.6-1.7-3.3-4-3.3-7.3V41.7c0-2.4 1.7-4.8 3.3-6.5 1.7-2.4 4.2-3.2 7.5-3.2h28.3zm7.5 55.8c1.7 0 3.4 1.6 3.4 3.2s-1.7 3.3-3.4 3.3h-29c-1.7 0-3.4-1.7-3.4-3.3 0-1.6 1.7-3.2 3.4-3.2h29zm0-13.8c1.7 0 3.4 1.7 3.4 3.3 0 1.6-1.7 3.2-3.4 3.2h-29c-1.7 0-3.4-1.6-3.4-3.2s1.7-3.3 3.4-3.3h29zM63 60.3c1.7 0 3.4.8 3.4 2.4 0 2.4-1.7 3.3-3.4 3.3h-7.5c-1.7 0-3.4-.9-3.4-3.3 0-1.6 1.7-2.4 3.4-2.4h7.4zm17.5-17.8V53h10.8L80.4 42.5zm15 17H77c-1.7 0-3.4-1.6-3.4-3.2V38.5H48.8c-1.7 0-2.5 0-3.3.8-.9.8-.9 1.6-.9 2.4v55.8c0 1.6 0 2.4.9 3.2.8.8 1.6.8 3.3.8h42.4c1.7 0 2.5 0 3.3-.8.9-.8.9-1.6.9-3.2v-38z"
        ></path>
      </svg>
              </a>
            </td>
            <td>
              <b>Name:</b> ${whatPosted.name}
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    
    <#if whatPosted.userGroups?size != 0>
     <div style="margin-bottom: 0.5rem;">The above document is a member of the following groups: </div>
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
