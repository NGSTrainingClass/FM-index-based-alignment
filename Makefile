all : 		index align
index_src= 	index.c
align_src=	align.c 

align:
	cd src && gcc $(align_src) -o align	
	mv src/align bin/ 
index:
	cd src && gcc $(index_src) -o index
	mv src/index bin/ 

clean:
	rm bin/*
	

