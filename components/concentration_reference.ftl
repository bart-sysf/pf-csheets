<div class="no-break" style="margin-bottom:8px;">
  <h2>Concentration Quick Reference</h2>
  <div class="note-box" style="margin-bottom:4px;">
    <b>Concentration Check</b><br/>
    d20 + caster level + spellcasting ability modifier + other bonuses<br/>
    Spellcasting ability modifier is INT (wizard), WIS (cleric/druid), CHA (sorcerer/bard/oracle), etc.
    <#assign hasConcClass = false />
    <@loop from=pcvar('COUNT[SPELLRACE]') to=pcvar('COUNT[SPELLRACE]+COUNT[CLASSES]-1') ; class , class_has_next>
      <#if (pcstring("SPELLLISTCLASS.${class}") != '' && pcstring("SPELLLISTCLASS.${class}.CONCENTRATION") != '')>
        <#assign hasConcClass = true />
        <br/>&bull; <b>${pcstring('SPELLLISTCLASS.${class}')}</b>: d20${pcstring('SPELLLISTCLASS.${class}.CONCENTRATION')} total
        (CL ${pcstring('SPELLLISTCLASS.${class}.CASTERLEVEL')} + ${pcstring('SPELLLISTDCSTAT.${class}.0')})
      </#if>
    </@loop>
    <#if !hasConcClass><br/><span style="color:var(--c4);">No spellcasting class concentration values found.</span></#if>
  </div>
  <table style="table-layout:fixed; margin-bottom:4px;">
    <tr>
      <th class="border" align="left" style="width:50%;">When A Check Is Required</th>
      <th class="border" align="left" style="width:50%;">Concentration DC</th>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Cast defensively (to avoid provoking)</td>
      <td class="border" style="font-size:8pt;">15 + (2 &times; spell level)</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Take damage while casting</td>
      <td class="border" style="font-size:8pt;">10 + damage dealt + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Taking continuous damage while casting</td>
      <td class="border" style="font-size:8pt;">10 + half last damage dealt + spell level</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Vigorous motion (mount, rough vehicle, choppy water)</td>
      <td class="border" style="font-size:8pt;">10 + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Violent motion (violent weather, heavy turbulence)</td>
      <td class="border" style="font-size:8pt;">15 + spell level</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Extra violent motion (earthquake-level disruption)</td>
      <td class="border" style="font-size:8pt;">20 + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Weather with high wind, rain, or debris</td>
      <td class="border" style="font-size:8pt;">5 + spell level</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Entangled while casting</td>
      <td class="border" style="font-size:8pt;">15 + spell level</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Grappled or pinned while casting</td>
      <td class="border" style="font-size:8pt;">10 + grappler CMB + spell level</td>
    </tr>
  </table>
  <div class="help-text">
    <b>Common Modifiers</b>: <b>Combat Casting</b> gives +4 on concentration checks to cast defensively or while grappled/pinned &mdash;
    ability score increases, feats, traits, class features, and situational bonuses also apply.<br/>
    If you fail the concentration check, the spell is lost and has no effect.
  </div>
</div>
