#ifndef AUDIO_REG_H_
#define AUDIO_REG_H_


#define AUDIO_DAC_FIFO_PORT     0
#define AUDIO_ADC_FIFO_PORT     1
#define AUDIO_CMD_PORT          2
#define AUDIO_STATUS_PORT       3

#define MASK_STATUS_DAC_FULL    0x01
#define MASK_STATUS_ADC_EMPTY   0x02

#define AUDIO_DAC_FULL()          ((IORD(AUDIO_BASE,AUDIO_STATUS_PORT) & MASK_STATUS_DAC_FULL)?TRUE:FALSE)     
#define AUDIO_DAC_WRITE(data)     IOWR(AUDIO_BASE,AUDIO_DAC_FIFO_PORT, data)     
#define AUDIO_ADC_EMPTY()         ((IORD(AUDIO_BASE,AUDIO_STATUS_PORT) & MASK_STATUS_ADC_EMPTY)?TRUE:FALSE)     
#define AUDIO_ADC_READ()          IORD(AUDIO_BASE,AUDIO_ADC_FIFO_PORT)
#define AUDIO_FIFO_CLEAR()        IOWR(AUDIO_BASE,AUDIO_CMD_PORT, 0x01);


#endif /*AUDIO_REG_H_*/