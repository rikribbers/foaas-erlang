%%%-------------------------------------------------------------------
%%% @author rik.ribbers
%%% @copyright
%%%
%%% Permission to use, copy, modify, and/or distribute this software for any
%%% purpose with or without fee is hereby granted, provided that the above
%%% copyright notice and this permission notice appear in all copies.
%%%
%%% THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
%%% WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
%%% MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
%%% ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
%%% WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
%%% ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
%%% OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
%%%
%%% @doc
%%%
%%% @end
%%%-------------------------------------------------------------------
-module(foaas).

-ifdef (TEST).
-include_lib("eunit/include/eunit.hrl").
-endif.

%% API exports
-export([off/2,
  you/2,
  this/1,
  that/1,
  everyone/1,
  everything/1,
  donut/2,
  shakespeare/2,
  linus/2,
  king/2,
  pink/1,
  life/1,
  chainsaw/2,
  outside/2,
  thing/2,
  thanks/1,
  flying/1,
  fascinating/1,
  madison/2,
  cool/1,
  field/3,
  nugget/2,
  yoda/2,
  ballmer/3,
  what/1,
  because/1,
  caniuse/2,
  bye/1,
  diabetes/1,
  bus/2,
  xmas/2,
  bday/2,
  awesome/1,
  tucker/1,
  bucket/1,
  family/1
]).

%%====================================================================
%% API functions
%%====================================================================

-spec(off(Name :: binary(), From :: binary()) -> binary()).
off(Name, From) ->
  handle(off,[Name,From]).

-spec(you(Name :: binary(), From :: binary()) -> binary()).
you(Name, From) ->
  handle(you, [Name, From]).

-spec(this(From :: binary()) -> binary()).
this(From) ->
  handle(this, [From]).

-spec(that(From :: binary()) -> binary()).
that(From) ->
  handle(that, [From]).

-spec(everything(From :: binary()) -> binary()).
everything(From) ->
  handle(everything, [From]).

-spec(everyone(From :: binary()) -> binary()).
everyone(From) ->
  handle(everyone, [From]).

-spec(donut(Name :: binary(), From :: binary()) -> binary()).
donut(Name, From) ->
  handle(donut, [Name, From]).

-spec(shakespeare(Name :: binary(), From :: binary()) -> binary()).
shakespeare(Name, From) ->
  handle(shakespeare, [Name, From]).

-spec(linus(Name :: binary(), From :: binary()) -> binary()).
linus(Name, From) ->
  handle(linus, [Name, From]).

-spec(king(Name :: binary(), From :: binary()) -> binary()).
king(Name, From) ->
  handle(king, [Name, From]).

-spec(pink(From :: binary()) -> binary()).
pink(From) ->
  handle(pink, [From]).

-spec(life(From :: binary()) -> binary()).
life(From) ->
  handle(life, [From]).

-spec(chainsaw(Name :: binary(), From :: binary()) -> binary()).
chainsaw(Name, From) ->
  handle(chainsaw, [Name, From]).

-spec(outside(Name :: binary(), From :: binary()) -> binary()).
outside(Name, From) ->
  handle(outside,[Name, From]).

-spec(thing(Thing :: binary(), From :: binary()) -> binary()).
thing(Thing, From) ->
  handle(binary_to_atom(Thing,utf16),[From]).

-spec(thanks(From :: binary()) -> binary()).
thanks(From) ->
  handle(thanks, [From]).

-spec(flying(From :: binary()) -> binary()).
flying(From) ->
  handle(flying, [From]).

-spec(fascinating(From :: binary()) -> binary()).
fascinating(From) ->
  handle(fascinating, [From]).

-spec(madison(Name :: binary(), From :: binary()) -> binary()).
madison(Name, From) ->
  handle(madison, [Name, From]).

-spec(cool(From :: binary()) -> binary()).
cool(From) ->
  handle(cool, [From]).

-spec(field(Name :: binary(), From :: binary(), Reference :: binary()) -> binary()).
field(Name, From, Reference) ->
  handle(field, [Name, From, Reference]).

-spec(nugget(Name :: binary(), From :: binary()) -> binary()).
nugget(Name, From) ->
  handle(nugget, [Name, From]).

-spec(yoda(Name :: binary(), From :: binary()) -> binary()).
yoda(Name, From) ->
  handle(yoda, [Name, From]).

