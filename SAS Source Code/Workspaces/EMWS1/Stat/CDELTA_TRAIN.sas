if ROLE in('INPUT', 'REJECTED') then do;
if upcase(NAME) in(
'NAT'
'SCHO'
'SEC'
'SECT'
'STUDY'
'TOWN'
) then ROLE='INPUT';
else delete;
end;
