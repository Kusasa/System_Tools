#! python3
# mapIt.py - Launches a map in the browser using an address from the
# command line or clipboard.

def ac:
    import webbrowser, pyperclip
    # Get address from clipboard.
    address = pyperclip.paste()
    splitAddress = address.split()
    y = splitAddress[1]
    x = splitAddress[0]
    rightAddress = y + ', ' + x
    
    pyperclip.copy(rightAddress)
    
    #webbrowser.open('https://www.google.com/maps/place/' + rightAddress)
