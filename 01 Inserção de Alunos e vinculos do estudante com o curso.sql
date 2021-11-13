/*DECLARE @StudentId UNIQUEIDENTIFIER = (SELECT NEWID())

INSERT INTO
    [Student]
    (
        [Id],
        [Name],
        [Email],
        Document,
        [Phone],
        Birthdate
    )
    VALUES
        (
            @StudentId,
            'Cecilia',
            'treca@trequetilha.com',
            '3423',
            '11-952039502',
            '2020-08-04'
        )
*/

/*
DELETE from Student
    WHERE id = '014c90c9-47b7-439e-9e15-d3fd12b3c4f4'
*/

    SELECT * FROM Student

    SELECT * FROM Course
    WHERE Tag = 2801;

    -- id curso 5ef614da-366d-6156-d049-694800000000

    --Criar vinculo Berit estuda C#

DECLARE @StudentId UNIQUEIDENTIFIER,
@CourseId UNIQUEIDENTIFIER

SELECT @StudentId = Id FROM Student
    WHERE [Name] LIKE 'Berit'

SELECT @StudentId as IdEstudante


SELECT @CourseId = Id FROM Course
    WHERE Tag = 2801;

SELECT @CourseId AS IdCurso;

SELECT * FROM StudentCourse;
/*
INSERT INTO [StudentCourse]
(
    [CourseId],
    [StudentId],
    [Progress],
    [Favorite],
    [StartDate],
    [LastUpdateDate]
)
VALUES
(
    @CourseId,
    @StudentId,
    50,
    1,
    '2021-10-27 23:40:36',
    GETDATE()
)
*/


