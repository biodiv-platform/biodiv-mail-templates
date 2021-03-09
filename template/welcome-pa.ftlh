<div style="padding: 40px 60px; margin: 0 0 0 -10px">
  <a href="${serverUrl}">
    <img
      src="${serverUrl+'/files-api/api/get/raw/logo/logo-m.png'}"
      alt="${siteName}"
    />
  </a>
</div>

<a href="${serverUrl+'/observation/list'}">
  <img
    src="${serverUrl+'/biodiv/assets/all/picturebanner.png'}"
    alt="Photo of Madagascar Landscapes"
    style="width: 100%"
  />
</a>

<div style="padding: 40px 60px">
  <p>Hi ${username},</p>

  <p>
    Welcome to the ${siteName}. You are now part of an exciting initiative
    designed to facilitate participation and enable open access for all citizens
    in accessing information on the terrestrial protected areas of Madagascar,
    their history, description and biota. All data on the portal is free and
    served under Creative Commons license How to get Started:
  </p>

  <p>How to get Started:</p>

  <div style="display: flex; margin-bottom: 1.6rem">
    <img
      src="${serverUrl+'/biodiv/newsletters/welcome/user.png'}"
      style="width: 100px; height: 100px; margin-right: 24px"
      alt="User"
    />
    <div>
      <a href="${serverUrl+userProfileUrl}">Complete your user profile</a>
      Upload a photo, write a few words on your interests to help other users
      know more about you. View other profiles, and compare your
      <a href="${serverUrl+'/user/leaderboard/'}">leaderboard ranking</a>
    </div>
  </div>

  <div style="display: flex; margin-bottom: 1.6rem">
    <img
      src="${serverUrl+'/biodiv/newsletters/welcome/landscapes.png'}"
      style="width: 100px; height: 100px; margin-right: 24px"
      alt="Landscapes"
    />
    <div>
      <a href="${serverUrl+'/landscape/list'}"> Learn about protected areas </a>
      Browse through curated content on the protected areas of Madagascar, with
      downloadable boundary maps, bibliography and dynamically updating species
      lists on each protected area.
    </div>
  </div>

  <div style="display: flex; margin-bottom: 1.6rem">
    <img
      src="${serverUrl+'/biodiv/newsletters/welcome/observations.png'}"
      style="width: 100px; height: 100px; margin-right: 24px"
      alt="Observations"
    />
    <div>
      <a href="${serverUrl+'/observation/list'}">
        Participate in citizen science
      </a>
      Upload, identify, browse or download observations of flora and fauna that
      you observe to help curate occurrence data on species around you.
    </div>
  </div>

  <div style="display: flex; margin-bottom: 1.6rem">
    <img
      src="${serverUrl+'/biodiv/newsletters/welcome/naksha.png'}"
      style="width: 100px; height: 100px; margin-right: 24px"
      alt="Naksha"
    />
    <div>
      <a href="${serverUrl+'/maps'}"> Visualize or download maps </a>
      Interact with spatial data on biodiversity through our map layers. The
      layers can be overlaid and queried or downloaded to be used offline.
    </div>
  </div>

  <div style="display: flex; margin-bottom: 1.6rem">
    <img
      src="${serverUrl+'/biodiv/newsletters/welcome/documents.png'}"
      style="width: 100px; height: 100px; margin-right: 24px"
      alt="Observations"
    />
    <div>
      <a href="${serverUrl+'/document/list'}"> Browse or upload documents </a>
      Access curated and contributed scholarly publications and grey literature
      on an array of topics relevant to protected areas.
    </div>
  </div>

  <p>
    We're excited to have you as a member. Thank you for joining and we hope you
    enjoy using the portal.
  </p>

  <p>
    Regards,<br />
    The ${siteName} Team
  </p>

  <hr
    style="
      border: none;
      border-top: 1px solid #eaeaea;
      margin: 32px 0;
      width: 100%;
    "
  />

  <p style="color: #666; font-size: 14px; line-height: 24px">
    Please add <i>${mailDefaultFrom}</i> to your address book to ensure you
    continue to receive emails from us in your inbox.
  </p>
</div>
