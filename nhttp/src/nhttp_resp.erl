-module(nhttp_resp).

% generic-message = start-line
%                   *(message-header CRLF)
%                   CRLF
%                   [ message-body ]
make_response( Resp ) ->

make_statusline( Resp ) ->

% @doc: Only HTTP version 1.1 is supported.
make_version() -> "HTTP/1.1".

make_headers() ->

make_header() ->

% Always in RFC 1123 format.
datestr({ {Y,M,D}, {H,Mi,S} }) ->
    io_lib:format(
        "~3B, ~2B ~3B ~4B ~2B:~2B:~2B",
        [calendar:day_of_the_week(Y,M,D),D,val_to_month(M),Y,H,Mi,S] ).
