  SELECT
            DISTINCT m.Code AS ModuleCode,
            m.Name AS ModuleName,
            m.Credits AS ModuleCredits,
            m.ClassHoursPerWeek AS ModuleClassHours,
            s.NumberofWeeks AS Weeks,
            CAST((m.Credits * 10.0 / s.NumberofWeeks - m.ClassHoursPerWeek) AS FLOAT) AS SelfStudyHoursPerWeek,
            CAST((m.Credits * 10.0 / s.NumberofWeeks - m.ClassHoursPerWeek) AS FLOAT) * s.NumberofWeeks AS Hours
        FROM Modules m
        JOIN Semesters s ON 1=1;