<div style="padding: 40px 60px">
    <div style="margin: 0 0 20px 0">
      <a href="${serverUrl}">
        <img
          src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}"
          alt="${siteName}"
        />
      </a>
    </div>
    <#if type=="COMMENT_POST" || type=="PAGE_COMMENT_POST">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> added a comment to the page listed below.
      </p>
    <#elseif type=="PAGE_COMMENT_DELETE">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
         <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
            ${whoPosted.name}
         </a> deleted a comment to the page listed below.
      </p>  
    <#elseif type=="PAGE_CREATE">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> added the following page:
      </p>
    
    <#elseif type=="PAGE_DELETED">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> deleted the following page:
      </p>
    
    <#elseif type=="PAGE_UPDATE">
      <p>Hi ${follower.name},</p>
      <p>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
          ${whoPosted.name}
        </a> updated the following page:
      </p>
    </#if>
  
    <#if type=="COMMENT_POST" || type=="PAGE_COMMENT_POST" || type=="PAGE_COMMENT_DELETE">
    <div style="margin-bottom: 1.4rem; padding: 1rem; border-radius: 0.5rem; background: #EDF2F7">${commentBody}</div>
    </#if>

    
   
    <div style="background: #EDF2F7; padding: 0.7rem; border-radius: 0.7rem; margin-bottom: 1rem;overflow-wrap: break-word;">
      <table>
        <tbody>
          <tr>
            <td>
            <b>Title:</b>
              <a href="${serverUrl}/page/show/${whatPosted.id?c}">
               ${whatPosted.name}
              </a>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
    
    
    <#if (whatPosted.id)??>
      <p>
        For more information, please visit the page <a href="${serverUrl}/page/show/${whatPosted.id?c}">here</a>
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
