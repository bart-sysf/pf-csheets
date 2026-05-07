<div class="no-break">
<h2>Special Attacks</h2>
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
    <#if (pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialAttack","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")') > 0)>
    <@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialAttack","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; sa , sa_has_next>
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack')}</b><br />
        <span class="src">[${pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.SOURCE')}]</span><br/>
        <span style="font-size:7pt;">${pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.DESC')}</span>
      </td>
      <td class="border" align="center" style="font-size:8pt; width:35%;">
        <#assign saUses = pcstring('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.ASPECT.UsesPerDay') />
        <#if (saUses != "")>
          Uses/day: <b>${saUses}</b><br/>
          <#assign saUsesN = pcvar('ABILITYALL.Special Ability.VISIBLE.${sa}.TYPE=SpecialAttack.ASPECT.UsesPerDay.INTVAL') />
          <#if (saUsesN > 0)>
          <span style="font-size:13pt; letter-spacing:3px;"><@loop from=1 to=saUsesN>&#9744;</@loop></span>
          </#if>
        </#if>
      </td>
    </tr>
    </@loop>
    </#if>
  </table>
</div>
</div>
