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
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> added a comment to the page listed below.
  </p>

<#elseif type=="FACT_ADDED">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> added a fact.
  </p>

<#elseif type=="FACT_UPDATED">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> updated a fact.
  </p>

<#elseif type=="TAG_UPDATED">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> edited tags in the observation listed below
  </p>

<#elseif type=="CUSTOM_FIELD_UPDATED">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> edited a custom field in the observation listed below
  </p>

<#elseif type=="OBSERVATION_ADDED">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> added the following observation:
  </p>

<#elseif type=="OBSERVATION_DELETED">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> deleted the following observation:
  </p>

<#elseif type=="OBSERVATION_UPDATED">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> updated the following observation:
  </p>

<#elseif type=="OBSERVATION_LOCKED">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> validated and locked species name 
    <#if givenName.isScientificName==true>
      <#if givenName.id !=0>
        <a href="${serverUrl}/species/show/${givenName.id?c}"> <i> ${givenName.name} </i></a>
      <#else>
        <i> ${givenName.name} </i>
      </#if>
    <#else>
      ${givenName.name}
    </#if>
  </p>

<#elseif type=="OBSERVATION_UNLOCKED">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> unlocked species name
    <#if givenName.isScientificName==true>
      <#if givenName.id !=0>
        <a href="${serverUrl}/species/show/${givenName.id?c}"> <i> ${givenName.name} </i></a>
      <#else>
        <i> ${givenName.name} </i>
      </#if>
    <#else>
      ${givenName.name}
    </#if>
  </p>

<#elseif type=="FEATURED_POST">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> featured observation in: <a href="${serverUrl}/group/${where.webAddress}/show"><i>${where.userGroupName}</i></a>
  </p>

<#elseif type=="FEATURED_POST_IBP">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> featured observation in: ${siteName}
  </p>

<#elseif type=="OBSERVATION_FLAGGED">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> flagged your observation
  </p>

<#elseif type=="RATED_MEDIA_RESOURCE">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> rated a resource within the following observation
  </p>

<#elseif type=="AGREED_SPECIES">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> agreed on species name
  </p>

<#elseif type=="REMOVED_SPECIES">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> removed species name
  </p>

<#elseif type=="POST_TO_GROUP">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a>
    <#if submitType=="post">posted<#else>removed </#if> observation
    <#if submitType=="post">to<#else>from </#if> group
    <a href="${serverUrl}/group/${where.webAddress}/show"><i>${where.userGroupName}</i></a>
  </p>

<#elseif type=="SUGGEST_MAIL">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> suggested species name <span>${recoVote}</span>
  </p>

<#elseif type=="TAGGED_MAIL">
  <p>Hi ${follower.name},</p>
  <p>
    <a style="text-decoration: none;" href="${serverUrl}/user/show/${whoPosted.id?c}">
      <img style="display: inline;border-radius: 4px; vertical-align: middle; height: auto; width: 2rem;" src="${serverUrl}/files-api/api/get/icon/32/32/users${whoPosted.icon}">
      ${whoPosted.name}
    </a> has tagged you in a comment on the page listed below.
  </p>

<#elseif type=="DOWNLOAD_MAIL">
  <p>Hi ${downloadMail.name},</p>
  <p>
    Your <#if download_type?lower_case == "naksha">map <#else> data </#if> download request has been processed.
    click below button to start your download.
  </p>
  <div style="margin: 32px 0">
    <a
      href="${serverUrl}<#if download_type?lower_case == "naksha">${download_file}<#else>/data-archive/listpagecsv/${download_file}</#if>"
      style="
        background-color: #3182ce;
        border-radius: 5px;
        color: #fff;
        display: inline-block;
        line-height: 50px;
        text-align: center;
        text-decoration: none;
        width: 150px;
      "
      target="_blank">
      Download
    </a>
  </div>
  If you experience a problem with the link above, please copy and paste the following link into your browser:
  <br/>
  <a href="${serverUrl}<#if download_type?lower_case == "naksha">${download_file}<#else>/data-archive/listpagecsv/${download_file}</#if>">
    ${serverUrl}<#if download_type?lower_case == "naksha">${download_file}<#else>/data-archive/listpagecsv/${download_file}</#if>
  </a>
</#if>



<#if type=="COMMENT_POST" || type=="FACT_ADDED" || type=="FACT_UPDATED" || type=="TAG_UPDATED" || type=="CUSTOM_FIELD_UPDATED" || type=="FEATURED_POST" || type=="FEATURED_POST_IBP" || type=="OBSERVATION_FLAGGED" || type=="TAGGED_MAIL">
  <div style="margin-bottom: 1.4rem; padding: 1rem; border-radius: 0.5rem; background: #EDF2F7">${commentBody}</div>
</#if>



<#if type=="SUGGEST_MAIL" || type=="OBSERVATION_ADDED" || type=="OBSERVATION_UPDATED" || type=="AGREED_SPECIES" || type=="REMOVED_SPECIES" || type=="OBSERVATION_DELETED" || type=="RATED_MEDIA_RESOURCE">
  <#if (givenName.isScientificName)?? && (givenName.name)?? && (givenName.id)??>
    <p>Given name is:
      <#if givenName.isScientificName==true>
        <#if givenName.id !=0>
          <a href="${serverUrl}/species/show/${givenName.id?c}"> <i> ${givenName.name?html} </i></a>
        <#else>
          <i> ${givenName.name?html} </i>
        </#if>
      <#else>
        ${givenName.name?html}
      </#if>
    </p>
  </#if>
</#if>


<#if type=="DOWNLOAD_MAIL">
  <p>
    You can log into your profile <a href="${serverUrl}/user/show/${downloadMail.id?c}">here</a>
  </p>
<#else>
<div style="background: #EDF2F7; padding: 0.7rem; border-radius: 0.7rem; margin-bottom: 1rem;">
  <table>
    <tbody>
      <tr>
        <td rowspan="3">
          <a href="${serverUrl}/observation/show/${whatPosted.id?c}">
            <img
              src="${serverUrl}/files-api/api/get/icon/100/100/observations${whatPosted.icon}"
              style="height: 100px; width: auto; border-radius: 0.5rem; margin-right: 0.5rem;"
            />
          </a>
        </td>
        <td>
          <b>Name:</b> ${whatPosted.name?html}
        </td>
      </tr>
      <tr>
        <td>
          <b>Location:</b> ${whatPosted.location}
        </td>
      </tr>
      <tr>
        <td>
          <b>Observed On:</b> ${whatPosted.observedOn}
        </td>
      </tr>
    </tbody>
  </table>
</div>

<div style="margin-bottom: 0.5rem;">The above observation is a member of the following groups: </div>

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
</#if>

<#if (whatPosted.id)??>
  <p>
    For more information, please visit the page <a href="${serverUrl}/observation/show/${whatPosted.id?c}">here</a>
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

<p style="color: #666; font-size: 12px; line-height: 24px">
  If you don't want to receive notifications from our portal, please unsubscribe by logging into
  <a href='${serverUrl}/user/show/<#if type=="DOWNLOAD_MAIL">${downloadMail.id?c}<#else>${follower.id?c}</#if>'>your profile</a>
</p>

</div>
