-- Create a new db in Redshift
create database airlines;
 
-- Change connection to airlines db
-- ... using UI

-- Create table with correct schema (Redshift)
CREATE TABLE performance(
    Year FLOAT,
    Quarter FLOAT,
    Month FLOAT,
    DayofMonth FLOAT, 
    DayOfWeek FLOAT, 
    FlightDate VARCHAR(10),
    Reporting_Airline VARCHAR(2),
    DOT_ID_Reporting_Airline FLOAT,  
    IATA_CODE_Reporting_Airline VARCHAR(2),
    Tail_Number VARCHAR(16),
    Flight_Number_Reporting_Airline FLOAT,
    OriginAirportID FLOAT,
    OriginAirportSeqID FLOAT,
    OriginCityMarketID FLOAT,
    Origin VARCHAR(3),
    OriginCityName VARCHAR(64),
    OriginState VARCHAR(2),
    OriginStateFips FLOAT,
    OriginStateName VARCHAR(64),
    OriginWac FLOAT,
    DestAirportID FLOAT,
    DestAirportSeqID FLOAT,
    DestCityMarketID FLOAT,   
    Dest VARCHAR(3),
    DestCityName VARCHAR(64),  
    DestState VARCHAR(2),
    DestStateFips FLOAT,
    DestStateName VARCHAR(64),
    DestWac FLOAT,
    CRSDepTime FLOAT,
    DepTime FLOAT,
    DepDelay FLOAT,  
    DepDelayMinutes FLOAT,
    DepDel15 FLOAT,  
    DepartureDelayGroups FLOAT,
    DepTimeBlk VARCHAR(9),
    TaxiOut FLOAT,
    WheelsOff FLOAT,
    WheelsOn FLOAT,  
    TaxiIn FLOAT,
    CRSArrTime FLOAT,
    ArrTime FLOAT,
    ArrDelay FLOAT,  
    ArrDelayMinutes FLOAT,
    ArrDel15 FLOAT,
    ArrivalDelayGroups FLOAT,
    ArrTimeBlk VARCHAR(9),
    Cancelled FLOAT,
    CancellationCode CHAR(1), 
    Diverted FLOAT,   
    CRSElapsedTime FLOAT,
    ActualElapsedTime FLOAT,
    AirTime FLOAT,
    Flights FLOAT,
    Distance FLOAT, 
    DistanceGroup FLOAT, 
    CarrierDelay FLOAT,  
    WeatherDelay FLOAT,  
    NASDelay FLOAT, 
    SecurityDelay FLOAT,
    LateAircraftDelay FLOAT, 
    FirstDepTime FLOAT, 
    TotalAddGTime FLOAT,
    LongestAddGTime FLOAT,
    DivAirportLandings FLOAT,
    DivReachedDest FLOAT,
    DivActualElapsedTime FLOAT,
    DivArrDelay FLOAT,
    DivDistance FLOAT,
    Div1Airport VARCHAR(3),
    Div1AirportID FLOAT,
    Div1AirportSeqID FLOAT,  
    Div1WheelsOn FLOAT, 
    Div1TotalGTime FLOAT,
    Div1LongestGTime FLOAT, 
    Div1WheelsOff FLOAT,
    Div1TailNum VARCHAR(16),
    Div2Airport VARCHAR(3),
    Div2AirportID FLOAT,
    Div2AirportSeqID FLOAT, 
    Div2WheelsOn FLOAT,
    Div2TotalGTime FLOAT,
    Div2LongestGTime FLOAT,
    Div2WheelsOff FLOAT,
    Div2TailNum VARCHAR(16),
    Div3Airport VARCHAR(3),
    Div3AirportID FLOAT,
    Div3AirportSeqID FLOAT,  
    Div3WheelsOn FLOAT,
    Div3TotalGTime FLOAT,
    Div3LongestGTime FLOAT,  
    Div3WheelsOff FLOAT,
    Div3TailNum VARCHAR(16),
    Div4Airport  VARCHAR(3),
    Div4AirportID FLOAT,
    Div4AirportSeqID FLOAT,  
    Div4WheelsOn FLOAT,
    Div4TotalGTime FLOAT,
    Div4LongestGTime FLOAT,  
    Div4WheelsOff FLOAT,
    Div4TailNum  VARCHAR(16),
    Div5Airport VARCHAR(3),
    Div5AirportID FLOAT,  
    Div5AirportSeqID FLOAT,      
    Div5WheelsOn FLOAT,    
    Div5TotalGTime FLOAT,  
    Div5LongestGTime FLOAT,      
    Div5WheelsOff FLOAT,  
    Div5TailNum VARCHAR(16)
);

