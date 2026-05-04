select empno,split_part(ename,' ',1) first_name , split_part(ename,' ',2) last_name , sal+nvl(comm,0) as net_Sal 
from  {{ source('s1', 'emp') }}