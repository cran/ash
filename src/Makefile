LIBNAME=ash
LD=ld

OBJS = ash.o   

ash.so:	$(OBJS)
	@$(LD) $(SHLIBLDFLAGS) -o $(LIBNAME).so $(OBJS) #-lm -f2c -lc
#	@mv $(LIBNAME).so ../../../../lib

clean:
	@rm -f *.o *.so

realclean:
	@rm -f Makefile *.o *.so

#tmp2.f:
#	/usr/local/bin/ratfor tmp2.r > tmp2.f
