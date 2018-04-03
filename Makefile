CC=clang++
OPTS=-std=c++1y -stdlib=libc++
INCLUDES=-I include -I .
LIBS=-lboost_system -lboost_coroutine -lboost_program_options
CPPFLAGS=$(OPTS) $(INCLUDES) $(LIBS)

build :
	$(CC) $(CPPFLAGS) rate.cpp -o rate

http_get :
	$(CC) $(CPPFLAGS) http_get.cpp -o http_get

parse_json :
	$(CC) $(CPPFLAGS) parse_json.cpp -o parse_json