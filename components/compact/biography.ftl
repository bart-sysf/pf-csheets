<div class="no-break" style="">
<h2>Biography</h2>
<div class="note-box" style="margin-bottom:2px;">
  <#assign bioRaw = pcstring('BIO') />
  <#assign bioRaw = bioRaw?replace("&lt;","<") />
  <#assign bioRaw = bioRaw?replace("&gt;",">") />
  <#assign bioRaw = bioRaw?replace("&amp;","&") />
  <#assign bioRaw = bioRaw?replace("&quot;",'"') />
  <#assign bioRaw = bioRaw?replace("&#39;","'") />
  ${bioRaw}
</div>
</div>