-- Create table with correct schema(Snowflake) ... cause commas! 
CREATE TABLE performance(
    Year TEXT,
    Quarter TEXT,
    Month TEXT,
    DayofMonth TEXT,
    DayOfWeek FLOAT,
    FlightDate TEXT,
    Reporting_Airline TEXT,
    DOT_ID_Reporting_Airline TEXT,
    IATA_CODE_Reporting_Airline TEXT,
    Tail_Number TEXT,
    Flight_Number_Reporting_Airline TEXT,
    OriginAirportID TEXT,
    OriginAirportSeqID TEXT,
    OriginCityMarketID TEXT,
    Origin TEXT,
    OriginCityName TEXT,
    OriginState TEXT,
    OriginStateFips TEXT,
    OriginStateName TEXT,
    OriginWac TEXT,
    DestAirportID TEXT,
    DestAirportSeqID TEXT,
    DestCityMarketID TEXT,
    Dest TEXT,
    DestCityName TEXT,
    DestState TEXT,
    DestStateFips TEXT,
    DestStateName TEXT,
    DestWac TEXT,
    CRSDepTime TEXT,
    DepTime TEXT,
    DepDelay TEXT,
    DepDelayMinutes TEXT,
    DepDel15 FLOAT,
    DepartureDelayGroups TEXT,
    DepTimeBlk TEXT,
    TaxiOut TEXT,
    WheelsOff TEXT,
    WheelsOn TEXT,
    TaxiIn TEXT,
    CRSArrTime TEXT,
    ArrTime TEXT,
    ArrDelay FLOAT,
    ArrDelayMinutes TEXT,
    ArrDel15 TEXT,
    ArrivalDelayGroups TEXT,
    ArrTimeBlk TEXT,
    Cancelled FLOAT,
    CancellationCode TEXT,
    Diverted TEXT,
    CRSElapsedTime TEXT,
    ActualElapsedTime TEXT,
    AirTime FLOAT,
    Flights TEXT,
    Distance TEXT,
    DistanceGroup TEXT,
    CarrierDelay TEXT,
    WeatherDelay TEXT,
    NASDelay TEXT,
    SecurityDelay TEXT,
    LateAircraftDelay TEXT,
    FirstDepTime TEXT,
    TotalAddGTime TEXT,
    LongestAddGTime TEXT,
    DivAirportLandings TEXT,
    DivReachedDest TEXT,
    DivActualElapsedTime TEXT,
    DivArrDelay TEXT,
    DivDistance TEXT,
    Div1Airport TEXT,
    Div1AirportID TEXT,
    Div1AirportSeqID TEXT,
    Div1WheelsOn TEXT,
    Div1TotalGTime TEXT,
    Div1LongestGTime TEXT,
    Div1WheelsOff TEXT,
    Div1TailNum TEXT,
    Div2Airport TEXT,
    Div2AirportID TEXT,
    Div2AirportSeqID TEXT,
    Div2WheelsOn TEXT,
    Div2TotalGTime TEXT,
    Div2LongestGTime TEXT,
    Div2WheelsOff TEXT,
    Div2TailNum TEXT,
    Div3Airport TEXT,
    Div3AirportID TEXT,
    Div3AirportSeqID TEXT,
    Div3WheelsOn TEXT,
    Div3TotalGTime TEXT,
    Div3LongestGTime TEXT,
    Div3WheelsOff TEXT,
    Div3TailNum TEXT,
    Div4Airport TEXT,
    Div4AirportID TEXT,
    Div4AirportSeqID TEXT,
    Div4WheelsOn TEXT,
    Div4TotalGTime TEXT,
    Div4LongestGTime TEXT,
    Div4WheelsOff TEXT,
    Div4TailNum TEXT,
    Div5Airport TEXT,
    Div5AirportID TEXT,
    Div5AirportSeqID TEXT,
    Div5WheelsOn TEXT,
    Div5TotalGTime TEXT,
    Div5LongestGTime TEXT,
    Div5WheelsOff TEXT,
    Div5TailNum TEXT,
    TEST TEXT
);

