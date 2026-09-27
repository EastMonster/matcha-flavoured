# display "n/n players sleeping" in the actionbar

title @a[tag=is_sleeping] actionbar [ \
        {translate:"sleep.players_sleeping",color:"gray","with":[{"score":{objective:"sleepTimerScore","name":"players_sleeping"}},{"score":{objective:"sleepTimerScore","name":"players_in_overworld"}}]} \
    ]

