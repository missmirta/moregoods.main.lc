<form id="filter_form" name="filter_form" action="javascript:void(null)" onsubmit="submit_form(this)">

<table cellspacing=0 cellpadding=2 class=add_form>
	<tr>
		<th>Filter</th>
	</tr>
	<tr>
		<td>

		<table cellspacing=2 cellpadding=1 width=850>
			<tr>
				<td>Customer:</td>
				<td><input type=text name=search[customer_login]
					value="{$aSearch.customer_login|escape}" maxlength=20
					style='width: 110px'></td>

				<td>Date from:</td>
				<td><input id=date_from name=search[date_from] style='width: 80px;'
					readonly="readonly" value="{$aSearch.date_from|escape}"
					onclick="popUpCalendar(this, this, 'dd.mm.yyyy');"></td>
				<td>Date To:</td>
				<td><input id=date_to name=search[date_to] style='width: 80px;'
					readonly="readonly" value="{$aSearch.date_to|escape}"
					onclick="popUpCalendar(this, this, 'dd.mm.yyyy');"></td>
			</tr>
			<tr>
				<td>Custom ID:</td>
				<td><input type="text" style="width: 110px;" maxlength="20" name="search[custom_id]
				value="{$aSearch.custom_id}"
				"></td>
				<td>Description:</td>
				<td colspan=2><input type=text name=search[description]
					value="{$aSearch.description|escape}" maxlength=40
					style='width: 220px'></td>
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