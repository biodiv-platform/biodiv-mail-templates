<div style="margin: 30px 36px">
  <a href="${serverUrl}">
    <img
      src="${serverUrl+'/files-api/api/get/raw/logo/IBP.png'}"
      alt="${siteName}"
      style="width: 180px"
    />
  </a>
</div>

<a href="${serverUrl+'/observation/list'}">
  <img
    src="${serverUrl+'/biodiv/assets/all/picturebanner.png'}"
    alt=""
    style="width: 100%"
  />
</a>

<div style="padding: 30px 40px">
  <p>Hi ${username},</p>
  <p>${welcomeEmailIntro}</p>

  <br />
  <br />

  <div style="display: flex">
    <a
      style="text-decoration: none; font-weight: normal"
      href="${serverUrl+'/observation/list'}"
      ><img
        src="${serverUrl+'/biodiv/assets/all/observations_cr.png'}"
        style="
          width: 120px;
          height: 120px;
          border-radius: 0.5rem;
          margin-right: 24px;
        "
        alt="Observations"
    /></a>
    <div>${welcomeEmailObservation}</div>
  </div>

  <br />
  <br />

  <div style="display: flex">
    <a
      style="text-decoration: none; font-weight: normal"
      href="${serverUrl+'/map'}"
      ><img
        src="${serverUrl+'/biodiv/assets/all/maps_cr.png'}"
        style="
          width: 120px;
          height: 120px;
          border-radius: 0.5rem;
          margin-right: 24px;
        "
        alt="Maps"
    /></a>
    <div>${welcomeEmailMap}</div>
  </div>

  <br />
  <br />

  <div style="display: flex">
    <a
      style="text-decoration: none; font-weight: normal"
      href="${serverUrl+'/document/list'}"
      ><img
        src="${serverUrl+'/biodiv/assets/all/documents_cr.png'}"
        style="
          width: 120px;
          height: 120px;
          border-radius: 0.5rem;
          margin-right: 24px;
        "
        alt="Documents"
    /></a>
    <div>${welcomeEmailDocuments}</div>
  </div>

  <br />
  <br />

  <div style="display: flex">
    <a
      style="text-decoration: none; font-weight: normal"
      href="${serverUrl+'/species/list'}"
      ><img
        src="${serverUrl+'/biodiv/assets/all/species_cr.png'}"
        style="
          width: 120px;
          height: 120px;
          border-radius: 0.5rem;
          margin-right: 24px;
        "
        alt="Species"
    /></a>

    <div>${welcomeEmailSpecies}</div>
  </div>

  <br />
  <br />

  <div style="display: flex">
    <a
      style="text-decoration: none; font-weight: normal"
      href="${serverUrl+'/group/list'}"
      ><img
        src="${serverUrl+'/biodiv/assets/all/groups_cr.png'}"
        style="
          width: 120px;
          height: 120px;
          border-radius: 0.5rem;
          margin-right: 24px;
        "
        alt="Groups"
    /></a>
    <div>${welcomeEmailGroups}</div>
  </div>

  <br />
</div>
