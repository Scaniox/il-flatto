MEMORY {
	/* 1284p */
    flash (rx) : ORIGIN = 0x1F000, LENGTH = 4K 
	/* flash (rx) : ORIGIN = 0x0, LENGTH = 128K  */
}

SECTIONS {
    .isrs : {
        *(.isrs)
    } > flash
}
