CREATE OR ALTER PROCEDURE spStudentProgress(@StudentId UNIQUEIDENTIFIER) 

AS
    --Ver quais curso ele começou mas ainda não terminou
    SELECT
        [Student].[Name] AS [Name],
        [Course].[Title] AS [Title],
        [StudentCourse].[Progress] AS [Progress]

    FROM
        [StudentCourse]
        INNER JOIN [Student] ON [Student].[Id] = [StudentCourse].[StudentId]
        INNER JOIN [Course] ON [Course].[Id] = [StudentCourse].[CourseId]
    WHERE
        [StudentCourse].[StudentId] = @StudentId
        AND [StudentCourse].[Progress] > 0
        AND [StudentCourse].[Progress] < 100
    ORDER BY [StudentCourse].[LastUpdateDate] DESC