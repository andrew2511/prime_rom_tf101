.class public Lcom/asus/weather/P;
.super Ljava/lang/Object;
.source "P.java"


# static fields
.field static final PREF_FREQLIST:[I

.field public static final PREF_UNITLIST:[Ljava/lang/String;

.field static final WEATHER_CITY_LANGID:[I

.field static final WEATHER_DIRECTION_DOUBLE:[Ljava/lang/String;

.field static final WEATHER_DIRECTION_RESOURCE:[I

.field static final WEATHER_DIRECTION_STRING:[Ljava/lang/String;

.field static final WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

.field static final WEATHER_QUERY_COLUMNS2:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/asus/weather/P;->PREF_FREQLIST:[I

    .line 35
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "C"

    aput-object v1, v0, v3

    const-string v1, "F"

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/weather/P;->PREF_UNITLIST:[Ljava/lang/String;

    .line 41
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "cityname"

    aput-object v1, v0, v4

    const-string v1, "weathertext"

    aput-object v1, v0, v5

    const-string v1, "tempunits"

    aput-object v1, v0, v6

    const-string v1, "temperature"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "realfeel"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "humidity"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "windspeed"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "winddirection"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "speedunits"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "weathericon"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "url"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lastupdate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS:[Ljava/lang/String;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "city"

    aput-object v1, v0, v4

    const-string v1, "country"

    aput-object v1, v0, v5

    const-string v1, "adminArea"

    aput-object v1, v0, v6

    const-string v1, "location"

    aput-object v1, v0, v7

    sput-object v0, Lcom/asus/weather/P;->WEATHER_QUERY_COLUMNS2:[Ljava/lang/String;

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "N"

    aput-object v1, v0, v3

    const-string v1, "NNE"

    aput-object v1, v0, v4

    const-string v1, "NE"

    aput-object v1, v0, v5

    const-string v1, "ENE"

    aput-object v1, v0, v6

    const-string v1, "E"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ESE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SSE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SSW"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SW"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "WSW"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "WNW"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "NW"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "NNW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/weather/P;->WEATHER_DIRECTION_STRING:[Ljava/lang/String;

    .line 49
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "22.5"

    aput-object v1, v0, v4

    const-string v1, "45"

    aput-object v1, v0, v5

    const-string v1, "67.5"

    aput-object v1, v0, v6

    const-string v1, "90"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "112.5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "135"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "157.5"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "180"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "202.5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "225"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "247.5"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "270"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "292.5"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "315"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "337.5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/weather/P;->WEATHER_DIRECTION_DOUBLE:[Ljava/lang/String;

    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/asus/weather/P;->WEATHER_DIRECTION_RESOURCE:[I

    .line 59
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/asus/weather/P;->WEATHER_CITY_LANGID:[I

    return-void

    .line 34
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
    .end array-data

    .line 52
    :array_1
    .array-data 0x4
        0xdt 0x0t 0x5t 0x7ft
        0xet 0x0t 0x5t 0x7ft
        0xft 0x0t 0x5t 0x7ft
        0x10t 0x0t 0x5t 0x7ft
        0x11t 0x0t 0x5t 0x7ft
        0x12t 0x0t 0x5t 0x7ft
        0x13t 0x0t 0x5t 0x7ft
        0x14t 0x0t 0x5t 0x7ft
        0x15t 0x0t 0x5t 0x7ft
        0x16t 0x0t 0x5t 0x7ft
        0x17t 0x0t 0x5t 0x7ft
        0x18t 0x0t 0x5t 0x7ft
        0x19t 0x0t 0x5t 0x7ft
        0x1at 0x0t 0x5t 0x7ft
        0x1bt 0x0t 0x5t 0x7ft
        0x1ct 0x0t 0x5t 0x7ft
    .end array-data

    .line 59
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
