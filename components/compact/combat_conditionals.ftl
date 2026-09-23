<div class="note-box no-break" style="margin-bottom:2px;">
  <span style="font-size:6.25pt;font-weight:bold;">Conditional Attack / Combat Modifiers:</span><br/>
  <#assign hasCombatCond = false />
  <@loop from=0 to=pcvar('countdistinct("ABILITIES","ASPECT=CombatBonus")-1') ; ab , ab_has_next>
    <#assign hasCombatCond = true />
    &bull; ${pcstring('ABILITYALL.ANY.${ab}.ASPECT=CombatBonus.ASPECT.CombatBonus')}<br/>
  </@loop>
  <#if !hasCombatCond><span style="color:var(--c4);font-size:7.25pt;">No modifiers</span></#if>
</div>
