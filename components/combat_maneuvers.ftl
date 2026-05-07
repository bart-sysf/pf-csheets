<div class="no-break" style="margin-bottom:8px;">
  <table style="table-layout:fixed; margin-bottom:4px;">
    <tr>
      <th class="border" align="left" style="width:18%;">Maneuver</th>
      <th class="border" style="width:10%;">CMB</th>
      <th class="border" style="width:10%;">CMD</th>
      <th class="border" align="left" style="width:62%;">Notes</th>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Grapple</td>
      <td class="border val">${pcstring('VAR.CMB_Grapple.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Grapple.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Pin, tie up, damage, or move a grappled foe. Grappled = &minus;2 attack/AC, no two-handed.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Trip</td>
      <td class="border val">${pcstring('VAR.CMB_Trip.INTVAL.SIGN')}</td>
      <td class="border val"><#if (pcvar("CantBeTripped") != 0)>Immune<#else>${pcstring('VAR.CMD_Trip.INTVAL')}</#if></td>
      <td class="border" style="font-size:7pt;">Knock prone. Prone = &minus;4 melee attack, &minus;4 AC vs melee, +4 AC vs ranged.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Disarm</td>
      <td class="border val">${pcstring('VAR.CMB_Disarm.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Disarm.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Knock weapon from foe. Beat CMD by 10+ = item lands 10ft away.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Bull Rush</td>
      <td class="border val">${pcstring('VAR.CMB_BullRush.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_BullRush.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Push foe back 5ft + 5ft per 5 over CMD. You may follow.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Sunder</td>
      <td class="border val">${pcstring('VAR.CMB_Sunder.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Sunder.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Damage a held/worn item. Broken = &minus;2 attack/damage or halved effectiveness.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Overrun</td>
      <td class="border val">${pcstring('VAR.CMB_Overrun.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Overrun.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Move through foe's space. Fail = blocked; beat by 5+ = foe prone.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Dirty Trick</td>
      <td class="border val">${pcstring('VAR.CMB_DirtyTrick.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_DirtyTrick.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Blind, entangle, or sicken 1 round (+1 per 5 over CMD). Std action to remove.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Drag</td>
      <td class="border val">${pcstring('VAR.CMB_Drag.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Drag.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Pull foe 5ft + 5ft per 5 over CMD toward you. Must move with them.</td>
    </tr>
    <tr class="shaded">
      <td class="border" style="font-size:8pt;">Reposition</td>
      <td class="border val">${pcstring('VAR.CMB_Reposition.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Reposition.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Move foe to any adjacent square. Foe must remain adjacent.</td>
    </tr>
    <tr>
      <td class="border" style="font-size:8pt;">Steal</td>
      <td class="border val">${pcstring('VAR.CMB_Steal.INTVAL.SIGN')}</td>
      <td class="border val">${pcstring('VAR.CMD_Steal.INTVAL')}</td>
      <td class="border" style="font-size:7pt;">Take one carried/worn item (not wielded). No free hand required.</td>
    </tr>
  </table>
  <div class="help-text">All maneuvers provoke AoO unless you have the Improved feat for that maneuver &mdash; failing by 5+ lets the foe attempt the same maneuver on you as a free action</div>
</div>
