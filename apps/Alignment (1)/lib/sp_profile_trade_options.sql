SELECT pto.profile_trade_id, pto.option_id, o.name as option, l.name as list from 
(
select profile_trade_id, ptol.locations as option_id from profile_trades pt join profile_trade_locations ptol on profile_trade_id = pt.id where pt.user_id={{user.value}}
union
select profile_trade_id, ptol.site_types from profile_trades pt join profile_trade_site_types ptol on profile_trade_id = pt.id where pt.user_id={{user.value}}
UNION
select profile_trade_id, ptol.accessories  from profile_trades pt join profile_trade_accessories ptol on profile_trade_id = pt.id where pt.user_id={{user.value}}
UNION
select profile_trade_id, ptol.freon_types from profile_trades pt join profile_trade_freon_types ptol on profile_trade_id = pt.id where pt.user_id={{user.value}}
UNION
select profile_trade_id, ptol.applications from profile_trades pt join profile_trade_applications ptol on profile_trade_id = pt.id where pt.user_id={{user.value}}
UNION
select profile_trade_id, ptol.capabilities from profile_trades pt join profile_trade_capabilities ptol on profile_trade_id = pt.id where pt.user_id={{user.value}}
UNION
select profile_trade_id, ptol.system_types from profile_trades pt join profile_trade_system_types ptol on profile_trade_id = pt.id where pt.user_id={{user.value}}
UNION
select profile_trade_id, ptol.project_sizes from profile_trades pt join profile_trade_project_sizes ptol on profile_trade_id = pt.id where pt.user_id={{user.value}}
UNION
select profile_trade_id, ptol.material_types from profile_trades pt join profile_trade_material_types ptol on profile_trade_id = pt.id where pt.user_id={{user.value}}
) as pto 
join trade_options as o on o.id=pto.option_id
join option_lists l on l.id=o.option_list_id