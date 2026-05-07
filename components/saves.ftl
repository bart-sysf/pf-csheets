<!-- ═══ SAVES ═══ -->
<div class="no-break">
  <h2>Saves</h2>
  <table style="table-layout:fixed; margin-bottom:4px;">
    <tr>
      <td width="20%"></td>
      <td width="12%" style="font-size:7pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Total</td>
      <td width="12%" style="font-size:7pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Base</td>
      <td width="12%" style="font-size:7pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Magic</td>
      <td width="12%" style="font-size:7pt;text-transform:uppercase;letter-spacing:0.5px;" align="center">Misc</td>
      <td width="32%"></td>
    </tr>
<@loop from=0 to=pcvar('COUNT[CHECKS]-1') ; chk , chk_has_next>
    <tr>
      <td class="border" style="background:var(--c1);color:var(--inv);font-size:9pt;font-family:'Raleway',sans-serif;letter-spacing:1px;">
        <b>${pcstring('CHECK.${chk}.NAME')}</b>
        <#if (pcstring('CHECK.${chk}.NAME') = 'Fortitude')><div style="font-size:6pt;color:var(--c5);letter-spacing:0.5px;text-transform:uppercase;">CON (${pcstring('CHECK.${chk}.STATMOD')})</div></#if>
        <#if (pcstring('CHECK.${chk}.NAME') = 'Reflex')><div style="font-size:6pt;color:var(--c5);letter-spacing:0.5px;text-transform:uppercase;">DEX (${pcstring('CHECK.${chk}.STATMOD')})</div></#if>
        <#if (pcstring('CHECK.${chk}.NAME') = 'Will')><div style="font-size:6pt;color:var(--c5);letter-spacing:0.5px;text-transform:uppercase;">WIS (${pcstring('CHECK.${chk}.STATMOD')})</div></#if>
      </td>
      <td class="border val">${pcstring('CHECK.${chk}.TOTAL')}</td>
      <td class="border" align="center">${pcstring('CHECK.${chk}.BASE')}</td>
      <td class="border" align="center">${pcstring('CHECK.${chk}.MAGIC')}</td>
      <td class="border" align="center">${pcstring('CHECK.${chk}.MISC.NOMAGIC.NOSTAT')}</td>
      <td></td>
    </tr>
</@loop>
  </table>
  <#assign hasSaveCond = pcvar('countdistinct("ABILITIES","ASPECT=SaveBonus")-1') />
  <#if (hasSaveCond >= 0)>
  <div class="note-box">
    <span style="font-size:7pt;font-weight:bold;">Conditional Save Modifiers:</span><br/>
    <@loop from=0 to=hasSaveCond ; ab , ab_has_next>
      &bull; ${pcstring('ABILITYALL.ANY.${ab}.ASPECT=SaveBonus.ASPECT.SaveBonus')}<br/>
    </@loop>
  </div>
  </#if>
  <div class="help-text">
    <b>Fortitude</b> (CON): resists poison, disease, death effects &mdash;
    <b>Reflex</b> (DEX): resists area effects, traps &mdash;
    <b>Will</b> (WIS): resists mind-affecting, compulsion, fear &mdash;
    DC set by the source ability or spell
  </div>
</div>
