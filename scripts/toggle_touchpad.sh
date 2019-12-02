#!/bin/bash                                                                      

DEVICE='Elan Touchpad'                                              

ENABLED=$(xinput list-props "$DEVICE" | awk '/^\tDevice Enabled \([0-9]+\):\t[01]/ {print $NF}')
case $ENABLED in                                                                
  0)                                                                            
    xinput enable "$DEVICE"                                                     
    ;;                                                                          
  1)                                                                            
    xinput disable "$DEVICE"                                                     
    ;;                                                                          
  *)                                                                            
    echo                                                                        
    xinput list --name-only                                                     
    ;;                                                                          
esac
