<form id="filter_form" name="filter_form" action="javascript:void(null)" onsubmit="submit_form(this)">

<table cellspacing=0 cellpadding=2 class=add_form>
	<tr>
		<th>Filter</th>
	</tr>
	<tr>
		<td>

		<table cellspacing=2 cellpadding=1 width=850>
			<tr>
				<td>{$oLanguage->GetMessage('Address')}:</td>
				<td><input type=text name=search[address]
					value="{$aSearch.address|escape}" maxlength=50 style='width: 110px'></td>

				<td>{$oLanguage->GetMessage('Subject')}:</td>
				<td><input type=text name=search[subject]
					value="{$aSearch.subject|escape}" maxlength=50
					style='width: 110px'></td>

				<td>{$oLanguage->GetMessage('Date from')}:</td>
				<td><input id=date_from name=search[date_from] style='width: 80px;'
					readonly="readonly" value="{$aSearch.date_from|escape}"
					onclick="popUpCalendar(this, this, 'dd.mm.yyyy');"></td>
				<td>{$oLanguage->GetMessage('Date To')}:</td>
				<td><input id=date_to name=search[date_to] style='width: 80px;'
					readonly="readonly" value="{$aSearch.date_to|escape}"
					onclick="popUpCalendar(this, this, 'dd.mm.yyyy');"></td>
			</tr>
		</table>

		</td>
	</tr>
</table>

<input type=button class='bttn' value="{$oLanguage->getDMessage('Clear')}"
	onclick="xajax_process_browse_url('?{$sSearchReturn|escape}')">
<input type=submit value='Search' class='bttn'>

<input type=hidden name=action value={$sBaseAction}_search>
<input type=hidden name=return value="{$sSearchReturn|escape}">

</form>