PROGRAM EnvironmentVariables(INPUT, OUTPUT);
USES dos;
BEGIN{EnvironmentVariables}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITE('REQUEST_METHOD: ');
  WRITELN(GetEnv('REQUEST_METHOD'));
  WRITE('QUERY_STRING: ');
  WRITELN(GetEnv('QUERY_STRING'));
  WRITE('CONTENT_LENGTH: ');
  WRITELN(GetEnv('CONTENT_LENGTH'));
  WRITE('HTTP_USER_AGENT: ');
  WRITELN(GetEnv('HTTP_USER_AGENT'));
  WRITE('HTTP_HOST: ');
  WRITELN(GetEnv('HTTP_HOST'));
END.{EnvironmentVariables}
