import numpy as np

R = 36
r = 9
a = 30
n = 2  
t = np.arange(0, n * np.pi, 0.01)

x = (R + r) * np.cos((r / R) * t) - a * np.cos((1 + r / R) * t)
y = (R + r) * np.sin((r / R) * t) - a * np.sin((1 + r / R) * t)

base_longitude = -118.285447
base_latitude = 34.020558

scale_factor = 0.0001

longitudes = base_longitude + y * scale_factor
latitudes = base_latitude + x * scale_factor

with open('spirograph.kml', 'w') as file:
    file.write('''<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
    <name>Spirograph Curve</name>
    <Placemark>
        <name>Trojan Spirograph</name>
        <LineString>
            <extrude>1</extrude>
            <tessellate>1</tessellate>
            <coordinates>\n''')
    for lon, lat in zip(longitudes, latitudes):
        file.write(f'{lon},{lat},0\n')
    file.write('''            </coordinates>
        </LineString>
    </Placemark>
</Document>
</kml>''')
