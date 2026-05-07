<#if (pcstring('PORTRAIT') != '')>
<div class="no-break">
<h2>Portrait</h2>
<div style="margin-bottom:8px; text-align:center;">
  <img src="file://localhost/${pcstring('PORTRAIT')}" style="max-height:400px; max-width:60%; border:3px solid var(--c5); box-shadow: 0 2px 8px rgba(0,0,0,0.2);" alt="${pcstring('NAME')}" />
</div>
</div>
</#if>
