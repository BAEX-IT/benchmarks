# Sequential Read/Write
fio --name=seq_read --rw=read --bs=1M --ioengine=libaio --iodepth=1 --size=4G --numjobs=1 --runtime=60 --time_based --group_reporting
fio --name=seq_write --rw=write --bs=1M --ioengine=libaio --iodepth=1 --size=4G --numjobs=1 --runtime=60 --time_based --group_reporting

# Random Read/Write 4KiB (Q32T16)
fio --name=rand_read --rw=randread --bs=4K --ioengine=libaio --iodepth=32 --size=4G --numjobs=16 --runtime=60 --time_based --group_reporting
fio --name=rand_write --rw=randwrite --bs=4K --ioengine=libaio --iodepth=32 --size=4G --numjobs=16 --runtime=60 --time_based --group_reporting

# Random Read/Write 4KiB (Q1T1)
fio --name=rand_read_q1t1 --rw=randread --bs=4K --ioengine=libaio --iodepth=1 --size=4G --numjobs=1 --runtime=60 --time_based --group_reporting
fio --name=rand_write_q1t1 --rw=randwrite --bs=4K --ioengine=libaio --iodepth=1 --size=4G --numjobs=1 --runtime=60 --time_based --group_reporting
