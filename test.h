#include <stdlib.h>
#include <stdio.h>
#define PAGE_PER_VM 3
#define PAGE_SIZE	4
#define MAX_VM 10
	

typedef unsigned u32;
typedef unsigned long long u64;

u64* memory_pool;
u64 nextPtr[MAX_VM]; // record the nextPtr for each VM
u64 endPtr[MAX_VM]; // record the endPtr for each VM

static u64 inline check64(u64 val) {
	return val;
};
