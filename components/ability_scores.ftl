<!-- ═══ ABILITY SCORES ═══ -->
<div class="no-break">
<h2>Ability Scores</h2>
<div class="six-col" style="margin-bottom:8px;">
<@loop from=0 to=pcvar('COUNT[STATS]-1') ; stat , stat_has_next>
  <div class="stat-box">
    <span class="sname">${pcstring('STAT.${stat}.NAME')}</span>
    <span class="score">${pcstring('STAT.${stat}.NOTEMP.NOEQUIP')}</span>
    <span class="mod">${pcstring('STAT.${stat}.MOD.NOTEMP.NOEQUIP')}</span>
  </div>
</@loop>
</div>
</div>
