<!-- ═══ NOTES ═══ -->
<div class="no-break">
<h2>Notes (Description)</h2>
<div class="note-box" style="margin-bottom:8px;">
  <#assign descRaw = pcstring('DESC') />
  <#assign descRaw = descRaw?replace("&lt;","<") />
  <#assign descRaw = descRaw?replace("&gt;",">") />
  <#assign descRaw = descRaw?replace("&amp;","&") />
  <#assign descRaw = descRaw?replace("&quot;",'"') />
  <#assign descRaw = descRaw?replace("&#39;","'") />
  ${descRaw}
</div>
</div>
