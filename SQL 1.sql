update AUTHORS
set NOTE = 'No data'
where NOTE is null;

select DOCUMENTS_NAME
from DOCUMENTS
where AUTHOR_ID = 2;

select DOCUMENTS_ID, DOCUMENTS_NAME, AUTHOR_NAME
from DOCUMENTS
    join AUTHORS on DOCUMENTS.AUTHOR_ID = AUTHORS.AUTHOR_ID
where DOCUMENTS_NAME  like '%report%';