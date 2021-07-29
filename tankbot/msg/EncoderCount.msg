# Single message from implementation of a motor encoder
#
# You can fill the array with tick values for all encoders on one device (robot). For multiple
# devices (robots) create a second EncoderCount message on a topic in a separate namespace
# with the same identifier as your second device (robot)

int32 enc1_ticks   # encoder 1 tick count data [m] use to determine distance traveled (positive or negative value)
int32 enc2_ticks   # encoder 2 tick count data [m] use to determine distance traveled (positive or negative value)
