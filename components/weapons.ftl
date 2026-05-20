<div class="no-break">
<h2>Weapons</h2>
<div style="margin-bottom:4px;">
  <table style="table-layout:fixed;">
    <tr>
      <th class="border" align="left" style="width:28%;">Weapon</th>
      <th class="border" style="width:10%;">1H-P</th>
      <th class="border" style="width:10%;">2H</th>
      <th class="border" style="width:10%;">2W-P</th>
      <th class="border" style="width:16%;">DMG (2H)</th>
      <th class="border" style="width:12%;">Crit</th>
    </tr>
<@loop from=0 to=pcvar('COUNT[EQTYPE.Weapon]-1') ; wp , wp_has_next>
<#if (pcstring("WEAPON.${wp}.NAME") != "")>
<#assign wCat = pcstring("WEAPON.${wp}.CATEGORY")?lower_case />
<#assign isRanged = wCat?contains("ranged") />
<#assign isLight = pcboolean("WEAPON.${wp}.ISTYPE.Light") />
<#assign isSplash = pcboolean("WEAPON.${wp}.ISTYPE.Splash") />
<#assign wType = pcstring("WEAPON.${wp}.TYPE")?lower_case />
<#assign wTypeFull = "" />
<#if wType?contains("p")><#assign wTypeFull = wTypeFull + "Piercing " /></#if>
<#if wType?contains("s")><#assign wTypeFull = wTypeFull + "Slashing " /></#if>
<#if wType?contains("b")><#assign wTypeFull = wTypeFull + "Bludgeoning" /></#if>
<#assign wTypeFull = wTypeFull?trim />
    <tr>
      <td class="border" style="font-size:8pt;">
        <b>${pcstring('WEAPON.${wp}.NAME')}</b><#if isLight> &#9651;</#if><br/>
        <span style="font-size:7pt;color:var(--c4);">${wTypeFull}</span>
      </td>
      <#if isRanged>
        <td class="border val" colspan="3" align="center" style="font-size:8pt;">${pcstring('WEAPON.${wp}.TOTALHIT')} (ranged, ${pcstring('WEAPON.${wp}.RANGE')})</td>
        <td class="border" align="center" style="font-size:8pt;"><#if isSplash>${pcstring('WEAPON.${wp}.BASICDAMAGE')}<#else>${pcstring('WEAPON.${wp}.DAMAGE')}</#if></td>
      <#else>
        <td class="border val">${pcstring('WEAPON.${wp}.BASEHIT')}</td>
        <td class="border val">${pcstring('WEAPON.${wp}.THHIT')}</td>
        <td class="border val">${pcstring('WEAPON.${wp}.TWPHITH')}</td>
        <td class="border" align="center" style="font-size:8pt;">
          ${pcstring('WEAPON.${wp}.BASICDAMAGE')}<br/>
          <span style="font-size:7pt;color:var(--c4);">2H: ${pcstring('WEAPON.${wp}.THDAMAGE')}</span>
        </td>
      </#if>
      <td class="border" align="center" style="font-size:8pt;">${pcstring('WEAPON.${wp}.CRIT')}/x${pcstring('WEAPON.${wp}.MULT')}</td>
    </tr>
    <#if isRanged>
    <tr>
      <td colspan="6" style="font-size:7pt;background:var(--c6);padding:3px 6px;border:1px solid var(--c5);">
        <b>Range increments</b> (&minus;2 per increment):
        &nbsp;|&nbsp; 2x: ${pcstring('WEAPON.${wp}.RANGELIST.1.TOTALHIT')}
        &nbsp;|&nbsp; 3x: ${pcstring('WEAPON.${wp}.RANGELIST.2.TOTALHIT')}
        &nbsp;|&nbsp; 4x: ${pcstring('WEAPON.${wp}.RANGELIST.3.TOTALHIT')}
        &nbsp;|&nbsp; 5x: ${pcstring('WEAPON.${wp}.RANGELIST.4.TOTALHIT')}
        &nbsp;(max 5)
      </td>
    </tr>
    </#if>
    <#if (pcstring('WEAPON.${wp}.SPROP') != "")>
    <tr>
      <td colspan="6" style="font-size:7pt;background:var(--c5);padding:3px 6px;border:1px solid var(--c5); font-style: italic;">
        <b>Special:</b> ${pcstring('WEAPON.${wp}.SPROP')}
      </td>
    </tr>
    </#if>
</#if>
</@loop>
<#assign charSize = pcstring('SIZE')?lower_case />
<#assign sizeKey = charSize />
<#if charSize?starts_with("tiny")><#assign sizeKey = "t" />
<#elseif charSize?starts_with("small")><#assign sizeKey = "s" />
<#elseif charSize?starts_with("medium")><#assign sizeKey = "m" />
<#elseif charSize?starts_with("large")><#assign sizeKey = "l" />
<#elseif charSize?starts_with("huge")><#assign sizeKey = "h" />
<#elseif charSize?starts_with("gargantuan")><#assign sizeKey = "g" />
<#elseif charSize?starts_with("colossal")><#assign sizeKey = "c" />
</#if>
<#assign unarmedDie = "1d3" />
<#if sizeKey == "t" || sizeKey == "s"><#assign unarmedDie = "1d2" />
<#elseif sizeKey == "m"><#assign unarmedDie = "1d3" />
<#elseif sizeKey == "l"><#assign unarmedDie = "1d4" />
<#elseif sizeKey == "h"><#assign unarmedDie = "1d6" />
<#elseif sizeKey == "g"><#assign unarmedDie = "1d8" />
<#elseif sizeKey == "c"><#assign unarmedDie = "2d6" />
</#if>
<#assign strMod = pcstring('STAT.0.MOD.SIGN') />
    <tr style="background:var(--c6);">
      <td class="border" style="font-size:8pt;">
        <b>Unarmed</b> &#9651;<br/>
        <span style="font-size:7pt;color:var(--c4);">Bludgeoning</span>
      </td>
      <td class="border val">${pcstring('ATTACK.MELEE.TOTAL')}</td>
      <td class="border val">${pcstring('ATTACK.MELEE.TOTAL')}</td>
      <td class="border val">${pcstring('ATTACK.MELEE.TOTAL')}</td>
      <td class="border" align="center" style="font-size:8pt;">
        ${unarmedDie}${strMod}<br/>
        <span style="font-size:7pt;color:var(--c4);">2H: ${unarmedDie}${strMod}</span>
      </td>
      <td class="border" align="center" style="font-size:8pt;">20/x2</td>
    </tr>
  </table>
  <div class="help-text">
    <b>1H-P</b> = one-handed primary &nbsp;
    <b>2H</b> = two-handed, adds 1.5&times; Str to damage &nbsp;
    <b>2W-P</b> = two weapons, primary hand &nbsp;
    &#9651; = light weapon (Small or Tiny size)
  </div>
  <div class="help-text" style="margin-top:2px;">
    Two-weapon attack penalties &mdash;
    <b>2W-P</b>: &minus;4 (or &minus;2 with TWF feat) &nbsp;
    <b>2W-O(L) light off-hand</b>: &minus;4/&minus;4 (or &minus;2/&minus;2 with TWF feat) &nbsp;
    <b>2W-O(H) heavy off-hand</b>: &minus;4/&minus;8 (or &minus;2/&minus;6 with TWF feat) &mdash;
    Power Attack: &minus;1 hit per 4 BAB for +2 dmg (+3 two-handed)
  </div>
</div>
</div>
