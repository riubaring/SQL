SELECT distinct A.course_session_id as 'Course Id', C.f_name as 'Firstname', C.l_name as 'Lastname', B.email_address as 'Email'  
	FROM ocas.employee_enrollments as A
    join ocas.employee_emails B on  A.employee_id = B.employee_id
    join ocas.employees C on A.employee_id = C.id
    where A.course_session_id = 18534;