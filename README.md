# FOAAS client for Erlang

[![Build Status](https://travis-ci.org/rikribbers/foaas-erlang.svg?branch=master)](https://travis-ci.org/rikribbers/foaas-erlang)

An FOAAS client library for Erlang. see [foaas.com](http://foaas.com) for more details

# Usage

The simple interface return binary strings (accept: text/plain)

    1> foaas:you(<<"Rik">>,<<"Someone">>).
    <<"Fuck you, Rik. - Someone">>

There is the headers parameter

    1> foaas:you(<<"Rik">>,<<"Someone">>,[{"accept","text/plain"}]).
    <<"Fuck you, Rik. - Someone">>

When no headers are provided, default is the simple interface (accept: text/plain)

    1>foaas:you(<<"Rik">>,<<"Someone">>,[]).
    <<"Fuck you, Rik. - Someone">>

With valid headers you get a binary string

    1> foaas:you(<<"Rik">>,<<"Someone">>,[{"accept","application/json"}]).
    <<"{\"message\":\"Fuck you, Rik.\",\"subtitle\":\"- Someone\"}">>

With invalid headers you also get a binary string

    1> foaas:you(<<"Rik">>,<<"Someone">>,[{"accept","application/blabla"}]).
    <<"Internal Server Error\n">>

# Building and testing

    | => docker run rikribbers/erldev /bin/sh -c "cd /root; git clone https://github.com/rikribbers/foaas-erlang; cd foaas-erlang; make"

# Roadmap

 * Support with different types for returning (currently only binaries are supported)
 * Compatibility check for operations using [https://foas.com/operations]
 * Support filters


I accept pull requests!

