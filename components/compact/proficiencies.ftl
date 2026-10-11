<#-- Include hidden class grants as well as proficiency feats. -->
<#function hasProficiency internalKey featKey>
  <#return pcvar('countdistinct("ABILITIES","CATEGORY=Internal","KEY=${internalKey}")') gt 0 || pcvar('countdistinct("ABILITIES","CATEGORY=FEAT","KEY=${featKey}")') gt 0 />
</#function>
<#assign weaponProficiencies = [] />
<#list pc.weaponprofs as proficiency>
  <#assign weaponProficiencies = weaponProficiencies + [proficiency.displayname] />
</#list>
<#assign armorProficiencies = [] />
<#list ["Light", "Medium", "Heavy"] as armorType>
  <#if hasProficiency("Armor Prof ~ ${armorType}", "Armor Proficiency (${armorType})")>
    <#assign armorProficiencies = armorProficiencies + [armorType] />
  </#if>
</#list>
<#assign shieldProficiencies = [] />
<#if hasProficiency("Shield Prof", "Shield Proficiency")>
  <#assign shieldProficiencies = ["Bucklers", "Light shields", "Heavy shields"] />
</#if>
<#if hasProficiency("Shield Prof ~ Tower", "Tower Shield Proficiency")>
  <#assign shieldProficiencies = shieldProficiencies + ["Tower shields"] />
</#if>

<div class="no-break">
<h2>Proficiencies</h2>
<div style="margin-bottom:2px;">
  <table>
    <tr>
      <th class="border" align="left" style="width:15%;">Weapons</th>
      <td class="border"><#if weaponProficiencies?has_content>${weaponProficiencies?sort?join(", ")?html}<#else>None</#if></td>
    </tr>
    <tr>
      <th class="border" align="left">Armor</th>
      <td class="border"><#if armorProficiencies?has_content>${armorProficiencies?join(", ")?html}<#else>None</#if></td>
    </tr>
    <tr>
      <th class="border" align="left">Shields</th>
      <td class="border"><#if shieldProficiencies?has_content>${shieldProficiencies?join(", ")?html}<#else>None</#if></td>
    </tr>
  </table>
</div>
</div>
