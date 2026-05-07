<div class="quick-page" style="page-break-before: always;">
  <h2>Quick Reference Sheet</h2>

  <div class="six-col" style="margin-bottom:6px;">
    <div class="stat-box"><span class="sname">STR</span><span class="score">${pcstring('STAT.0.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.0.MOD.NOTEMP.NOEQUIP')}</span></div>
    <div class="stat-box"><span class="sname">DEX</span><span class="score">${pcstring('STAT.1.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.1.MOD.NOTEMP.NOEQUIP')}</span></div>
    <div class="stat-box"><span class="sname">CON</span><span class="score">${pcstring('STAT.2.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.2.MOD.NOTEMP.NOEQUIP')}</span></div>
    <div class="stat-box"><span class="sname">INT</span><span class="score">${pcstring('STAT.3.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.3.MOD.NOTEMP.NOEQUIP')}</span></div>
    <div class="stat-box"><span class="sname">WIS</span><span class="score">${pcstring('STAT.4.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.4.MOD.NOTEMP.NOEQUIP')}</span></div>
    <div class="stat-box"><span class="sname">CHA</span><span class="score">${pcstring('STAT.5.NOTEMP.NOEQUIP')}</span><span class="mod">${pcstring('STAT.5.MOD.NOTEMP.NOEQUIP')}</span></div>
  </div>

  <table class="mini-row-fill" style="margin-bottom:6px;">
    <tr>
      <td><div class="mini"><span class="mname">HP</span><span class="mval">${pcstring('HP')}</span></div></td>
      <td><div class="mini-inv"><span class="mname">Init</span><span class="mval">${pcstring('INITIATIVEMOD')}</span></div></td>
      <td><div class="mini"><span class="mname">Move</span><span class="mval"><@loop from=0 to=pcvar('COUNT[MOVE]-1') ; mv , mv_has_next>${pcstring('MOVE.${mv}.RATE')}</@loop></span></div></td>
      <td><div class="mini"><span class="mname">AC</span><span class="mval">${pcstring('AC.Total')}</span></div></td>
      <td><div class="mini"><span class="mname">Touch</span><span class="mval">${pcstring('AC.Touch')}</span></div></td>
      <td><div class="mini"><span class="mname">Flat</span><span class="mval">${pcstring('AC.Flatfooted')}</span></div></td>
      <td><div class="mini"><span class="mname">BAB</span><span class="mval">${pcstring('ATTACK.MELEE')}</span></div></td>
      <td><div class="mini"><span class="mname">Melee</span><span class="mval">${pcstring('ATTACK.MELEE.TOTAL')}</span></div></td>
      <td><div class="mini"><span class="mname">Ranged</span><span class="mval">${pcstring('ATTACK.RANGED.TOTAL')}</span></div></td>
    </tr>
  </table>

  <table style="table-layout:fixed; margin-bottom:6px;">
    <tr>
      <th class="border" align="left" style="width:33%;">Save</th>
      <th class="border" style="width:17%;">Total</th>
      <th class="border" align="left" style="width:50%;">Quick Notes</th>
    </tr>
    <tr class="shaded"><td class="border" style="font-size:8pt;"><b>Fortitude</b></td><td class="border val">${pcstring('CHECK.0.TOTAL')}</td><td class="border" style="font-size:8pt;">Poison, disease, body effects</td></tr>
    <tr><td class="border" style="font-size:8pt;"><b>Reflex</b></td><td class="border val">${pcstring('CHECK.1.TOTAL')}</td><td class="border" style="font-size:8pt;">Area effects, traps, avoid damage</td></tr>
    <tr class="shaded"><td class="border" style="font-size:8pt;"><b>Will</b></td><td class="border val">${pcstring('CHECK.2.TOTAL')}</td><td class="border" style="font-size:8pt;">Mental control, fear, compulsion</td></tr>
  </table>

  <div class="two-col" style="gap:8px;">
    <div>
      <table style="table-layout:fixed;">
        <tr>
          <th class="border" align="left" style="width:70%;">Skill</th>
          <th class="border" style="width:30%;">Total</th>
        </tr>
<@loop from=0 to=(pcvar('count("SKILLSIT", "VIEW=VISIBLE_EXPORT")')/2)?int-1 ; skq1 , skq1_has_next>
        <tr <#if (skq1 % 2 = 0)>class="shaded"</#if>>
          <td class="border" style="font-size:7.5pt;">${pcstring('SKILLSIT.${skq1}')}</td>
          <td class="border val">${pcstring('SKILLSIT.${skq1}.TOTAL')}</td>
        </tr>
</@loop>
      </table>
    </div>
    <div>
      <table style="table-layout:fixed;">
        <tr>
          <th class="border" align="left" style="width:70%;">Skill</th>
          <th class="border" style="width:30%;">Total</th>
        </tr>
<#assign skillCount = pcvar('count("SKILLSIT", "VIEW=VISIBLE_EXPORT")') />
<#assign splitPoint = (skillCount/2)?int />
<@loop from=splitPoint to=skillCount-1 ; skq2 , skq2_has_next>
        <tr <#if (skq2 % 2 = 0)>class="shaded"</#if>>
          <td class="border" style="font-size:7.5pt;">${pcstring('SKILLSIT.${skq2}')}</td>
          <td class="border val">${pcstring('SKILLSIT.${skq2}.TOTAL')}</td>
        </tr>
</@loop>
      </table>
    </div>
  </div>

  <div class="help-text">
    Quick use: keep this page visible during combat for AC, attacks, saves, and top skill totals.
  </div>
</div>
