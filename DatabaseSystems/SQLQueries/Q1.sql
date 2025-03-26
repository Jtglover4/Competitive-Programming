-- To handle the first problem, of an arrival date accidently being entred to be after the departure date, we can use a CHECK measure,
--such as CHECK (ArrivalDate < DepartureDate), which won't input the entry if it fails the CHECK.

-- To handle the second problem, of possible overlapping bookings, we can have a second CHECK when we try to INSERT a row to HotelStays 
--that confirms the arrival date for the room is equal to or a greater value than the departure date of the most recent value in 
--the data for the room. To do this, we can do a SELECT departureDate FROM HotelStays WHERE (roomNUM = ___). This finds departure dates 
--for ONLY that room. From here, an ORDER BY departureDate DESC can find the most recent value, and a CHECK using this value compared to 
--the arrivalDate we are tryng to input (making sure arrivalDate is equal to or greater) will asure we don't have overlapping bookings.