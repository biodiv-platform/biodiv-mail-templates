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
    <div style="display: flex; flex-direction: row;">
      <span>
        <img src="${serverUrl}/files-api/api/get/crop/users/${user.icon}?w=50" class="chakra-avatar__img css-3a5bz2">
      </span>
      <div style="display: flex; flex-direction: column; ">
        <div style="display: flex; flex-direction: row;">
          <a style="padding-top: 1rem;" href="${serverUrl}/user/show/${user.id}"> <#if user.id==follower.id> You<#else>${follower.name}</#if>
          </a>
          <p style="font-style: italic; padding-left: 0.5rem;" lang="hi">${activity.title}</p>
        </div>
            <div>
              <div lang="hi">${activity.description}</div>
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
    </div>

  <#elseif type=="CCA_TEMPLATE_DELETED">
    <p>
      <a style="text-decoration: none;" href="${serverUrl}">
        <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}+'/files-api/api/get/icon/32/32/users'+${user.icon}">
        <#if user.id==follower.id>You<#else>${follower.name}</#if>
      </a> deleted the template with short name: ${template.short_name}
    </p>

  <#elseif type=="CCA_DATA_DELETED">
    <p>
      <a style="text-decoration: none;" href="${serverUrl}/user/show/${user.id?c}">
        <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/crop/users/${user.icon}?w=50">
        <#if user.id==follower.id>You<#else>${follower.name}</#if>
      </a> deleted the CCA data with id : ${data.id}:
    </p>

  <#elseif type=="CCA_DATA_UPDATED" || type=="CCA_DATA_ADDED" || type=="CCA_DATA_COMMENT" || type=="CCA_DATA_PERMISSION" || type=="CCA_DATA_FOLLOW">
    <p>
      <a style="text-decoration: none;" href="${serverUrl}/user/show/${user.id?c}">
        <img style="display: inlvine;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/crop/users${user.icon}?w=50">
        <#if user.id==follower.id>You<#else>${follower.name}</#if>
      </a>
      <#if type=="CCA_DATA_FOLLOW"> started followng
      <#elseif type=="CCA_DATA_COMMENT"> added a comment to
      <#elseif type=="CCA_DATA_ADDED"> created
      <#elseif type=="CCA_DATA_PERMISSION">
        Added permission to below users
        <table style="width: 100%; table-layout: fixed;" cellspacing="0" cellpadding="0">
          <#list permissions?chunk(2) as row>
            <tr>
              <#list row as memberOf>
                <#if (memberOf.id)??>
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
                        href="${serverUrl}/user/show/${memberOf.id}" >
                        <#if (memberOf.icon)??>
                          <img src="${serverUrl}/files-api/api/get/crop/users/${memberOf.icon}?w=50" style="
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
        to contribute to
        </a>
      <#else> updated
      </#if> the following CCA data.
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
    <#if type=="CCA_DATA_UPDATED" || type=="CCA_DATA_COMMENT">
      <div style="display: flex; flex-direction: row;">
          <span>
            <img src="${serverUrl}/files-api/api/get/crop/users${user.icon}?w=50" class="chakra-avatar__img css-3a5bz2">
          </span>
          <div style="display: flex; flex-direction: column; margin-left: 0.5rem;">
            <div>
              <a href="/user/show/${user.id?c}">${follower.name}</a>
              <i style="padding-left: .5rem; font-style: italic;">${activity.title}</i>
            </div>
            <div style="padding-top: 0.5rem;">
              <div lang="hi">${activity.description}</div>
            </div>
          <div >
            <#if type=="CCA_DATA_COMMENT">
              ${activity.time}
            <#elseif type=="CCA_DATA_ADDED">
              ${data.time}
            <#else>
              ${data.updated_time}
            </#if>
          </div>
        </div>
      </div>
    </#if>
  </#if>

  <p>
    For more information, please visit the page
    <#if type=="CCA_TEMPLATE_ADDED" || type=="CCA_TEMPLATE_UPDATED" || type=="CCA_TEMPLATE_DELETED" || type="CCA_TEMPLATE_COMMENT">
      <a href="${serverUrl}/${template.url}">here</a>
    <#else>
      <a href="${serverUrl}/data/show/${data.id?c}">here</a>
    </#if>
  </p>

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