.class public Lcom/asus/weather/accuWeather/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/asus/weather/accuWeather/Message;",
        ">;"
    }
.end annotation


# instance fields
.field private curcond_humidity:Ljava/lang/String;

.field private curcond_realfeel:Ljava/lang/String;

.field private curcond_temperature:Ljava/lang/String;

.field private curcond_url:Ljava/lang/String;

.field private curcond_weathericon:Ljava/lang/String;

.field private curcond_weathertext:Ljava/lang/String;

.field private curcond_winddirection:Ljava/lang/String;

.field private curcond_windspeed:Ljava/lang/String;

.field private local_city:Ljava/lang/String;

.field private units_speed:Ljava/lang/String;

.field private units_temp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/asus/weather/accuWeather/Message;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3
    check-cast p1, Lcom/asus/weather/accuWeather/Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/asus/weather/accuWeather/Message;->compareTo(Lcom/asus/weather/accuWeather/Message;)I

    move-result v0

    return v0
.end method

.method public copy()Lcom/asus/weather/accuWeather/Message;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lcom/asus/weather/accuWeather/Message;

    invoke-direct {v0}, Lcom/asus/weather/accuWeather/Message;-><init>()V

    .line 106
    .local v0, copy:Lcom/asus/weather/accuWeather/Message;
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->local_city:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->local_city:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathertext:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_weathertext:Ljava/lang/String;

    .line 108
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_temperature:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_temperature:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathericon:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_weathericon:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_realfeel:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_realfeel:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_windspeed:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_windspeed:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_winddirection:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_winddirection:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_humidity:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_humidity:Ljava/lang/String;

    .line 114
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->curcond_url:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->curcond_url:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->units_temp:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->units_temp:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lcom/asus/weather/accuWeather/Message;->units_speed:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/Message;->units_speed:Ljava/lang/String;

    .line 117
    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->local_city:Ljava/lang/String;

    return-object v0
.end method

.method public getHumidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_humidity:Ljava/lang/String;

    return-object v0
.end method

.method public getRealfeel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_realfeel:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_temperature:Ljava/lang/String;

    return-object v0
.end method

.method public getUnits_speed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->units_speed:Ljava/lang/String;

    return-object v0
.end method

.method public getUnits_temp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->units_temp:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_url:Ljava/lang/String;

    return-object v0
.end method

.method public getWeathericon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathericon:Ljava/lang/String;

    return-object v0
.end method

.method public getWeathertext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathertext:Ljava/lang/String;

    return-object v0
.end method

.method public getWinddirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_winddirection:Ljava/lang/String;

    return-object v0
.end method

.method public getWindspeed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_windspeed:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1
    .parameter "city"

    .prologue
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->local_city:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setHumidity(Ljava/lang/String;)V
    .locals 1
    .parameter "humidity"

    .prologue
    .line 77
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_humidity:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setRealfeel(Ljava/lang/String;)V
    .locals 1
    .parameter "realfeel"

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_realfeel:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setTemperature(Ljava/lang/String;)V
    .locals 1
    .parameter "temperature"

    .prologue
    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_temperature:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setUnits_speed(Ljava/lang/String;)V
    .locals 1
    .parameter "units_speed"

    .prologue
    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->units_speed:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setUnits_temp(Ljava/lang/String;)V
    .locals 1
    .parameter "units_temp"

    .prologue
    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->units_temp:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_url:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setWeathericon(Ljava/lang/String;)V
    .locals 1
    .parameter "weathericon"

    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathericon:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setWeathertext(Ljava/lang/String;)V
    .locals 1
    .parameter "weathertext"

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_weathertext:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setWinddirection(Ljava/lang/String;)V
    .locals 1
    .parameter "winddirection"

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_winddirection:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setWindspeed(Ljava/lang/String;)V
    .locals 1
    .parameter "windspeed"

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/Message;->curcond_windspeed:Ljava/lang/String;

    .line 62
    return-void
.end method
