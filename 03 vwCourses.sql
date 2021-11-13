CREATE OR ALTER VIEW vwCourses AS

    SELECT
        [Course].[Id],
        [Course].[Tag],
        [Course].[Title],
        [Course].[Url],
        [Course].[Summary],
        [Category].[Title] AS [Category],
        [Author].[Name] AS [Author],
        [Course].[CreateDate]
        FROM 
            [Course]
            INNER JOIN [Category] ON [Course].[CategoryId] = [Category].Id
            INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id]
    WHERE
        [Active] = 1


