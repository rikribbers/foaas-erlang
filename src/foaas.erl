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

-ifdef (EUNIT).
-include_lib("eunit/include/eunit.hrl").
-endif.

-ifdef (EQC).
-include_lib("eqc/include/eqc.hrl").

-export([prop_construct_urlpath/0]).

-endif.

%% API exports
-export([version/0,
  off/2, off/3,
  you/2, you/3,
  this/1, this/2,
  that/1, that/2,
  everyone/1, everyone/2,
  everything/1, everything/2,
  donut/2, donut/3,
  shakespeare/2, shakespeare/3,
  linus/2, linus/3,
  king/2, king/3,
  pink/1, pink/2,
  life/1, life/2,
  chainsaw/2, chainsaw/3,
  outside/2, outside/3,
  thing/2, thing/3,
  thanks/1, thanks/2,
  flying/1, flying/2,
  fascinating/1, fascinating/2,
  madison/2, madison/3,
  cool/1, cool/2,
  field/3, field/4,
  nugget/2, nugget/3,
  yoda/2, yoda/3,
  ballmer/3, ballmer/4,
  what/1, what/2,
  because/1, because/2,
  caniuse/2, caniuse/3,
  bye/1, bye/2,
  diabetes/1, diabetes/2,
  bus/2, bus/3,
  xmas/2, xmas/3,
  bday/2, bday/3,
  awesome/1, awesome/2,
  tucker/1, tucker/2,
  bucket/1, bucket/2,
  family/1, family/2,
  shutup/2, shutup/3,
  zayn/1, zayn/2,
  keepcalm/2, keepcalm/3,
  dosomething/3, dosomething/4,
  mornin/1, mornin/2,
  thumbs/2, thumbs/3,
  retard/1, retard/2,
  greed/2, greed/3,
  bm/2, bm/3,
  gfy/2, gfy/3,
  me/1, me/2,
  back/2, back/3,
  think/2, think/3,
  keep/2, keep/3,
  single/1, single/2,
  look/2, look/3,
  looking/1, looking/2,
  no/1, no/2,
  give/1, give/2,
  zero/1, zero/2,
  pulp/2, pulp/3,
  sake/1, sake/2,
  anyway/2, anyway/3
]).

%%====================================================================
%% API functions
%%====================================================================
-spec(version() -> binary()).
version() ->
  handle(version, [], []).

-spec(off(Name :: binary(), From :: binary()) -> binary()).
off(Name, From) ->
  off(Name, From, []).

