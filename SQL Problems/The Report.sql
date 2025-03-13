SELECT 
    CASE 
        WHEN g.grade < 8 THEN 'NULL' 
        ELSE s.name 
    END AS Name,
    g.grade AS Grade,
    s.marks AS Mark
FROM Students s
JOIN Grades g 
ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER BY 
    g.grade DESC, 
    CASE 
        WHEN g.grade < 8 THEN FORMAT(s.marks, '')  
        ELSE s.name 
    END ASC;