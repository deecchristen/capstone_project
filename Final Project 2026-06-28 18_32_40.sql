SELECT Major_Category, Year_of_Study, AVG(Weekly_GenAI_Hours) AS avg_AI_hours, AVG(Post_Semester_GPA) AS avg_GPA
FROM `data.ai_cleaned`
GROUP BY Major_Category, Year_of_Study
ORDER BY Year_of_Study, avg_GPA;

SELECT Institutional_Policy, AVG(Weekly_GenAI_Hours) AS avg_AI_hours
FROM `data.ai_cleaned`
GROUP BY Institutional_Policy
ORDER BY Institutional_Policy;

SELECT Primary_Use_Case, AVG(Weekly_GenAI_Hours) AS avg_AI_hours, AVG(Skill_Retention_Score) AS avg_skill_retention
FROM `data.ai_cleaned`
GROUP BY Primary_Use_Case
ORDER BY avg_AI_hours;

SELECT Weekly_GenAI_Hours, AVG(Post_Semester_GPA) AS avg_GPA, AVG(Skill_Retention_Score) AS avg_skill_retention, AVG(Anxiety_Level_During_Exams) AS avg_Anxiety_Level_During_Exams
FROM `data.ai_cleaned`
WHERE Weekly_GenAI_Hours = 40 or Weekly_GenAI_Hours = 0
GROUP BY Weekly_GenAI_Hours
ORDER BY avg_GPA DESC;

SELECT Post_Semester_GPA, AVG(Weekly_GenAI_Hours) AS avg_AI_hours, AVG(Traditional_Study_Hours) as study_hours, AVG(Anxiety_Level_During_Exams) AS anxiety_level_during_exams
FROM `data.ai_cleaned`
WHERE Post_Semester_GPA = 4.0
GROUP BY Post_Semester_GPA;

SELECT Anxiety_Level_During_Exams, avg(Post_Semester_GPA) AS avg_GPA, AVG(Weekly_GenAI_Hours) AS avg_weekly_AI_hours, AVG(Traditional_Study_Hours) AS traditional_study_hours
FROM `data.ai_cleaned`
GROUP BY Anxiety_Level_During_Exams
ORDER BY Anxiety_Level_During_Exams;

SELECT AI_Use, AVG(Skill_Retention_Score) AS avg_skill_retention, AVG(Post_Semester_GPA) AS GPA
FROM `data.ai_cleaned`
GROUP BY AI_Use
ORDER BY AI_Use;
