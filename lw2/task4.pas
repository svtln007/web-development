PROGRAM WorkWithQueryString(INPUT, OUTPUT);
USES 
  DOS;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  Variables, Value: STRING;
BEGIN{GetQueryStringParameter}
  Variables := GetEnv('QUERY_STRING');
  Value := '';
  WHILE Variables <> ''
  DO
    BEGIN
      IF Copy(Variables, 1, Pos('=', Variables) - 1) = Key
      THEN
        BEGIN
          IF Pos('&', Variables) = 0
          THEN
            Value := Copy(Variables, Pos('=', Variables) + 1, Length(Variables) - Pos('=', Variables) - 1)
          ELSE          
            Value := Copy(Variables, Pos('=', Variables) + 1, Pos('&', Variables) - Pos('=', Variables) - 1)
        END;
      IF Pos('&', Variables) = 0
      THEN
        Delete(Variables, 1, Length(Variables))
      ELSE 
        Delete(Variables, 1, Pos('&', Variables)) 
    END;
  GetQueryStringParameter := Value;
END;{GetQueryStringParameter}
BEGIN {WorkWithQueryString}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {WorkWithQueryString}

