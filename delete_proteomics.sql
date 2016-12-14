delete from peptide where protein_id in (select protein.id from protein, project where protein.project_id=project.id and project.name='TEST-PR688-ALL');
delete from protein where project_id in (select id from project where name='TEST-PR688-ALL');
delete from project where name='TEST-PR688-ALL';
