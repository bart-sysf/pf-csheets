<!-- ═══ COMBAT ═══ -->
<h2>Combat</h2>
<div class="no-break" style="margin-bottom:6px;">
  <table style="table-layout:fixed; margin-bottom:6px;">
    <tr>
      <td width="16%"><div class="mini"><span class="mname">Max HP</span><span class="mval">${pcstring('HP')}</span></div></td>
      <td width="22%"><div class="mini"><span class="mname">HP Lost Today</span><span class="mval">&nbsp;</span></div></td>
      <td width="22%"><div class="mini"><span class="mname">Current HP</span><span class="mval">&nbsp;</span></div></td>
      <td width="13%"><div class="mini-inv"><span class="mname">Initiative</span><span class="mval">${pcstring('INITIATIVEMOD')}</span></div></td>
      <td width="13%"><div class="mini"><span class="mname">Speed</span><span class="mval"><@loop from=0 to=pcvar('COUNT[MOVE]-1') ; mv , mv_has_next>${pcstring('MOVE.${mv}.RATE')}</@loop></span></div></td>
      <td width="14%"><div class="mini"><span class="mname">DR</span><span class="mval"><#if (pcstring('DR') != '')>${pcstring('DR')}<#else>0</#if></span></div></td>
    </tr>
  </table>
</div>

<div class="no-break" style="margin-bottom:6px;">
  <table style="table-layout:fixed; margin-bottom:4px;">
    <tr>
      <td width="7%" class="ac-component" style="background:var(--c1);color:var(--inv);">
        <span class="acl" style="color:var(--c5);">AC</span>
        <span class="acv" style="color:var(--inv);">${pcstring('AC.Total')}</span>
      </td>
      <td width="3%" class="ac-op">:</td>
      <td width="7%" class="ac-component"><span class="acl">Touch</span><span class="acv">${pcstring('AC.Touch')}</span></td>
      <td width="3%" class="ac-op">:</td>
      <td width="7%" class="ac-component"><span class="acl">Flat</span><span class="acv">${pcstring('AC.Flatfooted')}</span></td>
      <td width="3%" class="ac-op">=</td>
      <td width="7%" class="ac-component"><span class="acl">Base</span><span class="acv">${pcstring('AC.Base')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Armor*</span><span class="acv">${pcstring('AC.Armor')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Shield</span><span class="acv">${pcstring('AC.Shield')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Dex</span><span class="acv">${pcstring('AC.Ability')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Size</span><span class="acv">${pcstring('AC.Size')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Nat</span><span class="acv">${pcstring('AC.NaturalArmor')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Dodge</span><span class="acv">${pcstring('AC.Dodge')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Defl</span><span class="acv">${pcstring('AC.Deflection')}</span></td>
      <td width="2%" class="ac-op">+</td>
      <td width="7%" class="ac-component"><span class="acl">Misc</span><span class="acv">${pcstring('AC.Misc')}</span></td>
    </tr>
  </table>
  <div class="help-text">
    <b>Touch AC</b> ignores Armor, Shield, and Natural Armor &mdash;
    <b>Flat-Footed AC</b> ignores Dexterity and Dodge &mdash;
    <b>Deflection</b> and <b>Size</b> apply to all three &mdash;
    * Armor bonus reduced by check penalty if not proficient &mdash;
    Max Dex cap limits Dex bonus when wearing armor
  </div>
  <table style="table-layout:fixed; margin-top:6px; margin-bottom:4px;">
    <tr>
      <td><div class="mini"><span class="mname">BAB</span><span class="mval">${pcstring('ATTACK.MELEE')}</span></div></td>
      <td><div class="mini"><span class="mname">Melee Hit</span><span class="mval">${pcstring('ATTACK.MELEE.TOTAL')}</span></div></td>
      <td><div class="mini"><span class="mname">Ranged Hit</span><span class="mval">${pcstring('ATTACK.RANGED.TOTAL')}</span></div></td>
      <td><div class="mini"><span class="mname">Hit Die</span><span class="mval">${pcstring('HITDICE')}</span></div></td>
      <td><div class="mini"><span class="mname">CMB</span><span class="mval">${pcstring('VAR.CMB.INTVAL.SIGN')}</span></div></td>
      <td><div class="mini"><span class="mname">CMD</span><span class="mval">${pcstring('VAR.CMD.INTVAL')}</span></div></td>
      <td><div class="mini"><span class="mname">SR</span><span class="mval"><#if (pcstring('SR') != '')>${pcstring('SR')}<#else>0</#if></span></div></td>
    </tr>
  </table>
  <div class="help-text">
    <b>CMB</b> = BAB + Str + Size &mdash; <b>CMD</b> = 10 + BAB + Str + Dex + Size &mdash;
    <b>SR</b>: attacker rolls d20 + caster level &ge; SR to affect you
  </div>
</div>
