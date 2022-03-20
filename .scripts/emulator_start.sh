. ./init.sh

# emulator -avd pixel_9.0 -port 5558 -no-window -no-audio -no-cache
emulator $* \
    -no-boot-anim \
    -debug init,metrics \
    -timezone Europe/Paris
