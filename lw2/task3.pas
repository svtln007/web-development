PROGRAM HelloDear(INPUT, OUTPUT);
USES dos;
VAR
  Variables: STRING;
  Number: INTEGER;
BEGIN{HelloDear}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  Variables := GetEnv('QUERY_STRING');
  IF Variables = ''
  THEN
    BEGIN
      WRITE('Hello dear, ');
      Number := Pos('&', Variables);
      IF(Number = 0)
      THEN
        WRITELN(Copy(Variables, 6, Length(Variables)))
      ELSE
        WRITELN(Copy(Variables, 6, Number - 6))
    END
  ELSE
    WRITELN('Hello Anonymous!')
END.{HelloDear}
