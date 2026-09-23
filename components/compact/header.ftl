<!-- ═══ HEADER ═══ -->
<div class="no-break">
  <h1>${pcstring('NAME')}</h1>
  <table style="table-layout:fixed;">
    <tr>
      <td width="20%" class="val">${pcstring('PLAYERNAME')}</td>
      <td width="20%" class="val">Lvl ${pcstring('TOTALLEVELS')} (${pcstring('EXP.CURRENT')} / ${pcstring('EXP.NEXT')})</td>
      <td width="20%" class="val">${pcstring('RACE')}</td>
      <td width="13%" class="val">${pcstring('GENDER')} (${pcstring('AGE')})</td>
      <td width="13%" class="val">${pcstring('HEIGHT')} (${pcstring('SIZELONG')})</td>
      <td width="14%" class="val">${pcstring('WEIGHT')}</td>
    </tr>
    <tr>
      <td class="topline">Player</td>
      <td class="topline">Level (XP)</td>
      <td class="topline">Race</td>
      <td class="topline">Gender (Age)</td>
      <td class="topline">Height (Size)</td>
      <td class="topline">Weight</td>
    </tr>
    <tr>
      <td colspan="2" class="val">${pcstring('DEITY')}, ${pcstring('ALIGNMENT')}</td>
      <td colspan="4" class="val">${pcstring('LANGUAGES')}</td>
    </tr>
    <tr>
      <td colspan="2" class="topline">Deity &amp; Alignment</td>
      <td colspan="4" class="topline">Languages</td>
    </tr>
  </table>
</div>