-spec(ballmer(Name :: binary(), Company :: binary(), From :: binary()) -> binary()).
ballmer(Name, Company, From) ->
  handle(ballmer, [Name, Company, From]).

-spec(what(From :: binary()) -> binary()).
what(From) ->
  handle(what, [From]).

-spec(because(From :: binary()) -> binary()).
because(From) ->
  handle(because, [From]).

-spec(caniuse(Name :: binary(), From :: binary()) -> binary()).
caniuse(Name, From) ->
  handle(caniuse, [Name, From]).

-spec(bye(From :: binary()) -> binary()).
bye(From) ->
  handle(bye, [From]).

-spec(diabetes(From :: binary()) -> binary()).
diabetes(From) ->
  handle(diabetes, [From]).

-spec(bus(Name :: binary(), From :: binary()) -> binary()).
bus(Name, From) ->
  handle(bus, [Name, From]).

-spec(xmas(Name :: binary(), From :: binary()) -> binary()).
xmas(Name, From) ->
  handle(xmas, [Name, From]).

-spec(bday(Name :: binary(), From :: binary()) -> binary()).
bday(Name, From) ->
  handle(bday, [Name, From]).

-spec(awesome(From :: binary()) -> binary()).
awesome(From) ->
  handle(awesome, [From]).

-spec(tucker(From :: binary()) -> binary()).
tucker(From) ->
  handle(tucker, [From]).

-spec(bucket(From :: binary()) -> binary()).
bucket(From) ->
  handle(bucket, [From]).

-spec(family(From :: binary()) -> binary()).
family(From) ->
  handle(family, [From]).


%%====================================================================
%% Internal functions
%%====================================================================

handle(Type,Options) when is_atom(Type) ->
  options(Options, ["http://foaas.com/", atom_to_list(Type)]).

options([],Acc) ->
  URL = lists:flatten(Acc),
  Response = httpc:request(get, {URL, [{"accept", "text/plain"}]}, [], []),
  response_body(Response);

options([H|T],Acc) ->
  List = ["/",binary_to_list(H)],
  options(T,lists:append(Acc,List)).

%% From http://no-fucking-idea.com/blog/2013/01/22/making-request-to-rest-resources-in-erlang/
response_body({ok, {_, _, Body}}) -> list_to_binary(Body).


%%====================================================================
%% Unit tests
%%====================================================================
-ifdef (TEST).

off_test() ->
  ?assertEqual(<<"Fuck off, Tom. - Chris">>, off(<<"Tom">>, <<"Chris">>)).

you_test() ->
  ?assertEqual(<<"Fuck you, Tom. - Chris">>, you(<<"Tom">>, <<"Chris">>)).

this_test() ->
  ?assertEqual(<<"Fuck this. - Chris">>, this(<<"Chris">>)).

that_test() ->
  ?assertEqual(<<"Fuck that. - Chris">>, that(<<"Chris">>)).

everyone_test() ->
  ?assertEqual(<<"Everyone can go and fuck off. - Chris">>, everyone(<<"Chris">>)).

everything_test() ->
  ?assertEqual(<<"Fuck everything. - Chris">>, everything(<<"Chris">>)).

donut_test() ->
  ?assertEqual(<<"Tom, go and take a flying fuck at a rolling donut. - Chris">>, donut(<<"Tom">>, <<"Chris">>)).

shakespeare_test() ->
  ?assertEqual(<<"Tom, Thou clay-brained guts, thou knotty-pated fool, thou whoreson obscene greasy tallow-catch! - Chris">>,
    shakespeare(<<"Tom">>, <<"Chris">>)).

linus_test() ->
  ?assertEqual(<<"Tom, there aren't enough swear-words in the English language, so now I'll have to call you perkeleen vittupää just to express my disgust and frustration with this crap. - Chris">>,
    linus(<<"Tom">>, <<"Chris">>)).

king_test() ->
  ?assertEqual(<<"Oh fuck off, just really fuck off you total dickface. Christ Tom, you are fucking thick. - Chris">>,
    king(<<"Tom">>, <<"Chris">>)).

pink_test() ->
  ?assertEqual(<<"Well, Fuck me pink. - Chris">>, pink(<<"Chris">>)).

life_test() ->
  ?assertEqual(<<"Fuck my life. - Chris">>, life(<<"Chris">>)).

