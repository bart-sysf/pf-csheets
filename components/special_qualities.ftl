<div class="two-col" style="gap:14px; align-items:start;">

<!-- LEFT: Special Qualities -->
<div>
<#if (pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialQuality","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")') > 0)>
<div class="no-break">
<h2>Special Qualities</h2>
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=Special Ability","TYPE=SpecialQuality","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; sq , sq_has_next>
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('ABILITYALL.Special Ability.VISIBLE.${sq}.TYPE=SpecialQuality')}</b><br/>
        <span class="src">[${pcstring('ABILITYALL.Special Ability.VISIBLE.${sq}.TYPE=SpecialQuality.SOURCE')}]</span><br/>
        <span style="font-size:7pt;">${pcstring('ABILITYALL.Special Ability.VISIBLE.${sq}.TYPE=SpecialQuality.DESC')}</span>
      </td>
    </tr>
</@loop>
  </table>
</div>
</div>
</#if>
</div>

<!-- RIGHT: Feats, Traits, Domains -->
<div>
<div class="no-break">
<h2>Feats</h2>
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
<@loop from=0 to=pcvar('countdistinct("ABILITIES","CATEGORY=FEAT","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; ft , ft_has_next>
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('ABILITYALL.Feat.VISIBLE.${ft}')}</b><br/>
        <span class="src">[${pcstring('ABILITYALL.Feat.VISIBLE.${ft}.SOURCE')}]</span><br/>
        <span style="font-size:7pt;">${pcstring('ABILITYALL.Feat.VISIBLE.${ft}.BENEFIT')}</span>
      </td>
    </tr>
</@loop>
  </table>
</div>
</div>

<#if (pcvar('count("ABILITIES","CATEGORY=Special Ability","TYPE=Trait","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")') > 0)>
<div class="no-break">
<h2>Traits</h2>
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
<@loop from=0 to=pcvar('count("ABILITIES","CATEGORY=Special Ability","TYPE=Trait","VISIBILITY=DEFAULT[or]VISIBILITY=OUTPUT_ONLY")-1') ; tr , tr_has_next>
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('ABILITYALL.Special Ability.VISIBLE.${tr}.TYPE=Trait')}</b><br/>
        <span class="src">[${pcstring('ABILITYALL.Special Ability.VISIBLE.${tr}.TYPE=Trait.SOURCE')}]</span><br/>
        <span style="font-size:7pt;">${pcstring('ABILITYALL.Special Ability.VISIBLE.${tr}.TYPE=Trait.DESC')}</span>
      </td>
    </tr>
</@loop>
  </table>
</div>
</div>
</#if>

<#if (pcstring('DOMAIN.1') != '')>
<div class="no-break">
<h2>Domains</h2>
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
<@loop from=1 to=pcvar('COUNT[DOMAINS]') ; dm , dm_has_next>
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('DOMAIN.${dm}')}</b><br/>
        <span style="font-size:7pt;">${pcstring('DOMAIN.${dm}.POWER')}</span>
      </td>
    </tr>
</@loop>
  </table>
</div>
</div>
</#if>

</div>

</div><!-- end two-col: Special Qualities | Feats/Traits/Domains -->
