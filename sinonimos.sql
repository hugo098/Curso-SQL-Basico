--=============================================================--

create synonym d_sum
for dept_sum_vu;


select * from dept_sum_vu;

select * from d_sum;

--=============================================================--

drop synonym d_sum;