-- Query 1: Number of flights between the dates
SELECT 
	COUNT(*)
FROM 
	performance p
;

-- Query 2: Number of unique carriers
SELECT 
    COUNT(DISTINCT IATA_CODE_Reporting_Airline)
FROM 
    performance p
;

-- Query 3: Number of cities serviced by the airlines with most number of flights
SELECT 
    COUNT(DISTINCT DestCityName)
FROM 
    performance p
WHERE
	IATA_CODE_Reporting_Airline IN (
      SELECT
      	IATA_CODE_Reporting_Airline AS code
      FROM 
      	performance p
      GROUP BY
        IATA_CODE_Reporting_Airline
      ORDER BY
      	COUNT(*) DESC
      LIMIT 1
    )
;

-- Query 4: Average flight length
SELECT 
    AVG(AirTime)
FROM 
    performance p
;

-- Query 5: Number of flights that arrive late to Seattle, by airline
SELECT 
    IATA_CODE_Reporting_Airline,
    COUNT(*) AS num_flights 
FROM 
    performance p
WHERE 
    DepDel15 = 1 AND 
    DestCityName = 'Seattle, WA'
GROUP BY
	IATA_CODE_Reporting_Airline
ORDER BY
	num_flights DESC
;

-- Query 6: Count of cancelled flights on all weekdays
SELECT 
    COUNT(*)
FROM 
    performance p
WHERE 
    cancelled = 1 AND 
    DayOfWeek NOT IN (6, 7)
;

-- Query 7: Out of all carriers that arrive in Seattle which carrier is most likely to arrive before their scheduled arrival time
SELECT
	E.IATA_CODE_Reporting_Airline,
	ROUND((num_early_flights * 100.0) / (num_flights_total * 1.0), 2) AS percent_early
FROM (
	SELECT 
    	IATA_CODE_Reporting_Airline,
    	COUNT(*) AS num_flights_total
    FROM 
        performance p
    WHERE 
        DestCityName = 'Seattle, WA'
    GROUP BY
        IATA_CODE_Reporting_Airline
) AS T, (
  SELECT 
      IATA_CODE_Reporting_Airline,
      COUNT(*) AS num_early_flights
  FROM 
      performance p
  WHERE 
      DestCityName = 'Seattle, WA' AND
      ArrDelay < 0
  GROUP BY 
      IATA_CODE_Reporting_Airline
) AS E
WHERE 
	T.IATA_CODE_Reporting_Airline = E.IATA_CODE_Reporting_Airline
ORDER BY
	percent_early DESC
;

-- Query 8: How many flights are there from LAX to JFK with one stop?
SELECT count(*)
FROM 
    performance f1
INNER JOIN performance f2
ON
	f1.Dest = f2.Origin
WHERE
    (
        f1.Origin = 'LAX' AND
        f2.Dest = 'JFK' AND
        f2.CRSDepTime > f1.CRSArrTime AND
      	f1.Year = 2015.0 AND f2.Year = 2015.0 AND
      	f1.Month = f2.Month AND
      	f1.DayofMonth = f2.DayofMonth
    )
GROUP BY f1.Origin, f2.Dest
;

-- Query 9: Top 5 states that historically have the most number of direct flights between them

SELECT OriginStateName, DestStateName, Count(*)
FROM performance
WHERE OriginStateName != DestStateName
GROUP BY OriginStateName, DestStateName
ORDER BY count(*) DESC
LIMIT 5
;

-- Query 10: Min and Max states
SELECT Origin, Dest, Max(CRSElapsedTime), Min(CRSElapsedTime)
FROM performance
WHERE Year = 2020.0
;

-- Query 11:
SELECT 
	 p1.OriginCityName, p2.DestCityName, COUNT(*)
FROM 
	performance p1
INNER JOIN performance p2
ON
	p1.Dest = p2.Origin
WHERE
	p1.Origin = 'SEA' AND
	p2.CRSDepTime > p1.CRSArrTime AND
    p1.Year = 2020.0 AND p2.Year = 2020.0 AND
    p1.Month = p2.Month AND
    p1.DayofMonth = p2.DayofMonth AND
    p1.OriginCityName < p2.DestCityName

GROUP BY p1.OriginCityName, p2.DestCityName
;