-spec(off(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
off(Name, From, Headers) ->
  handle(off, [Name, From], Headers).

-spec(you(Name :: binary(), From :: binary()) -> binary()).
you(Name, From) ->
  you(Name, From, []).

-spec(you(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
you(Name, From, Headers) ->
  handle(you, [Name, From], Headers).

-spec(this(From :: binary()) -> binary()).
this(From) ->
  this(From, []).

-spec(this(From :: binary(), Headers :: [tuple()]) -> binary()).
this(From, Headers) ->
  handle(this, [From], Headers).

-spec(that(From :: binary()) -> binary()).
that(From) ->
  that(From, []).

-spec(that(From :: binary(), Headers :: [tuple()]) -> binary()).
that(From, Headers) ->
  handle(that, [From], Headers).

-spec(everything(From :: binary()) -> binary()).
everything(From) ->
  everything(From, []).

-spec(everything(From :: binary(), Headers :: [tuple()]) -> binary()).
everything(From, Headers) ->
  handle(everything, [From], Headers).

-spec(everyone(From :: binary()) -> binary()).
everyone(From) ->
  everyone(From, []).

-spec(everyone(From :: binary(), Headers :: [tuple()]) -> binary()).
everyone(From, Headers) ->
  handle(everyone, [From], Headers).

-spec(donut(Name :: binary(), From :: binary()) -> binary()).
donut(Name, From) ->
  donut(Name, From, []).

-spec(donut(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
donut(Name, From, Headers) ->
  handle(donut, [Name, From], Headers).

-spec(shakespeare(Name :: binary(), From :: binary()) -> binary()).
shakespeare(Name, From) ->
  shakespeare(Name, From, []).

-spec(shakespeare(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
shakespeare(Name, From, Headers) ->
  handle(shakespeare, [Name, From], Headers).

-spec(linus(Name :: binary(), From :: binary()) -> binary()).
linus(Name, From) ->
  linus(Name, From, []).

-spec(linus(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
linus(Name, From, Headers) ->
  handle(linus, [Name, From], Headers).

-spec(king(Name :: binary(), From :: binary()) -> binary()).
king(Name, From) ->
  king(Name, From, []).

-spec(king(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
king(Name, From, Headers) ->
  handle(king, [Name, From], Headers).

-spec(pink(From :: binary()) -> binary()).
pink(From) ->
  pink(From, []).

-spec(pink(From :: binary(), Headers :: [tuple()]) -> binary()).
pink(From, Headers) ->
  handle(pink, [From], Headers).

-spec(life(From :: binary()) -> binary()).
life(From) ->
  life(From, []).

-spec(life(From :: binary(), Headers :: [tuple()]) -> binary()).
life(From, Headers) ->
  handle(life, [From], Headers).

-spec(chainsaw(Name :: binary(), From :: binary()) -> binary()).
chainsaw(Name, From) ->
  chainsaw(Name, From, []).

-spec(chainsaw(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
chainsaw(Name, From, Headers) ->
  handle(chainsaw, [Name, From], Headers).

-spec(outside(Name :: binary(), From :: binary()) -> binary()).
outside(Name, From) ->
  outside(Name, From, []).

-spec(outside(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
outside(Name, From, Headers) ->
  handle(outside, [Name, From], Headers).

-spec(thing(Thing :: binary(), From :: binary()) -> binary()).
thing(Thing, From) ->
  thing(Thing, From, []).

-spec(thing(Thing :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
thing(Thing, From, Headers) ->
  handle(binary_to_atom(Thing, utf8), [From], Headers).

-spec(thanks(From :: binary()) -> binary()).
thanks(From) ->
  thanks(From, []).

-spec(thanks(From :: binary(), Headers :: [tuple()]) -> binary()).
thanks(From, Headers) ->
  handle(thanks, [From], Headers).

-spec(flying(From :: binary()) -> binary()).
flying(From) ->
  flying(From, []).

-spec(flying(From :: binary(), Headers :: [tuple()]) -> binary()).
flying(From, Headers) ->
  handle(flying, [From], Headers).

-spec(fascinating(From :: binary()) -> binary()).
fascinating(From) ->
  fascinating(From, []).

-spec(fascinating(From :: binary(), Headers :: [tuple()]) -> binary()).
fascinating(From, Headers) ->
  handle(fascinating, [From], Headers).

-spec(madison(Name :: binary(), From :: binary()) -> binary()).
madison(Name, From) ->
  madison(Name, From, []).

-spec(madison(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
madison(Name, From, Headers) ->
  handle(madison, [Name, From], Headers).

-spec(cool(From :: binary()) -> binary()).
cool(From) ->
  cool(From, []).

-spec(cool(From :: binary(), Headers :: [tuple()]) -> binary()).
cool(From, Headers) ->
  handle(cool, [From], Headers).

-spec(field(Name :: binary(), From :: binary(), Reference :: binary()) -> binary()).
field(Name, From, Reference) ->
  field(Name, From, Reference, []).

-spec(field(Name :: binary(), From :: binary(), Reference :: binary(), Headers :: [tuple()]) -> binary()).
field(Name, From, Reference, Headers) ->
  handle(field, [Name, From, Reference], Headers).

-spec(nugget(Name :: binary(), From :: binary()) -> binary()).
nugget(Name, From) ->
  nugget(Name, From, []).

-spec(nugget(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
nugget(Name, From, Headers) ->
  handle(nugget, [Name, From], Headers).

-spec(yoda(Name :: binary(), From :: binary()) -> binary()).
yoda(Name, From) ->
  yoda(Name, From, []).

-spec(yoda(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
yoda(Name, From, Headers) ->
  handle(yoda, [Name, From], Headers).

-spec(ballmer(Name :: binary(), Company :: binary(), From :: binary()) -> binary()).
ballmer(Name, Company, From) ->
  ballmer(Name, Company, From, []).

-spec(ballmer(Name :: binary(), Company :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
ballmer(Name, Company, From, Headers) ->
  handle(ballmer, [Name, Company, From], Headers).

-spec(what(From :: binary()) -> binary()).
what(From) ->
  what(From, []).

-spec(what(From :: binary(), Headers :: [tuple()]) -> binary()).
what(From, Headers) ->
  handle(what, [From], Headers).

-spec(because(From :: binary()) -> binary()).
because(From) ->
  because(From, []).

-spec(because(From :: binary(), Headers :: [tuple()]) -> binary()).
because(From, Headers) ->
  handle(because, [From], Headers).

-spec(caniuse(Name :: binary(), From :: binary()) -> binary()).
caniuse(Name, From) ->
  caniuse(Name, From, []).

-spec(caniuse(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
caniuse(Name, From, Headers) ->
  handle(caniuse, [Name, From], Headers).

-spec(bye(From :: binary()) -> binary()).
bye(From) ->
  bye(From, []).

-spec(bye(From :: binary(), Headers :: [tuple()]) -> binary()).
bye(From, Headers) ->
  handle(bye, [From], Headers).

-spec(diabetes(From :: binary()) -> binary()).
diabetes(From) ->
  diabetes(From, []).

-spec(diabetes(From :: binary(), Headers :: [tuple()]) -> binary()).
diabetes(From, Headers) ->
  handle(diabetes, [From], Headers).

-spec(bus(Name :: binary(), From :: binary()) -> binary()).
bus(Name, From) ->
  bus(Name, From, []).

-spec(bus(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
bus(Name, From, Headers) ->
  handle(bus, [Name, From], Headers).

-spec(xmas(Name :: binary(), From :: binary()) -> binary()).
xmas(Name, From) ->
  xmas(Name, From, []).

-spec(xmas(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
xmas(Name, From, Headers) ->
  handle(xmas, [Name, From], Headers).

-spec(bday(Name :: binary(), From :: binary()) -> binary()).
bday(Name, From) ->
  bday(Name, From, []).

-spec(bday(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
bday(Name, From, Headers) ->
  handle(bday, [Name, From], Headers).

-spec(awesome(From :: binary()) -> binary()).
awesome(From) ->
  awesome(From, []).

-spec(awesome(From :: binary(), Headers :: [tuple()]) -> binary()).
awesome(From, Headers) ->
  handle(awesome, [From], Headers).

-spec(tucker(From :: binary()) -> binary()).
tucker(From) ->
  tucker(From, []).

-spec(tucker(From :: binary(), Headers :: [tuple()]) -> binary()).
tucker(From, Headers) ->
  handle(tucker, [From], Headers).

-spec(bucket(From :: binary()) -> binary()).
bucket(From) ->
  bucket(From, []).

-spec(bucket(From :: binary(), Headers :: [tuple()]) -> binary()).
bucket(From, Headers) ->
  handle(bucket, [From], Headers).

-spec(family(From :: binary()) -> binary()).
family(From) ->
  family(From, []).

-spec(family(From :: binary(), Headers :: [tuple()]) -> binary()).
family(From, Headers) ->
  handle(family, [From], Headers).

-spec(shutup(Name :: binary(), From :: binary()) -> binary()).
shutup(Name, From) ->
  shutup(Name, From, []).

-spec(shutup(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
shutup(Name, From, Headers) ->
  handle(shutup, [Name, From], Headers).

-spec(zayn(From :: binary()) -> binary()).
zayn(From) ->
  zayn(From, []).

-spec(zayn(From :: binary(), Headers :: [tuple()]) -> binary()).
zayn(From, Headers) ->
  handle(zayn, [From], Headers).

-spec(keepcalm(Reaction :: binary(), From :: binary()) -> binary()).
keepcalm(Reaction, From) ->
  keepcalm(Reaction, From, []).

-spec(keepcalm(Reaction :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
keepcalm(Reaction, From, Headers) ->
  handle(keepcalm, [Reaction, From], Headers).

-spec(dosomething(Do :: binary(), Something :: binary(), From :: binary()) -> binary()).
dosomething(Do, Something, From) ->
  dosomething(Do, Something, From, []).

-spec(dosomething(Do :: binary(), Something :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
dosomething(Do, Something, From, Headers) ->
  handle(dosomething, [Do, Something, From], Headers).

-spec(mornin(From :: binary()) -> binary()).
mornin(From) ->
  mornin(From, []).

-spec(mornin(From :: binary(), Headers :: [tuple()]) -> binary()).
mornin(From, Headers) ->
  handle(mornin, [From], Headers).

-spec(thumbs(Subject :: binary(), From :: binary()) -> binary()).
thumbs(Subject, From) ->
  thumbs(Subject, From, []).

-spec(thumbs(Subject :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
thumbs(Subject, From, Headers) ->
  handle(thumbs, [Subject, From], Headers).

-spec(retard(From :: binary()) -> binary()).
retard(From) ->
  retard(From, []).

-spec(retard(From :: binary(), Headers :: [tuple()]) -> binary()).
retard(From, Headers) ->
  handle(retard, [From], Headers).

-spec(greed(Noun :: binary(), From :: binary()) -> binary()).
greed(Noun, From) ->
  greed(Noun, From, []).

-spec(greed(Noun :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
greed(Noun, From, Headers) ->
  handle(greed, [Noun, From], Headers).

-spec(bm(Name :: binary(), From :: binary()) -> binary()).
bm(Name, From) ->
  bm(Name, From, []).

-spec(bm(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
bm(Name, From, Headers) ->
  handle(bm, [Name, From], Headers).

-spec(gfy(Name :: binary(), From :: binary()) -> binary()).
gfy(Name, From) ->
  gfy(Name, From, []).

-spec(gfy(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
gfy(Name, From, Headers) ->
  handle(gfy, [Name, From], Headers).

-spec(me(From :: binary()) -> binary()).
me(From) ->
  me(From, []).

-spec(me(From :: binary(), Headers :: [tuple()]) -> binary()).
me(From, Headers) ->
  handle(me, [From], Headers).

-spec(back(Name :: binary(), From :: binary()) -> binary()).
back(Name, From) ->
  back(Name, From, []).

-spec(back(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
back(Name, From, Headers) ->
  handle(back, [Name, From], Headers).

-spec(think(Name :: binary(), From :: binary()) -> binary()).
think(Name, From) ->
  think(Name, From, []).

-spec(think(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
think(Name, From, Headers) ->
  handle(think, [Name, From], Headers).

-spec(keep(Name :: binary(), From :: binary()) -> binary()).
keep(Name, From) ->
  keep(Name, From, []).

-spec(keep(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
keep(Name, From, Headers) ->
  handle(keep, [Name, From], Headers).

-spec(single(From :: binary()) -> binary()).
single(From) ->
  single(From, []).

-spec(single(From :: binary(), Headers :: [tuple()]) -> binary()).
single(From, Headers) ->
  handle(single, [From], Headers).

-spec(look(Name :: binary(), From :: binary()) -> binary()).
look(Name, From) ->
  look(Name, From, []).

-spec(look(Name :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
look(Name, From, Headers) ->
  handle(look, [Name, From], Headers).

-spec(looking(From :: binary()) -> binary()).
looking(From) ->
  looking(From, []).

-spec(looking(From :: binary(), Headers :: [tuple()]) -> binary()).
looking(From, Headers) ->
  handle(looking, [From], Headers).

-spec(no(From :: binary()) -> binary()).
no(From) ->
  no(From, []).

-spec(no(From :: binary(), Headers :: [tuple()]) -> binary()).
no(From, Headers) ->
  handle(no, [From], Headers).

-spec(give(From :: binary()) -> binary()).
give(From) ->
  give(From, []).

-spec(give(From :: binary(), Headers :: [tuple()]) -> binary()).
give(From, Headers) ->
  handle(give, [From], Headers).

-spec(zero(From :: binary()) -> binary()).
zero(From) ->
  zero(From, []).

-spec(zero(From :: binary(), Headers :: [tuple()]) -> binary()).
zero(From, Headers) ->
  handle(zero, [From], Headers).

-spec(pulp(Language :: binary(), From :: binary()) -> binary()).
pulp(Language, From) ->
  pulp(Language, From, []).

-spec(pulp(Language :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
pulp(Language, From, Headers) ->
  handle(pulp, [Language, From], Headers).

-spec(sake(From :: binary()) -> binary()).
sake(From) ->
  sake(From, []).

-spec(sake(From :: binary(), Headers :: [tuple()]) -> binary()).
sake(From, Headers) ->
  handle(sake, [From], Headers).

-spec(anyway(Company :: binary(), From :: binary()) -> binary()).
anyway(Company, From) ->
  anyway(Company, From, []).

-spec(anyway(Company :: binary(), From :: binary(), Headers :: [tuple()]) -> binary()).
anyway(Company, From, Headers) ->
  handle(anyway, [Company, From], Headers).

%%====================================================================
%% Internal functions
%%====================================================================
-spec(handle(Type :: atom(), UrlPath :: [binary()] | [], Headers :: httpc:headers() | []) -> binary()).
handle(Type, UrlPath, []) when is_atom(Type) ->
  %% no header provided use default test/plain
  URL = construct_urlpath(UrlPath, ["http://foaas.com/", atom_to_list(Type)]),
  Response = httpc:request(get, {URL, [{"accept", "text/plain"}]}, [], []),
  response_body(Response);

handle(Type, UrlPath, Headers) when is_atom(Type) ->
  URL = construct_urlpath(UrlPath, ["http://foaas.com/", atom_to_list(Type)]),
  Response = httpc:request(get, {URL, Headers}, [], []),
  response_body(Response).

-spec(construct_urlpath(UrlPath :: [binary()], Acc :: [string()]) -> string()).
construct_urlpath([], Acc) ->
  lists:flatten(Acc);

construct_urlpath([<<>>], Acc) ->
  lists:flatten(Acc);

construct_urlpath([<<>> | T], Acc) ->
  construct_urlpath(T, lists:append(Acc, "/"));

construct_urlpath([H | T], Acc) ->
  List = ["/", binary_to_list(H)],
  construct_urlpath(T, lists:append(Acc, List)).

%% From http://no-fucking-idea.com/blog/2013/01/22/making-request-to-rest-resources-in-erlang/
-spec(response_body({ok, {term(), term(), Body :: list()}}) -> binary()).
response_body({ok, {_, _, Body}}) -> list_to_binary(Body).


%%====================================================================
%% Unit tests
%%====================================================================
-ifdef (EUNIT).
%% the version to be expected since last update
version_test() ->
  ?assertEqual(<<"Version 1.0.0 FOAAS">>, version()).

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
  ?assertEqual(<<"Tom, there aren't enough swear-words in the English language, so now I'll have to call you perkeleen vittupää just to express my disgust and frustration with this crap. - Chris"/utf8>>,
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
  ?assertEqual(<<"What the fuck‽ - Chris"/utf8>>,
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

shutup_test() ->
  ?assertEqual(<<"Tom, shut the fuck up. - Chris">>,
    shutup(<<"Tom">>, <<"Chris">>)).

zayn_test() ->
  ?assertEqual(<<"Ask me if I give a motherfuck ?!! - Chris">>,
    zayn(<<"Chris">>)).

keepcalm_test() ->
  ?assertEqual(<<"Keep the fuck calm and Reaction! - Chris">>,
    keepcalm(<<"Reaction">>, <<"Chris">>)).

dosomething_test() ->
  ?assertEqual(<<"Do the fucking Something! - Chris">>,
    dosomething(<<"Do">>, <<"Something">>, <<"Chris">>)).

mornin_test() ->
  ?assertEqual(<<"Happy fuckin' Mornin'! - Chris">>,
    mornin(<<"Chris">>)).

thumbs_test() ->
  ?assertEqual(<<"Who has two thumbs and doesn't give a fuck? Tom. - Chris">>,
    thumbs(<<"Tom">>, <<"Chris">>)).

retard_test() ->
  ?assertEqual(<<"You Fucktard! - Chris">>,
    retard(<<"Chris">>)).

greed_test() ->
  ?assertEqual(<<"The point is, ladies and gentleman, that noun -- for lack of a better word -- is good. Noun is right. Noun works. Noun clarifies, cuts through, and captures the essence of the evolutionary spirit. Noun, in all of its forms -- Noun for life, for money, for love, knowledge -- has marked the upward surge of mankind. - Chris">>,
    greed(<<"Noun">>, <<"Chris">>)).

bm_test() ->
  ?assertEqual(<<"Bravo mike, Tom. - Chris">>,
    bm(<<"Tom">>, <<"Chris">>)).

gfy_test() ->
  ?assertEqual(<<"Golf foxtrot yankee, Tom. - Chris">>,
    gfy(<<"Tom">>, <<"Chris">>)).

me_test() ->
  ?assertEqual(<<"Fuck me. - Chris">>,
    me(<<"Chris">>)).

back_test() ->
  ?assertEqual(<<"Tom, back the fuck off. - Chris">>,
    back(<<"Tom">>, <<"Chris">>)).

think_test() ->
  ?assertEqual(<<"Tom, you think I give a fuck? - Chris">>,
    think(<<"Tom">>, <<"Chris">>)).

keep_test() ->
  ?assertEqual(<<"Tom: Fuck off. And when you get there, fuck off from there too. Then fuck off some more. Keep fucking off until you get back here. Then fuck off again. - Chris">>,
    keep(<<"Tom">>, <<"Chris">>)).

single_test() ->
  ?assertEqual(<<"Not a single fuck was given. - Chris">>,
    single(<<"Chris">>)).

look_test() ->
  ?assertEqual(<<"Tom, do I look like I give a fuck? - Chris">>,
    look(<<"Tom">>, <<"Chris">>)).

looking_test() ->
  ?assertEqual(<<"Looking for a fuck to give. - Chris">>,
    looking(<<"Chris">>)).

no_test() ->
  ?assertEqual(<<"No fucks given. - Chris">>,
    no(<<"Chris">>)).

give_test() ->
  ?assertEqual(<<"I give zero fucks. - Chris">>,
    give(<<"Chris">>)).

zero_test() ->
  ?assertEqual(<<"Zero, thats the number of fucks I give. - Chris">>,
    zero(<<"Chris">>)).

pulp_test() ->
  ?assertEqual(<<"Language, motherfucker, do you speak it? - Chris">>,
    pulp(<<"Language">>, <<"Chris">>)).

sake_test() ->
  ?assertEqual(<<"For Fuck's sake! - Chris">>,
    sake(<<"Chris">>)).

anyway_test() ->
  ?assertEqual(<<"Who the fuck are you anyway, Company, why are you stirring up so much trouble, and, who pays you? - Chris">>,
    anyway(<<"Company">>, <<"Chris">>)).

-endif.

-ifdef(EQC).

prop_construct_urlpath() ->
  ?FORALL(L, list(non_empty(binary())),
    construct_urlpath(L, []) == lists:flatten([[$/, binary_to_list(E)] || E <- L])).

-endif.