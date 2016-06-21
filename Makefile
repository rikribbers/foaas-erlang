all: eqc travis
travis: eunit dialyzer

.PHONY:	eqc eunit dialyzer

eunit:
	./rebar3 eunit

dialyzer:
	./rebar3 dialyzer

eqc:
	./rebar3 eqc

