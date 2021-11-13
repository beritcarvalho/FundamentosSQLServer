EXEC spStudentProgress  'acc06d5d-0a04-4bc8-acfe-c4b3c201ebd3'

DECLARE @IdAluno UNIQUEIDENTIFIER

SELECT @IdAluno = id FROM Student    WHERE [Name] LIKE 'Berit'

EXEC spStudentProgress @IdAluno




