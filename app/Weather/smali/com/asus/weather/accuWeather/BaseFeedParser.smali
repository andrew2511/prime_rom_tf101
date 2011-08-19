.class public Lcom/asus/weather/accuWeather/BaseFeedParser;
.super Ljava/lang/Object;
.source "BaseFeedParser.java"


# static fields
.field static final WEATHER_QUERY_LOCALE:[Ljava/lang/String;

.field static feedUrlString:Ljava/lang/String;

.field static nameSpaceString:Ljava/lang/String;


# instance fields
.field private final feedUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const-string v0, "http://asus1.accu-weather.com/widget/asus1/weather-data.asp?slat=25.119759&slon=121.502094&metric=1&langId=1"

    sput-object v0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrlString:Ljava/lang/String;

    .line 21
    const-string v0, "http://www.accuweather.com"

    sput-object v0, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    .line 23
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "en"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "da"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "nb"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "it"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "de"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "sv"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "zh"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "sk"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ro"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "cs"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "ru"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "ar"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "en"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ja"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "ko"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "fr"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "iw"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/weather/accuWeather/BaseFeedParser;->WEATHER_QUERY_LOCALE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    :try_start_0
    new-instance v1, Ljava/net/URL;

    sget-object v2, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrlString:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 56
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 58
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(DDLjava/lang/String;)V
    .locals 10
    .parameter "Lat"
    .parameter "Long"
    .parameter "unit"

    .prologue
    const/4 v9, 0x0

    const-wide v7, 0x3f0a36e2eb1c432dL

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v4, "[BaseFeedParser]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lat_old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "long_old:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    add-double/2addr p1, v7

    .line 66
    add-double/2addr p3, v7

    .line 68
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, strLat:Ljava/lang/String;
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, strLong:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v1, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v2, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string v4, "[BaseFeedParser]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lat_new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "long_new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, unit_code:I
    const-string v4, "C"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 78
    const/4 v3, 0x1

    .line 83
    :cond_0
    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://asus1.accu-weather.com/widget/asus1/weather-data.asp?slat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&slon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&metric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&langId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/asus/weather/accuWeather/BaseFeedParser;->localeMappingLangId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;

    .line 84
    const-string v4, "[BaseFeedParser]"

    iget-object v5, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 86
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 88
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "strLocationId"
    .parameter "unit"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v1, 0x0

    .line 95
    .local v1, unit_code:I
    const-string v2, "C"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v1, 0x1

    .line 102
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://asus1.accu-weather.com/widget/asus1/weather-data.asp?location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&metric="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&langId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/asus/weather/accuWeather/BaseFeedParser;->localeMappingLangId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;

    .line 103
    const-string v2, "[BaseFeedParser]"

    iget-object v3, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 107
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static localeMappingLangId()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 279
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 280
    .local v0, defaultLocale:Ljava/util/Locale;
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, strLocaleLanguage:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 283
    .local v2, strLocaleCountry:Ljava/lang/String;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/asus/weather/accuWeather/BaseFeedParser;->WEATHER_QUERY_LOCALE:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 285
    sget-object v4, Lcom/asus/weather/accuWeather/BaseFeedParser;->WEATHER_QUERY_LOCALE:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 287
    if-ne v1, v5, :cond_0

    .line 289
    const-string v4, "GB"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 290
    const/16 v4, 0x1c

    .line 307
    :goto_1
    return v4

    .line 292
    :cond_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 294
    const-string v4, "CA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 295
    const/16 v4, 0x20

    goto :goto_1

    .line 297
    :cond_1
    const/16 v4, 0xd

    if-ne v1, v4, :cond_2

    .line 299
    const-string v4, "TW"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    const/16 v4, 0xe

    goto :goto_1

    :cond_2
    move v4, v1

    .line 303
    goto :goto_1

    .line 283
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move v4, v5

    .line 307
    goto :goto_1
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/asus/weather/accuWeather/BaseFeedParser;->feedUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 116
    .local v1, urlCon:Ljava/net/HttpURLConnection;
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 117
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 118
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 124
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[Warning] Network is not connected."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    .end local v1           #urlCon:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 129
    .local v0, e:Ljava/net/SocketTimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 131
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 133
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parse()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asus/weather/accuWeather/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/asus/weather/accuWeather/Message;

    invoke-direct {v0}, Lcom/asus/weather/accuWeather/Message;-><init>()V

    .line 141
    .local v0, currentMessage:Lcom/asus/weather/accuWeather/Message;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v5, messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/Message;>;"
    new-instance v6, Landroid/sax/RootElement;

    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "adc_database"

    invoke-direct {v6, v7, v8}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v6, root:Landroid/sax/RootElement;
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "units"

    invoke-virtual {v6, v7, v8}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    .line 145
    .local v2, itemlist2_1:Landroid/sax/Element;
    new-instance v7, Lcom/asus/weather/accuWeather/BaseFeedParser$1;

    invoke-direct {v7, p0, v5, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$1;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v2, v7}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 153
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "temp"

    invoke-virtual {v2, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$2;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$2;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 161
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "speed"

    invoke-virtual {v2, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$3;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$3;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 169
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "local"

    invoke-virtual {v6, v7, v8}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 170
    .local v3, itemlist2_2:Landroid/sax/Element;
    new-instance v7, Lcom/asus/weather/accuWeather/BaseFeedParser$4;

    invoke-direct {v7, p0, v5, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$4;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v3, v7}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 178
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "city"

    invoke-virtual {v3, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$5;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$5;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 186
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "currentconditions"

    invoke-virtual {v6, v7, v8}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    .line 187
    .local v4, itemlist2_3:Landroid/sax/Element;
    new-instance v7, Lcom/asus/weather/accuWeather/BaseFeedParser$6;

    invoke-direct {v7, p0, v5, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$6;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Ljava/util/List;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v4, v7}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 202
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "temperature"

    invoke-virtual {v4, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$7;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$7;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 210
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "weathertext"

    invoke-virtual {v4, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$8;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$8;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 218
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "weathericon"

    invoke-virtual {v4, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$9;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$9;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 226
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "realfeel"

    invoke-virtual {v4, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$10;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$10;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 234
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "windspeed"

    invoke-virtual {v4, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$11;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$11;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 242
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "winddirection"

    invoke-virtual {v4, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$12;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$12;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 250
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "humidity"

    invoke-virtual {v4, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$13;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$13;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 258
    sget-object v7, Lcom/asus/weather/accuWeather/BaseFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v8, "url"

    invoke-virtual {v4, v7, v8}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v7

    new-instance v8, Lcom/asus/weather/accuWeather/BaseFeedParser$14;

    invoke-direct {v8, p0, v0}, Lcom/asus/weather/accuWeather/BaseFeedParser$14;-><init>(Lcom/asus/weather/accuWeather/BaseFeedParser;Lcom/asus/weather/accuWeather/Message;)V

    invoke-virtual {v7, v8}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/weather/accuWeather/BaseFeedParser;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    sget-object v8, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v6}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v9

    invoke-static {v7, v8, v9}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    return-object v5

    .line 270
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 272
    .local v1, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
