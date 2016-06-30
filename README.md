# FOAAS client for Erlang

[![Build Status](https://travis-ci.org/rikribbers/foaas-erlang.svg?branch=master)](https://travis-ci.org/rikribbers/foaas-erlang)

An FOAAS client library for Erlang. see [foaas.com](http://foaas.com) for more details

# Usage

    | => ./rebar3 shell
    ===> Verifying dependencies...
    ===> Compiling foaas
    Erlang/OTP 18 [erts-7.3] [source-d2a6d81] [64-bit] [smp:4:4] [async-threads:0] [hipe] [kernel-poll:false]

    Eshell V7.3  (abort with ^G)
    1> foaas:you(<<"Rik">>,<<"Someone">>).
    <<"Fuck you, Rik. - Someone">>
    2>

# Building and testing

In the rootfolder there is a Dockerfile that I use for building and testing the client.

    | => docker build -t  rikribbers/erldev .
    | => docker run rikribbers/erldev /bin/sh -c "cd /root; git clone https://github.com/rikribbers/foaas-erlang; cd foaas-erlang; make"


# Roadmap

 * Support with options list as parameter
     * accept headers
     * URL
 * Support with different types for parameter (currently only binaries are supported)
 * Compatabillaty check for operations using [https://foas.com/operations]
 * Support filters


I accept pull requests!

