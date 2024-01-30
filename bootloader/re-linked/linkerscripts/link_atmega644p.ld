MEMORY {
	/* bootsz(1:1, 0:0) 2kb - 1kword */
    /* flash (rx) : ORIGIN = 0xF800, LENGTH = 2K  */

	/* bootsz(1:0, 0:1) 4kb - 2kword */
    flash (rx) : ORIGIN = 0xF000, LENGTH = 4K 
}

SECTIONS {
    .isrs : {
        *(.isrs)
    } > flash
}
