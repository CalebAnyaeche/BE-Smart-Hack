# flight-search-ios

A simple flight search app that gives you a detailed list of flights to your favorite destination.


## UI

Launch Screen | Search Flights | Flight List
:-------------------------------------:|:-------------------------------------------:|:------------------------------------------------:
![Launch Screen](images/launchScreen.png)  |  ![Search Flights](images/searchFlights.png) | ![Flight List](images/flightList.png)

#### Error Handling 
Missing fields | Duplicate Entry | Invalid Entry
:-------------------------------------:|:-------------------------------------------:|:------------------------------------------------:
![Missing fields](images/Error3.png)  |  ![Duplicate Entry](images/Error1.png) | ![Invalid Entry](images/Error2.png)

## Flight Generator
#### Request

GET Flights

```
https://flight-engine-behack2019.herokuapp.com/flights?date=2019-09-06&origin=lax&destination=dfw
```

**Params**

```
date	"2019-09-06"
Departure date (origin) for the desired flight (e.g., "2019-09-06")

origin	"lax"
Airport code for origin. Possible values: "DFW", "JFK", "LAX", "ORD"

destination	"dfw"
Airport code for destination. Possible values: "DFW", "JFK", "LAX", "ORD"
```

#### Response

```
[
    {
        "flightNumber": "4923",
        "origin": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "destination": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 16m",
            "hours": 3,
            "minutes": 16
        },
        "aircraft": {
            "model": "321",
            "passengerCapacity": {
                "total": 181,
                "main": 165,
                "first": 16
            },
            "speed": 400
        }
    },
    {
        "flightNumber": "5446",
        "origin": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "destination": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 16m",
            "hours": 3,
            "minutes": 16
        },
        "aircraft": {
            "model": "738",
            "passengerCapacity": {
                "total": 160,
                "main": 144,
                "first": 16
            },
            "speed": 400
        }
    }
]
```
## Making a network request in swift

GET async request  | POST request
:-------------------------------------:|:-------------------------------------------:
![GET](images/GET.png)  |  ![POST](images/POST.png) 

## Making a Button actionable in swift

#### Directly connect viewcontroller in the storyboard
![storyboard](images/storyboard_segue.png) 

#### Using an IBAction
![IBAction](images/IBAction.png) 

#### Setting up a segue way programmatically
![segueWay](images/segueWay.png) 