chainsaw_test() ->
  ?assertEqual(<<"Fuck me gently with a chainsaw, Tom. Do I look like Mother Teresa? - Chris">>,
    chainsaw(<<"Tom">>, <<"Chris">>)).

outside_test() ->
  ?assertEqual(<<"Tom, why don't you go outside and play hide-and-go-fuck-yourself? - Chris">>,
    outside(<<"Tom">>, <<"Chris">>)).

thing_test() ->
  ?assertEqual(<<"Fuck Something. - Chris">>,
    thing(<<"Something">>, <<"Chris">>)).

thanks_test() ->
  ?assertEqual(<<"Fuck you very much. - Chris">>, thanks(<<"Chris">>)).

flying_test() ->
  ?assertEqual(<<"I don't give a flying fuck. - Chris">>, flying(<<"Chris">>)).

fascinating_test() ->
  ?assertEqual(<<"Fascinating story, in what chapter do you shut the fuck up? - Chris">>, fascinating(<<"Chris">>)).

madison_test() ->
  ?assertEqual(<<"What you've just said is one of the most insanely idiotic things I have ever heard, Tom. At no point in your rambling, incoherent response were you even close to anything that could be considered a rational thought. Everyone in this room is now dumber for having listened to it. I award you no points Tom, and may God have mercy on your soul. - Chris">>,
    madison(<<"Tom">>, <<"Chris">>)).

cool_test() ->
  ?assertEqual(<<"Cool story, bro. - Chris">>, cool(<<"Chris">>)).

field_test() ->
  ?assertEqual(<<"And Tom said unto Chris, 'Verily, cast thine eyes upon the field in which I grow my fucks', and Chris gave witness unto the field, and saw that it was barren. - Reference">>,
    field(<<"Tom">>, <<"Chris">>, <<"Reference">>)).

nugget_test() ->
  ?assertEqual(<<"Well Tom, aren't you a shining example of a rancid fuck-nugget. - Chris">>,
    nugget(<<"Tom">>, <<"Chris">>)).

yoda_test() ->
  ?assertEqual(<<"Fuck off, you must, Tom. - Chris">>,
    yoda(<<"Tom">>, <<"Chris">>)).

ballmer_test() ->
  ?assertEqual(<<"Fucking Tom is a fucking pussy. I'm going to fucking bury that guy, I have done it before, and I will do it again. I'm going to fucking kill Company. - Chris">>,
    ballmer(<<"Tom">>, <<"Company">>, <<"Chris">>)).

what_test() ->
  ?assertEqual(<<"What the fuck‽ - Chris">>,
    what(<<"Chris">>)).

because_test() ->
  ?assertEqual(<<"Why? Because Fuck you, that's why. - Chris">>,
    because(<<"Chris">>)).

caniuse_test() ->
  ?assertEqual(<<"Can you use Tool? Fuck no! - Chris">>,
    caniuse(<<"Tool">>, <<"Chris">>)).

bye_test() ->
  ?assertEqual(<<"Fuckity bye! - Chris">>,
    bye(<<"Chris">>)).

diabetes_test() ->
  ?assertEqual(<<"I'd love to stop and chat to you but I'd rather have type 2 diabetes. - Chris">>,
    diabetes(<<"Chris">>)).

bus_test() ->
  ?assertEqual(<<"Christ on a bendy-bus, Tom, don't be such a fucking faff-arse. - Chris">>,
    bus(<<"Tom">>, <<"Chris">>)).

xmas_test() ->
  ?assertEqual(<<"Merry Fucking Christmas, Tom. - Chris">>,
    xmas(<<"Tom">>, <<"Chris">>)).

bday_test() ->
  ?assertEqual(<<"Happy Fucking Birthday, Tom. - Chris">>,
    bday(<<"Tom">>, <<"Chris">>)).

awesome_test() ->
  ?assertEqual(<<"This is Fucking Awesome. - Chris">>,
    awesome(<<"Chris">>)).

tucker_test() ->
  ?assertEqual(<<"Come the fuck in or fuck the fuck off. - Chris">>,
    tucker(<<"Chris">>)).

bucket_test() ->
  ?assertEqual(<<"Please choke on a bucket of cocks. - Chris">>,
    bucket(<<"Chris">>)).

family_test() ->
  ?assertEqual(<<"Fuck you, your whole family, your pets, and your feces. - Chris">>,
    family(<<"Chris">>)).

-endif.