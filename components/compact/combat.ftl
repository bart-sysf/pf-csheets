<!-- ═══ DEFENSE & ATTACKS ═══ -->
<h2>Defense &amp; Attacks</h2>
<div class="no-break" style="margin-bottom:3px;">
  <table style="table-layout:fixed; margin-bottom:2px;">
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
  <#assign hitDieTypes = pcstring("HITDICE")?replace("[ ]+", "", "r") />
  <#assign hitDieTypes = hitDieTypes?replace("[0-9]+d([0-9]+)", "d$1", "r") />
  <#assign hitDieTypes = hitDieTypes?replace("[()]", "", "r") />
  <#assign hitDieTypes = hitDieTypes?replace("[+-][0-9]+$", "", "r") />
  <#assign hitDieTypes = hitDieTypes?replace("+", " / ") />
  <table style="table-layout:fixed; margin-top:1.5px; margin-bottom:2px;">
    <tr>
      <td><div class="mini"><span class="mname">BAB</span><span class="mval">${pcstring('ATTACK.MELEE')}</span></div></td>
      <td><div class="mini"><span class="mname">Melee Hit</span><span class="mval">${pcstring('ATTACK.MELEE.TOTAL')}</span></div></td>
      <td><div class="mini"><span class="mname">Ranged Hit</span><span class="mval">${pcstring('ATTACK.RANGED.TOTAL')}</span></div></td>
      <td><div class="mini"><span class="mname">Hit Die</span><span class="mval"><#if hitDieTypes != "">${hitDieTypes}<#else>&mdash;</#if></span></div></td>
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
