.class public Lcom/asus/weather/accuWeather/CityFeedParser;
.super Ljava/lang/Object;
.source "CityFeedParser.java"


# static fields
.field static feedUrlString:Ljava/lang/String;

.field static nameSpaceString:Ljava/lang/String;


# instance fields
.field private feedUrl:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "http://asus1.accu-weather.com/widget/asus1/city-find.asp?location="

    sput-object v0, Lcom/asus/weather/accuWeather/CityFeedParser;->feedUrlString:Ljava/lang/String;

    .line 21
    const-string v0, "http://www.accuweather.com"

    sput-object v0, Lcom/asus/weather/accuWeather/CityFeedParser;->nameSpaceString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .parameter "queryCity"
    .parameter "cityQueryByLocale"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/asus/weather/accuWeather/CityFeedParser;->feedUrl:Ljava/net/URL;

    .line 36
    const-string v3, ""

    .line 37
    .local v3, strfeed:Ljava/lang/String;
    const-string v2, ""

    .line 40
    .local v2, encodeCity:Ljava/lang/String;
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 48
    :goto_0
    if-nez p2, :cond_0

    .line 50
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/asus/weather/accuWeather/CityFeedParser;->feedUrlString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&langId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/weather/accuWeather/BaseFeedParser;->localeMappingLangId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    :goto_1
    new-instance v4, Ljava/net/URL;

    const-string v5, " "

    const-string v6, "-"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/asus/weather/accuWeather/CityFeedParser;->feedUrl:Ljava/net/URL;

    .line 57
    const-string v4, "[CityFeedParser]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryCity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", encodeCity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v4, "[CityFeedParser]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "this.feedUrl="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/asus/weather/accuWeather/CityFeedParser;->feedUrl:Ljava/net/URL;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    return-void

    .line 41
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 43
    .local v1, e1:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v1           #e1:Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/asus/weather/accuWeather/CityFeedParser;->feedUrlString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&langId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    goto :goto_1

    .line 60
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 62
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method protected getInputStream()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/asus/weather/accuWeather/CityFeedParser;->feedUrl:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 71
    .local v1, urlCon:Ljava/net/HttpURLConnection;
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 72
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 73
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 79
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[Warning] Network is not connected."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    .end local v1           #urlCon:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 84
    .local v0, e:Ljava/net/SocketTimeoutException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 86
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 88
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parse()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asus/weather/accuWeather/MessageCityFind;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/asus/weather/accuWeather/MessageCityFind;

    invoke-direct {v0}, Lcom/asus/weather/accuWeather/MessageCityFind;-><init>()V

    .line 95
    .local v0, currentMessage:Lcom/asus/weather/accuWeather/MessageCityFind;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v4, messages:Ljava/util/List;,"Ljava/util/List<Lcom/asus/weather/accuWeather/MessageCityFind;>;"
    new-instance v5, Landroid/sax/RootElement;

    sget-object v6, Lcom/asus/weather/accuWeather/CityFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v7, "adc_database"

    invoke-direct {v5, v6, v7}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v5, root:Landroid/sax/RootElement;
    sget-object v6, Lcom/asus/weather/accuWeather/CityFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v7, "citylist"

    invoke-virtual {v5, v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    .line 98
    .local v2, itemlist2:Landroid/sax/Element;
    sget-object v6, Lcom/asus/weather/accuWeather/CityFeedParser;->nameSpaceString:Ljava/lang/String;

    const-string v7, "location"

    invoke-virtual {v2, v6, v7}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 100
    .local v3, itemlist3:Landroid/sax/Element;
    new-instance v6, Lcom/asus/weather/accuWeather/CityFeedParser$1;

    invoke-direct {v6, p0, v0, v4}, Lcom/asus/weather/accuWeather/CityFeedParser$1;-><init>(Lcom/asus/weather/accuWeather/CityFeedParser;Lcom/asus/weather/accuWeather/MessageCityFind;Ljava/util/List;)V

    invoke-virtual {v3, v6}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/weather/accuWeather/CityFeedParser;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    sget-object v7, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-virtual {v5}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    return-object v4

    .line 116
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 118
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method
