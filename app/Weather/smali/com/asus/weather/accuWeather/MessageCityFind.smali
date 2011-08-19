.class public Lcom/asus/weather/accuWeather/MessageCityFind;
.super Ljava/lang/Object;
.source "MessageCityFind.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/asus/weather/accuWeather/MessageCityFind;",
        ">;"
    }
.end annotation


# instance fields
.field private adminArea:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private location:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/asus/weather/accuWeather/MessageCityFind;)I
    .locals 1
    .parameter "another"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3
    check-cast p1, Lcom/asus/weather/accuWeather/MessageCityFind;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/asus/weather/accuWeather/MessageCityFind;->compareTo(Lcom/asus/weather/accuWeather/MessageCityFind;)I

    move-result v0

    return v0
.end method

.method public copy()Lcom/asus/weather/accuWeather/MessageCityFind;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-direct {v0}, Lcom/asus/weather/accuWeather/MessageCityFind;-><init>()V

    .line 43
    .local v0, copy:Lcom/asus/weather/accuWeather/MessageCityFind;
    iget-object v1, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->city:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/MessageCityFind;->city:Ljava/lang/String;

    .line 44
    iget-object v1, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->country:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/MessageCityFind;->country:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->adminArea:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/MessageCityFind;->adminArea:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->location:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/weather/accuWeather/MessageCityFind;->location:Ljava/lang/String;

    .line 47
    return-object v0
.end method

.method public getAdminArea()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->adminArea:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->location:Ljava/lang/String;

    return-object v0
.end method

.method public setAdminArea(Ljava/lang/String;)V
    .locals 1
    .parameter "adminArea"

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->adminArea:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1
    .parameter "city"

    .prologue
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->city:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 1
    .parameter "country"

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->country:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/weather/accuWeather/MessageCityFind;->location:Ljava/lang/String;

    .line 39
    return-void
.end method
