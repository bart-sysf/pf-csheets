<!-- ═══ COMBAT ═══ -->
<h2>Combat Basics</h2>
<div class="no-break" style="margin-bottom:3px;">
  <table style="table-layout:fixed; margin-bottom:3px;">
    <tr>
      <td width="22%"><div class="mini"><span class="mname">Max HP</span><span class="mval">${pcstring('HP')}</span></div></td>
      <td width="39%"><div class="mini manual-hp"><span class="mname">Wounds / HP Lost</span><span class="mval">&nbsp;</span></div></td>
      <td width="39%"><div class="mini manual-hp"><span class="mname">Current HP</span><span class="mval">&nbsp;</span></div></td>
    </tr>
    <tr>
      <td><div class="mini-inv"><span class="mname">Initiative</span><span class="mval">${pcstring('INITIATIVEMOD')}</span></div></td>
      <td><div class="mini"><span class="mname">Speed</span><span class="mval"><@loop from=0 to=pcvar('COUNT[MOVE]-1') ; mv , mv_has_next>${pcstring('MOVE.${mv}.RATE')}</@loop></span></div></td>
      <td><div class="mini"><span class="mname">DR</span><span class="mval"><#if (pcstring('DR') != '')>${pcstring('DR')}<#else>0</#if></span></div></td>
    </tr>
  </table>
</div>
