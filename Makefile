BINS=example
LDFLAGS=-macosx_version_min 13.0 -L /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/lib -lSystem

.PHONY: all clean

all: $(BINS)

$(BINS): %: %.o
	$(LD) $(LDFLAGS) $< -o $@
%.o: %.s
	$(AS) $< -o $@

clean:
	$(RM) $(BINS) *.o
