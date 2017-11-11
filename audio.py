from pynput import mouse
import numpy as np
import time
import pymouse
ms = pymouse.PyMouse()

notes = {1:130.8, 2:146.8, 3: 164.8, 4: 185, 5:196, 6:220, 7:246.9,
         8:261.6, 9:293.6, 10: 329.6, 11: 370, 12:392, 13:440, 14:523.2}
nx, ny = (14, 10)
x = np.linspace(0, 1200, nx)
y = np.linspace(0, 800, ny)
import pyaudio

def play_sin(frequency,volume=0.2,duration=1):
    p = pyaudio.PyAudio()
    volume = volume     # range [0.0, 1.0]
    fs = 44100       # sampling rate, Hz, must be integer
    duration = duration   # in seconds, may be float
    f = frequency        # sine frequency, Hz, may be float

    # generate samples, note conversion to float32 array
    samples = (np.sin(2*np.pi*np.arange(fs*duration)*f/fs)).astype(np.float32)
    # for paFloat32 sample values must be in range [-1.0, 1.0]
    stream = p.open(format=pyaudio.paFloat32,
                    channels=1,
                    rate=fs,
                    output=True)

    # play. May repeat with different volume values (if done interactively) 
    stream.write(volume*samples)
    stream.stop_stream()
    stream.close()

    p.terminate()

idx=-1
def on_click(x, y, button, pressed):
    print('{0} at {1}'.format(
        'Pressed' if pressed else 'Released',
        (x, y)))
    if not pressed:
        # Stop listener
        return False
import keyboard
duration = 1
while True:
    with mouse.Listener(on_click=on_click) as listener: listener.join()
    if keyboard.is_pressed('shift'):
        print 'shift pressed'
        duration = 0.5
    elif keyboard.is_pressed('ctrl'):
        duration = 1
    if idx==-1:
        sound = play_sin(notes[1])
        idx =1
    else:
        old_idx=idx
        idx = np.searchsorted(x,[ms.position()[0],],side='right')[0]
        idxy = np.searchsorted(y,[ms.position()[1],],side='right')[0]
        sound = play_sin(frequency=notes[idx],volume=0.1*idxy, duration=duration)        
