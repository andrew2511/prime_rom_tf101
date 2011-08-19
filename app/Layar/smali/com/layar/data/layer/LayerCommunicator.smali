.class public Lcom/layar/data/layer/LayerCommunicator;
.super Ljava/lang/Object;
.source "LayerCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;
    }
.end annotation


# static fields
.field private static final API_HOST:Ljava/lang/String; = "dev.layar.com"

.field private static final API_PATTERN_COUNTRY:Ljava/lang/String; = "<country>"

.field private static final API_REST_COUNT_URL:Ljava/lang/String; = "/layer/api/count/<country>/category/all/"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSensorHelper:Lcom/layar/util/SensorHelper;

.field private final mUriBuider:Lcom/layar/util/UriHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/layar/data/layer/LayerCommunicator;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/layer/LayerCommunicator;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/layar/data/layer/LayerCommunicator;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lcom/layar/util/SensorHelper;->getInstance(Landroid/content/Context;)Lcom/layar/util/SensorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerCommunicator;->mSensorHelper:Lcom/layar/util/SensorHelper;

    .line 45
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/layer/LayerCommunicator;->mUriBuider:Lcom/layar/util/UriHelper;

    .line 46
    return-void
.end method

.method private _getLayerCount(Landroid/net/Uri;)Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x3

    .line 73
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    new-instance v6, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;

    const/16 v7, -0xa

    invoke-direct {v6, v7, v9}, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;-><init>(II)V

    .line 89
    :goto_0
    return-object v6

    .line 75
    :cond_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, url:Ljava/lang/String;
    :try_start_0
    new-instance v6, Lorg/apache/http/HttpHost;

    const-string v7, "dev.layar.com"

    invoke-direct {v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v1}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 80
    .local v2, response:Lorg/apache/http/HttpResponse;
    invoke-static {v5, v2}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, responseText:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/layar/data/layer/LayerCommunicator;->_parseGetLayerCount(Ljava/lang/String;)Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;

    move-result-object v4

    .line 83
    .local v4, result:Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;
    iget v6, v4, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;->responseCode:I

    if-ne v6, v8, :cond_1

    .line 84
    const v6, 0x7f090036

    invoke-direct {p0, v6}, Lcom/layar/data/layer/LayerCommunicator;->_showToast(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v6, v4

    .line 86
    goto :goto_0

    .line 87
    .end local v2           #response:Lorg/apache/http/HttpResponse;
    .end local v3           #responseText:Ljava/lang/String;
    .end local v4           #result:Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 89
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;

    invoke-direct {v6, v8, v9}, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;-><init>(II)V

    goto :goto_0
.end method

.method private _parseGetLayerCount(Ljava/lang/String;)Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;
    .locals 6
    .parameter "jsonText"

    .prologue
    const/4 v5, 0x0

    .line 94
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v1, jsonObj:Lorg/json/JSONObject;
    const-string v3, "responseCode"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 97
    .local v2, responseCode:I
    const/16 v3, 0x2a

    if-ne v2, v3, :cond_0

    .line 99
    new-instance v3, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;-><init>(II)V

    .line 108
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .end local v2           #responseCode:I
    :goto_0
    return-object v3

    .line 100
    .restart local v1       #jsonObj:Lorg/json/JSONObject;
    .restart local v2       #responseCode:I
    :cond_0
    if-eqz v2, :cond_1

    .line 101
    new-instance v3, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;-><init>(II)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    .end local v1           #jsonObj:Lorg/json/JSONObject;
    .end local v2           #responseCode:I
    :catch_0
    move-exception v3

    .line 108
    new-instance v3, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;

    const/4 v4, -0x3

    invoke-direct {v3, v4, v5}, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;-><init>(II)V

    goto :goto_0

    .line 103
    .restart local v1       #jsonObj:Lorg/json/JSONObject;
    .restart local v2       #responseCode:I
    :cond_1
    :try_start_1
    const-string v3, "count"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, count:I
    new-instance v3, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v0}, Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;-><init>(II)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private _showToast(I)V
    .locals 1
    .parameter "textId"

    .prologue
    .line 122
    new-instance v0, Lcom/layar/data/layer/LayerCommunicator$1;

    invoke-direct {v0, p0, p1}, Lcom/layar/data/layer/LayerCommunicator$1;-><init>(Lcom/layar/data/layer/LayerCommunicator;I)V

    invoke-static {v0}, Lcom/layar/App;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method

.method static synthetic access$0(Lcom/layar/data/layer/LayerCommunicator;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/layar/data/layer/LayerCommunicator;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getLayerCount(I)Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;
    .locals 8
    .parameter "categoryId"

    .prologue
    .line 57
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 58
    .local v1, builder:Landroid/net/Uri$Builder;
    iget-object v0, p0, Lcom/layar/data/layer/LayerCommunicator;->mUriBuider:Lcom/layar/util/UriHelper;

    const-string v7, "/layer/api/count/<country>/category/all/"

    invoke-virtual {v0, v7}, Lcom/layar/util/UriHelper;->fixCountry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 59
    iget-object v0, p0, Lcom/layar/data/layer/LayerCommunicator;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual {v0, v1}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 60
    const-string v0, "categoryId"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 62
    iget-object v0, p0, Lcom/layar/data/layer/LayerCommunicator;->mSensorHelper:Lcom/layar/util/SensorHelper;

    invoke-virtual {v0}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 63
    .local v6, curLoc:Landroid/location/Location;
    if-eqz v6, :cond_0

    .line 64
    invoke-virtual {v6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 65
    .local v2, latitude:D
    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    .line 66
    .local v4, longitude:D
    iget-object v0, p0, Lcom/layar/data/layer/LayerCommunicator;->mUriBuider:Lcom/layar/util/UriHelper;

    invoke-virtual/range {v0 .. v5}, Lcom/layar/util/UriHelper;->appendLocationParams(Landroid/net/Uri$Builder;DD)Landroid/net/Uri$Builder;

    .line 69
    .end local v2           #latitude:D
    .end local v4           #longitude:D
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/layar/data/layer/LayerCommunicator;->_getLayerCount(Landroid/net/Uri;)Lcom/layar/data/layer/LayerCommunicator$GetLayerCountResponse;

    move-result-object v0

    return-object v0
.end method
