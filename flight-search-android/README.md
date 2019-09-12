# flight-search-android

A simple flight search app that gives you a detailed list of flights to your favorite destination.

## UI
Flight Search | Flight List
:-------------------------------------:|:-------------------------------------------:
![Flight Search](https://github.com/carolinenakaye/BE-Smart-Hack/blob/master/flight-search-android/images/flightSearch.png) | ![Flight List](https://github.com/carolinenakaye/BE-Smart-Hack/blob/master/flight-search-android/images/flightList.png)


## Flight Generator
#### Request

GET Flights

```
https://e904e308-5b35-4944-b65e-15801b653a2c.mock.pstmn.io/flights/
```

#### Response
```
[
    {
        "flightNumber": "9825",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 12m",
            "hours": 3,
            "minutes": 12
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
        "flightNumber": "0087",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 5m",
            "hours": 3,
            "minutes": 5
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
    },
    {
        "flightNumber": "4467",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 8m",
            "hours": 3,
            "minutes": 8
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
    },
    {
        "flightNumber": "2900",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 17m",
            "hours": 3,
            "minutes": 17
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
        "flightNumber": "5252",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 19m",
            "hours": 3,
            "minutes": 19
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
        "flightNumber": "7566",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 11m",
            "hours": 3,
            "minutes": 11
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
        "flightNumber": "4937",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
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
    },
    {
        "flightNumber": "4490",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 19m",
            "hours": 3,
            "minutes": 19
        },
        "aircraft": {
            "model": "757",
            "passengerCapacity": {
                "total": 176,
                "main": 160,
                "first": 16
            },
            "speed": 380
        }
    },
    {
        "flightNumber": "7759",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 15m",
            "hours": 3,
            "minutes": 15
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
        "flightNumber": "2162",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 6m",
            "hours": 3,
            "minutes": 6
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
    },
    {
        "flightNumber": "3141",
        "origin": {
            "code": "DFW",
            "city": "Dallas-Fort Worth",
            "location": {
                "latitude": 32.8998,
                "longitude": 97.0403
            }
        },
        "destination": {
            "code": "LAX",
            "city": "Los Angeles",
            "location": {
                "latitude": 33.9416,
                "longitude": 118.4085
            }
        },
        "distance": 1234,
        "duration": {
            "locale": "3h 27m",
            "hours": 3,
            "minutes": 27
        },
        "aircraft": {
            "model": "757",
            "passengerCapacity": {
                "total": 176,
                "main": 160,
                "first": 16
            },
            "speed": 380
        }
    }
]
```

## Example of how to make an Android network request with Retrofit

**Step 1: Make sure to require Internet permissions in your AndroidManifest.xml file:**

```
<uses-permission android:name="android.permission.INTERNET" />

```
**Step 2: Add the following to your app/build.gradle file:**

```
dependencies {
   compile 'com.squareup.retrofit2:retrofit:2.1.0'
    compile 'com.squareup.retrofit2:converter-gson:2.1.0'
}
```

**Step 3: Create a retrofit instance**

```
public class RetrofitInstance {

    private static Retrofit retrofit;
    private static final String BASE_URL = "https://e904e308-5b35-4944-b65e-15801b653a2c.mock.pstmn.io/";

    public static Retrofit getRetrofitInstance() {
        if (retrofit == null) {
            retrofit = new retrofit2.Retrofit.Builder()
                    .callbackExecutor(Executors.newSingleThreadExecutor())
                    .baseUrl(BASE_URL)
                    .addConverterFactory(GsonConverterFactory.create())
                    .build();
        }
        return retrofit;
    }

}
```

**Step 4: 
Add an interface file with a @GET annotation provided by Retrofit Library, to which we will pass the end point or filename that will provide the JSON data.**

**Next we will create a method which will have return type of Call`<Type>`. In our case we want to return an array list of Flight objects.**

```
public interface FlightDataService {

    @GET("/flights")
    Call<ArrayList<Flight>> getFlights();

}
```

**Step 5: Now in the MainActivity.java we will make an asynchronous network request to fetch the flight data. The JSON response will be available within the onResponse method. In case the request fails the onFailure method will be called. On request success we will then pass the ArrayList of Flight objects to the adapter to create a list.**

```
private void fetchFlightData() {
        FlightDataService service = RetrofitInstance.getRetrofitInstance().create(FlightDataService.class);
        Call<ArrayList<Flight>> call = service.getFlights();
        if (!TextUtils.isEmpty(call.request().url().toString())) {
            Log.d("URL Called", call.request().url() + "");
        }

        call.enqueue(new Callback<ArrayList<Flight>>() {
            @Override
            public void onResponse(Call<ArrayList<Flight>> call, Response<ArrayList<Flight>> response) {
                mFlightList = response.body();

                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        startFlightListActivity();
                    }
                });
            }

            @Override
            public void onFailure(Call<ArrayList<Flight>> call, Throwable t) {

                runOnUiThread(new Runnable() {
                    @Override
                    public void run() {
                        Toast.makeText(MainActivity.this, "Something went wrong", Toast.LENGTH_SHORT).show();
                    }
                });
            }
        });
    }
```
## Making a Button actionable


```
 Button findFlightsButton = findViewById(R.id.find_flights_button);
        findFlightsButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                fetchFlightData();
            }
        });
```

## Testing

Making sure your implementation meet the requirements and is ready to ship.
