<div class="no-break">
<h2>Equipment</h2>
<div style="margin-bottom:8px;">
  <table style="table-layout:fixed;">
    <tr>
      <th class="border" align="left" style="width:30%;">Item</th>
      <th class="border" style="width:13%;">Location</th>
      <th class="border" style="width:6%;">Qty</th>
      <th class="border" style="width:10%;">Weight</th>
      <th class="border" style="width:10%;">Cost</th>
      <th class="border" align="center" style="width:31%;">Uses (check off when used)</th>
    </tr>
<@loop from=0 to=pcvar('COUNT[EQUIPMENT.Not.Coin.NOT.Gem]-1') ; eq , eq_has_next>
<#assign eqType = pcstring("EQ.Not.Coin.NOT.Gem.${eq}.TYPE")?lower_case />
<#assign eqQty = pcvar("EQ.Not.Coin.NOT.Gem.${eq}.QTY") />
<#assign eqCharges = pcvar("EQ.Not.Coin.NOT.Gem.${eq}.CHARGES") />
<#assign isUsable = eqType?contains("consumable") || eqType?contains("potion") || eqType?contains("ammunition") || eqType?contains("wand") || eqType?contains("scroll") || eqCharges gt 0 />
<#assign eqSprop = pcstring('EQ.Not.Coin.NOT.Gem.${eq}.SPROP') />
<#assign eqDesc = pcstring('EQ.Not.Coin.NOT.Gem.${eq}.DESC') />
<#assign hasDetail = (eqSprop != "" || eqDesc != "") />
    <tr>
      <td class="border" style="font-size:8pt;">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.NAME.MAGIC~<b>~</b>')}</td>
      <td class="border" align="center" style="font-size:8pt;">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.LOCATION')}</td>
      <td class="border" align="center">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.QTY')}</td>
      <td class="border" align="center">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.WT')}</td>
      <td class="border" align="center">${pcstring('EQ.Not.Coin.NOT.Gem.${eq}.COST')}</td>
      <td class="border" align="center" style="font-size:12pt;letter-spacing:2px;padding:2px 4px;">
        <#if isUsable>
          <#if eqCharges gt 0>
            <@loop from=1 to=eqCharges>&#9744;</@loop>
          <#else>
            <@loop from=1 to=eqQty?int>&#9744;</@loop>
          </#if>
        </#if>
      </td>
    </tr>
    <#if hasDetail>
    <tr>
      <td colspan="6" class="eq-detail">
        <#if (eqSprop != "")><b>Special:</b> ${eqSprop}<#if (eqDesc != "")> &mdash; </#if></#if><#if (eqDesc != "")>${eqDesc}</#if>
      </td>
    </tr>
    </#if>
</@loop>
    <tr>
      <td colspan="2" align="right" style="font-size:8pt;"><b>Totals:</b></td>
      <td class="border" colspan="2" align="center">${pcstring('TOTAL.WEIGHT')}</td>
      <td class="border" align="center">${pcstring('TOTAL.VALUE')}</td>
      <td></td>
    </tr>
  </table>
  <div class="help-text">
    Light load: no penalty &mdash;
    Medium: &minus;3 check penalty, max Dex +3, &minus;10ft speed &mdash;
    Heavy: &minus;6 check penalty, max Dex +1, &minus;10ft speed &mdash;
    Lift overhead = heavy max; lift off ground = 2&times;; drag = 5&times;
  </div>
</div>
</div>

<div class="no-break">
<div class="two-col" style="margin-bottom:8px;">
  <div class="mini">
    <span class="mname">Encumbrance</span>
    <span class="mval" style="font-size:11pt;">${pcstring('TOTAL.WEIGHT')}</span>
    <span style="font-size:8pt;display:block;">Light: ${pcstring('WEIGHT.LIGHT')} / Med: ${pcstring('WEIGHT.MEDIUM')} / Heavy: ${pcstring('WEIGHT.HEAVY')}</span>
  </div>
  <div class="mini">
    <span class="mname">Unspent Gold</span>
    <span class="mval" style="font-size:11pt;">${pcstring('GOLD.TRUNC')} gp</span>
  </div>
</div>
</div>
