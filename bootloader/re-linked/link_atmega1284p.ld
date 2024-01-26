MEMORY {
	/* 1284p */
    flash (rx) : ORIGIN = 0x1F000, LENGTH = 4K 
}

SECTIONS {
    .isrs : {
        *(.isrs)
    } > flash
}
