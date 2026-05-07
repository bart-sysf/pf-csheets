<div class="no-break">
<h2>Armor &amp; Shields</h2>
<div style="margin-bottom:4px;">
  <table style="table-layout:fixed;">
    <tr>
      <th class="border" align="left" style="width:28%;">Item</th>
      <th class="border" style="width:10%;">Type</th>
      <th class="border" style="width:11%;">AC Bonus</th>
      <th class="border" style="width:11%;">Max Dex*</th>
      <th class="border" style="width:11%;">Check Pen&dagger;</th>
      <th class="border" style="width:11%;">Spell Fail</th>
      <th style="width:18%;"></th>
    </tr>
<@loop from=0 to=2 ; ar , ar_has_next>
<#if (pcstring("ARMOR.${ar}.NAME") != "")>
    <tr>
      <td class="border" style="font-size:8pt;"><b>${pcstring('ARMOR.EQUIPPED.${ar}.NAME')}</b></td>
      <td class="border" align="center">${pcstring('ARMOR.EQUIPPED.${ar}.TYPE')}</td>
      <td class="border val">${pcstring('ARMOR.EQUIPPED.${ar}.TOTALAC')}</td>
      <td class="border" align="center">${pcstring('ARMOR.EQUIPPED.${ar}.MAXDEX')}</td>
      <td class="border" align="center">${pcstring('ARMOR.EQUIPPED.${ar}.ACCHECK')}</td>
      <td class="border" align="center">${pcstring('ARMOR.EQUIPPED.${ar}.SPELLFAIL')}</td>
      <td></td>
    </tr>
</#if>
</@loop>
  </table>
  <div class="help-text">
    * <b>Max Dex</b>: Dex bonus to AC cannot exceed this &mdash;
    &dagger; <b>Check Penalty</b>: applies to Str/Dex skill checks and attacks if not proficient &mdash;
    <b>Spell Failure</b>: % chance arcane spells fail (divine spells ignore this) &mdash;
    Heavy armor reduces speed to 20ft &mdash; sleeping in medium/heavy armor leaves you fatigued
  </div>
</div>
</div>
