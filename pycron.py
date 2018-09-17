#!/bin/python

import os
import time
import datetime as dt
from  apscheduler.scheduler import Scheduler
import logging


if __name__ == '__main__':
    job_function()

    # Start the scheduler
    logging.basicConfig()
    sched = Scheduler()
    sched.daemonic = False
    sched.start()

    # Schedules job_function to be run once each minute
    # sched.add_cron_job(job_function,  minute='0-59')
    # sched.add_cron_job(job_function,  minute='0,10,20,30,40,50')
    sched.add_cron_job(job_function,  second='0,10,20,30,40,50')

