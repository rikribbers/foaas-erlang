# FOAAS client for Erlang

[![Build Status](https://travis-ci.org/rikribbers/foaas.svg?branch=master)](https://travis-ci.org/rikribbers/foaas-erlang)

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

# Roadmap

 * Support with options list as parameter
     * accept headers
     * URL
 * Support with different types for parameter (currently only binaries are supported)
 * Advanded unittesting with quickcheck
 * Compatibillaty check for operations using [https://foas.com/operations]
 * Support filters


I accept pull requests!

