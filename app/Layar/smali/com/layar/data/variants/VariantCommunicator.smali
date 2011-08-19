.class public Lcom/layar/data/variants/VariantCommunicator;
.super Ljava/lang/Object;
.source "VariantCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/data/variants/VariantCommunicator$VariantDetailsHandler;
    }
.end annotation


# static fields
.field private static final API_PATTERN_VARIANTNAME:Ljava/lang/String; = "<variant>"

.field private static final API_PATTERN_VARIANTTYPE:Ljava/lang/String; = "<type>"

.field public static final TAG:Ljava/lang/String; = null

.field private static final VARIANT_GET_DETAILS_URL:Ljava/lang/String; = "/api/variant/<variant>/<type>"

.field private static final VARIANT_GET_URL:Ljava/lang/String; = "/api/variant/my/"

.field private static final VARIANT_HOST:Ljava/lang/String; = "dev.layar.com"

.field private static final VARIANT_TYPE_LAYER:Ljava/lang/String; = "layer"


# instance fields
.field private mUriHelper:Lcom/layar/util/UriHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/layar/data/variants/VariantCommunicator;

    invoke-static {v0}, Lcom/layar/util/Logger;->generateTAG(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/variants/VariantCommunicator;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/layar/util/UriHelper;->getInstance()Lcom/layar/util/UriHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/layar/data/variants/VariantCommunicator;->mUriHelper:Lcom/layar/util/UriHelper;

    .line 45
    return-void
.end method


# virtual methods
.method public getVariantDetails(Ljava/lang/String;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)Lcom/layar/data/layer/LayerManager$LayersResponse;
    .locals 12
    .parameter "variantName"
    .parameter "listener"

    .prologue
    const/4 v11, 0x0

    .line 76
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v8

    if-nez v8, :cond_0

    .line 77
    new-instance v8, Lcom/layar/data/layer/LayerManager$LayersResponse;

    const/16 v9, -0xa

    invoke-direct {v8, v9, v11}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    .line 99
    :goto_0
    return-object v8

    .line 79
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 80
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v8, "/api/variant/<variant>/<type>"

    .line 81
    const-string v9, "<variant>"

    invoke-virtual {v8, v9, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 82
    const-string v9, "<type>"

    const-string v10, "layer"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 80
    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    iget-object v8, p0, Lcom/layar/data/variants/VariantCommunicator;->mUriHelper:Lcom/layar/util/UriHelper;

    invoke-virtual {v8, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 85
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, uri:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v8, Lorg/apache/http/HttpHost;

    const-string v9, "dev.layar.com"

    invoke-direct {v8, v9}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-static {v8, v2}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 92
    .local v5, response:Lorg/apache/http/HttpResponse;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v4, layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, jsonText:Ljava/lang/String;
    invoke-static {v3, v4, p2}, Lcom/layar/data/layer/LayerManager;->parseLayers(Ljava/lang/String;Ljava/util/ArrayList;Lcom/layar/data/layer/LayerManager$LayerFoundListener;)I

    move-result v6

    .line 96
    .local v6, responseCode:I
    new-instance v8, Lcom/layar/data/layer/LayerManager$LayersResponse;

    invoke-direct {v8, v6, v4}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #jsonText:Ljava/lang/String;
    .end local v4           #layers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/layar/data/layer/Layer20;>;"
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v6           #responseCode:I
    .end local v7           #uri:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 99
    .local v1, e:Ljava/io/IOException;
    new-instance v8, Lcom/layar/data/layer/LayerManager$LayersResponse;

    const/4 v9, -0x3

    invoke-direct {v8, v9, v11}, Lcom/layar/data/layer/LayerManager$LayersResponse;-><init>(ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public getVariants()Lcom/layar/data/variants/VariantsResponse;
    .locals 8

    .prologue
    .line 48
    invoke-static {}, Lcom/layar/App;->isOnline()Z

    move-result v6

    if-nez v6, :cond_0

    .line 49
    new-instance v6, Lcom/layar/data/variants/VariantsResponse;

    const/16 v7, -0xa

    invoke-direct {v6, v7}, Lcom/layar/data/variants/VariantsResponse;-><init>(I)V

    .line 70
    :goto_0
    return-object v6

    .line 50
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 51
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v6, "/api/variant/my/"

    invoke-virtual {v0, v6}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 52
    iget-object v6, p0, Lcom/layar/data/variants/VariantCommunicator;->mUriHelper:Lcom/layar/util/UriHelper;

    invoke-virtual {v6, v0}, Lcom/layar/util/UriHelper;->appendBasicParams(Landroid/net/Uri$Builder;)V

    .line 54
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, uri:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 57
    .local v4, post:Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Lorg/apache/http/HttpHost;

    const-string v7, "dev.layar.com"

    invoke-direct {v6, v7}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v4}, Lcom/layar/util/HttpManager;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 59
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    invoke-static {v6, v2}, Lcom/layar/util/HttpManager;->responseAsString(Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    .local v3, jsonResponse:Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/layar/data/variants/VariantsResponse;->parse(Lorg/json/JSONObject;)Lcom/layar/data/variants/VariantsResponse;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    .line 62
    .end local v3           #jsonResponse:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 65
    .local v1, e:Lorg/json/JSONException;
    :try_start_2
    new-instance v6, Lcom/layar/data/variants/VariantsResponse;

    const/4 v7, -0x3

    invoke-direct {v6, v7}, Lcom/layar/data/variants/VariantsResponse;-><init>(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 67
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #post:Lorg/apache/http/client/methods/HttpGet;
    .end local v5           #uri:Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 70
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Lcom/layar/data/variants/VariantsResponse;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Lcom/layar/data/variants/VariantsResponse;-><init>(I)V

    goto :goto_0
.end method
