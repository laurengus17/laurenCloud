select pt.id as profile_trade_id,  case when pt.priority<=0 then 99  else pt.priority end as priority,  pt.trade_id, t.name as trade_name
 , pt.subtrade_id, st.name as subtrade_name
from profile_trades as pt
	join trades t on t.id = pt.trade_id
    left outer join trades st on st.id=pt.subtrade_id
where pt.user_id={{user.value}}
order by priority