/*  Author: Steve Gunn
 * Licence: This work is licensed under the Creative Commons Attribution License. 
 *           View this license at http://creativecommons.org/about/licenses/
 *   Notes: F_CPU must be defined to match the clock frequency
 *
 * compile:
 * 
 * 
 */
#include <avr/io.h>
#include <util/delay.h>

int __attribute__((section(".text"))) main(void)
{
	/* set LED pin as an output */
	DDRB |= _BV(PINB7);
	int blinks = 1;

	/* forever loop (embedded programs never normally terminate) */
	for (;;) 
	{
		for(int i=0; i<blinks; i++){
			/* Set pin B7 high */
			PORTB |= _BV(PINB7);
			_delay_ms(100);
			/* Set pin B7 low */
			PORTB &= ~_BV(PINB7);
			_delay_ms(100);
		}
		_delay_ms(1000);
		blinks = ((blinks) % 3) + 1;
	}
}

#include "progmem_array.h"