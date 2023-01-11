<meta charset="UTF-8">
<div style="padding: 40px 60px">

  <div style="margin: 0 0 20px 0">
    <a href="${serverUrl}">
      <img
        src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}"
        alt="${siteName}"
      />
    </a>
  </div>
  <p>Hi ${user.name},</p>
  <#if type=="CCA_TEMPLATE_ADDED" || type=="CCA_TEMPLATE_UPDATED" || type=="CCA_TEMPLATE_COMMENT">
    <p>
      <#if type=="CCA_TEMPLATE_ADDED">Created
      <#elseif type=="CCA_TEMPLATE_COMMENT">Added a comment to
      <#else>Updated
      </#if> CCA template with short name: ${template.short_name}
    </p>
    <div>
      <div style="display: flex; flex-direction: row;">
        <span>
          <#if user.icon?has_content>
            <img
            style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" 
            src="${serverUrl}/files-api/api/get/crop/users${user.icon}?w=50"
            />
          <#else>
            <img
            src="${serverUrl}/biodiv/users/user.png?w=50"
            style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;"
            />
          </#if>
        </span>
        <a style="padding-top: 1rem;" href="${serverUrl}/user/show/${user.id}"> <#if user.id==follower.id> You<#else>${follower.name}</#if>
        </a>
        <p style="font-style: italic; padding-left: 0.5rem;" lang="hi">${activity.title}</p>
      </div>
          <div>
            <div>${activity.description}</div>
          </div>
      <div>
        <small>
          <#if type=="CCA_TEMPLATE_COMMENT">
            ${activity.time}
          <#elseif type=="CCA_TEMPLATE_ADDED">
            ${template.time}
          <#else>
            ${template.update_time}
          </#if>
        </small>
      </div>
    </div>

  <#elseif type=="CCA_TEMPLATE_DELETED">
  <#if user.id==follower.id>
    <p>
      <a style="text-decoration: none;" href="${serverUrl}/user/show/${user.id?c}">
        <#if user.icon?has_content>
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}+'/files-api/api/get/icon/32/32/users'+${user.icon}">
        <#else>
          <img
          src="${serverUrl}/biodiv/users/user.png?w=50"
          style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;"
          />
        </#if>
       You
      </a> deleted the template with short name: ${template.short_name}
    </p>
    <#else>
    <p>
      <a style="text-decoration: none;" href="${serverUrl}/user/show/${follower.id?c}">
        <#if follower.icon?has_content>
          <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/crop/users/${follower.icon}?w=50">
        <#else>
          <img
          src="${serverUrl}/biodiv/users/user.png?w=50"
          style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;"
          />
        </#if>
        ${follower.name}
      </a> deleted the template with short name: ${template.short_name}
    </p>
  </#if>

  <#elseif type=="TAGGED_MAIL">
    <p>Hi ${follower.name},</p>
    <p>
      <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
        <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
        ${whoPosted.name}
      </a> has tagged you in a comment on the page listed below.
    </p>

  <#elseif type=="CCA_DATA_UPDATED" || type=="CCA_DATA_ADDED" || type=="CCA_DATA_COMMENT" || type=="CCA_DATA_PERMISSION" || type=="CCA_DATA_FOLLOW" || type=="CCA_DATA_UNFOLLOW"
   || type=="CCA_DATA_PERMISSION_REMOVED"|| type=="CCA_DATA_DELETED">
    <p>
      <#if user.id==follower.id>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${user.id?c}">
          <#if user.icon?has_content>
            <img
            style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" 
            src="${serverUrl}/files-api/api/get/crop/users/${user.icon}?w=50"
            />
          <#else>
            <img
            src="${serverUrl}/biodiv/users/user.png?w=50"
            style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;"
            />
          </#if>You
      <#else>
        <a style="text-decoration: none;" href="${serverUrl}/user/show/${follower.id?c}">
          <#if follower.icon?has_content>
            <img
            style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" 
            src="${serverUrl}/files-api/api/get/crop/users/${follower.icon}?w=50"
            />
          <#else>
            <img
            src="${serverUrl}/biodiv/users/user.png?w=50"
            style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;"
            />
          </#if>
        ${follower.name}
      </a>
      </#if>
      </a>
      <#if type=="CCA_DATA_FOLLOW"> started followng
      <#elseif type=="CCA_DATA_UNFOLLOW"> unfollow
      <#elseif type=="CCA_DATA_COMMENT"> added a comment to
      <#elseif type=="CCA_DATA_ADDED"> created
      <#elseif type=="CCA_DATA_DELETED"> deleted
      <#elseif type=="CCA_DATA_PERMISSION">
        Added permission for users
              <#list permissions as memberOf>
                <#if (memberOf.id)??>
                      <a
                        style="
                          display: contents;
                          align-items: center;
                          border: 2px solid #e2e8f0;
                          border-radius: 0.375rem;
                          text-decoration: none;
                          color: blue;
                          height: 3rem;
                          line-height: 3rem;
                          text-overflow:ellipsis;
                          overflow:hidden;
                          white-space:nowrap;
                          margin-right: 0.75rem;
                          margin-bottom: 0.75rem;
                        "
                        href="${serverUrl}/user/show/${memberOf.id}" >
                        ${memberOf.name}<#sep>, </#sep>
                    </a>
                </#if>
          </#list>
          to contribute to
        </a>
        <#elseif type=="CCA_DATA_PERMISSION_REMOVED">
        Removed permission for users
              <#list permissions as memberOf>
                <#if (memberOf.id)??>
                      <a
                        style="
                          display: contents;
                          align-items: center;
                          border: 2px solid #e2e8f0;
                          border-radius: 0.375rem;
                          text-decoration: none;
                          color: blue;
                          height: 3rem;
                          line-height: 3rem;
                          text-overflow:ellipsis;
                          overflow:hidden;
                          white-space:nowrap;
                          margin-right: 0.75rem;
                          margin-bottom: 0.75rem;
                        "
                        href="${serverUrl}/user/show/${memberOf.id}" >
                        ${memberOf.name}<#sep>, </#sep>
                    </a>
                </#if>
          </#list>
        to contribute to
        </a>
      <#else> updated
      </#if> the following CCA data.
    </p>
    <#if type=="CCA_DATA_COMMENT">
      <div style="padding-top: 0.5rem;">
        <div style="margin-bottom: 1.4rem; padding: 1rem; border-radius: 0.5rem; background: #EDF2F7">
          ${activity.description}</div>
      </div>
    </#if>
    <#if (summary)??>
      <div style="background: #EDF2F7; padding: 0.7rem; border-radius: 0.7rem; margin-bottom: 1rem;">
        <table>
          <tbody>
            <#if (summary.title)??>
            <caption style="margin-bottom: 1rem;">     <a href="${serverUrl}/data/show/${data.id?c}">
              ${summary.title} </a></caption>
            </#if>
            <tr>
              <td rowspan="5">
                <#if (summary.image)??>
                  <a href="${serverUrl}/data/show/${data.id?c}">
                    <img
                      src="${summary.image}"
                      style="height: 100px; width: auto; border-radius: 0.5rem; margin-right: 0.5rem;"
                    />
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
    <#if type=="CCA_DATA_UPDATED">
      <div>
        <div style="display: flex; flex-direction: row;">
          <span>
            <#if user.icon?has_content>
              <img
              style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;"
              src="${serverUrl}/files-api/api/get/crop/users${user.icon}?w=50"
              />
            <#else>
              <img
              src="${serverUrl}/biodiv/users/user.png?w=50"
              style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;"
              />
            </#if>
          </span>
          <a style="margin-left: 0.5rem;" href=" ${serverUrl}/user/show/${follower.id?c}">${follower.name}</a>
          <i style="padding-left: .5rem; font-style: italic;">${activity.title}</i>
        </div>
        <div style="padding-top: 0.5rem;">
          <div style="margin-bottom: 1.4rem; padding: 1rem; border-radius: 0.5rem; background: #EDF2F7">
            ${activity.description}</div>
        </div>
        <div>
          <#if type=="CCA_DATA_COMMENT">
            ${activity.time}
          <#elseif type=="CCA_DATA_ADDED">
            ${data.time}
          <#else>
            ${data.updated_time}
          </#if>
        </div>
      </div>
    </#if>
  </#if>
  <#if type!="CCA_DATA_DELETED" && type!="CCA_TEMPLATE_DELETED">
    <p>
      For more information, please visit the page
      <#if type=="CCA_TEMPLATE_ADDED" || type=="CCA_TEMPLATE_UPDATED" || type=="CCA_TEMPLATE_DELETED" || type="CCA_TEMPLATE_COMMENT">
        <a href="${serverUrl}/${template.url}">here</a>
      <#else>
        <a href="${serverUrl}/data/show/${data.id?c}">here</a>
      </#if>
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