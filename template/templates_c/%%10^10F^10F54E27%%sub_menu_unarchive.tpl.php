<?php /* Smarty version 2.6.18, created on 2017-05-16 19:38:44
         compiled from addon/mpanel/sub_menu_unarchive.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'escape', 'addon/mpanel/sub_menu_unarchive.tpl', 1, false),)), $this); ?>
<a class=submenu href="?action=<?php echo $this->_tpl_vars['sBaseAction']; ?>
_unarchive&return=<?php echo ((is_array($_tmp=$this->_tpl_vars['sReturn'])) ? $this->_run_mod_handler('escape', true, $_tmp, 'url') : smarty_modifier_escape($_tmp, 'url')); ?>
" onclick="

{
	update_input('main_form','action','<?php echo $this->_tpl_vars['sBaseAction']; ?>
_unarchive');
	update_input('main_form','return','<?php echo ((is_array($_tmp=$this->_tpl_vars['sReturn'])) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
');
	submit_form();
}  return false;">

<IMG border=0 src="/libp/mpanel/images/small/unarchive.png" hspace=3 align=absmiddle><?php echo $this->_tpl_vars['oLanguage']->getDMessage('Move to unarchive'); ?>
</A>