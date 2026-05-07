<h2 style="page-break-before: always;">Prepared Spells</h2>
<div class="help-text" style="margin-bottom:4px;">
  Spell descriptions shown here come from PCGen's built-in effect summary. For the full text of any spell, refer to the source book listed in brackets &mdash; or search the spell name on the Archives of Nethys (aonprd.com) for free online access to the complete Pathfinder rules text.
</div>
<@loop from=2 to=pcvar('COUNT[SPELLBOOKS]-1') ; spellbook , spellbook_has_next>
<@loop from=pcvar('COUNT[SPELLRACE]') to=pcvar('COUNT[SPELLRACE]+COUNT[CLASSES]-1') ; class , class_has_next>
<#if (pcstring("SPELLLISTCLASS.${class}") != '')>
  <div class="no-break" style="font-size:9pt;font-weight:bold;margin:6px 0 0 0;background:var(--c6);padding:2px 6px;border-left:3px solid var(--c2);">
    ${pcstring('SPELLBOOKNAME.${spellbook}')} &mdash; ${pcstring('SPELLLISTCLASS.${class}')}
  </div>
  <@loop from=0 to=9 ; level , level_has_next>
    <#assign spelllevelcount = pcvar('COUNT[SPELLSINBOOK.${class}.${spellbook}.${level}]') />
    <#if (spelllevelcount > 0)>
      <div class="spell-level-block">
        <div class="spell-level-head">
          <#if (level = 0)>Cantrips (Level 0) &mdash; Unlimited Uses<#else>Level ${level} &mdash; Prepared: ${pcstring('SPELLLISTCAST.${class}.${level}')}</#if>
        </div>
        <table style="table-layout:fixed;margin-bottom:2px;">
          <tr>
            <th class="border" align="left" style="width:23%;">Spell</th>
            <th class="border" style="width:7%;" align="center">Uses</th>
            <th class="border" style="width:14%;" align="center">Save, DC &amp; SR</th>
            <th class="border" style="width:16%;" align="center">Range, Time &amp; Duration</th>
            <th class="border" align="left" style="width:40%;">Effect / Description</th>
          </tr>
<@loop from=0 to=spelllevelcount-1 ; spell , spell_has_next>
          <#assign spSave = pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.SAVEINFO') />
          <#assign spDC   = pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.DC') />
          <#assign spSR   = pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.SR') />
          <#assign spSaveShort = spSave />
          <#if spSave?lower_case?contains("fortitude")><#assign spSaveShort = "Fortitude" /></#if>
          <#if spSave?lower_case?contains("reflex")><#assign spSaveShort = "Reflex" /></#if>
          <#if spSave?lower_case?contains("will")><#assign spSaveShort = "Will" /></#if>
          <#assign hasNoSave = (spSave = "None" || spSave = "" || spSave?lower_case = "none") />
          <tr>
            <td class="border" style="font-size:8pt;">
              <b>${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.BONUSSPELL')}${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.NAME')}</b><br/>
              <i style="font-size:7pt;">${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.SCHOOL')}</i><br />
              <span class="src">[${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.SOURCE')}]</span>
            </td>
            <td class="border" align="center" style="font-size:11pt;letter-spacing:1px;">
              <#if (level = 0)>&infin;<#else><@loop from=1 to=pcvar("SPELLMEM.${class}.${spellbook}.${level}.${spell}.TIMES")>&#9744;</@loop></#if>
            </td>
            <td class="border" align="center" style="font-size:8pt;">
              <#if !hasNoSave><b>${spSaveShort}</b><br/>DC ${spDC}<br/></#if>
              SR: <#if (spSR != "")>${spSR}<#else>&mdash;</#if>
            </td>
            <td class="border" align="center" style="font-size:7pt;">
              ${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.RANGE')}<br/>
              ${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.CASTINGTIME')}<br/>
              ${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.DURATION')}
            </td>
            <td class="border" style="font-size:7pt;">${pcstring('SPELLMEM.${class}.${spellbook}.${level}.${spell}.EFFECT')}</td>
          </tr>
</@loop>
        </table>
      </div>
    </#if>
  </@loop>
</#if>
</@loop>
</@loop>
