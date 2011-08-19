.class public Lcom/google/android/finsky/api/DfeApi;
.super Ljava/lang/Object;
.source "DfeApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/api/DfeApi$DfePostRequest;
    }
.end annotation


# static fields
.field public static final BASE_URI:Landroid/net/Uri;

.field private static final CHANNELS_URI:Landroid/net/Uri;

.field private static final COMPLETE_PURCHASE_URI:Landroid/net/Uri;

.field private static final PURCHASE_URI:Landroid/net/Uri;

.field private static final SEARCH_CHANNEL_URI:Landroid/net/Uri;

.field private static final VIDEO_WATCH_URI:Landroid/net/Uri;


# instance fields
.field private final mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private final mQueue:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "https://android.clients.google.com/fdfe/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    .line 53
    const-string v0, "toc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->CHANNELS_URI:Landroid/net/Uri;

    .line 56
    const-string v0, "search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->SEARCH_CHANNEL_URI:Landroid/net/Uri;

    .line 59
    const-string v0, "purchase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->PURCHASE_URI:Landroid/net/Uri;

    .line 62
    const-string v0, "completePurchase"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->COMPLETE_PURCHASE_URI:Landroid/net/Uri;

    .line 65
    const-string v0, "http://www.youtube.com/watch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/api/DfeApi;->VIDEO_WATCH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;Lcom/google/android/finsky/api/DfeApiContext;)V
    .locals 0
    .parameter "queue"
    .parameter "apiContext"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    .line 96
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    .line 97
    return-void
.end method

.method public static createDetailsUrlFromId(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "corpusId"
    .parameter "itemId"

    .prologue
    .line 369
    packed-switch p0, :pswitch_data_0

    .line 380
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 371
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "details?doc=book-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "details?doc=app-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "details?doc=movie-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static formSearchUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "query"
    .parameter "channelId"

    .prologue
    .line 328
    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->SEARCH_CHANNEL_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "c"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 331
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getQueryParameters(Landroid/net/Uri;)Ljava/util/Map;
    .locals 10
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 263
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, encodedQuery:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 265
    const-string v8, "&"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, params:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v6, v0, v2

    .line 267
    .local v6, param:Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, pair:[Ljava/lang/String;
    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 269
    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-interface {v4, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #pair:[Ljava/lang/String;
    .end local v6           #param:Ljava/lang/String;
    .end local v7           #params:[Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public static isTopLevelUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 356
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "\\?c=[0-9]*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public completePurchase(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->COMPLETE_PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 312
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "cart"

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getApiContext()Lcom/google/android/finsky/api/DfeApiContext;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    return-object v0
.end method

.method public getBrowseLayout(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Browse$BrowseResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 127
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getChannels(Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 110
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->CHANNELS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 113
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getDetails(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DetailsResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Lcom/google/android/finsky/api/DfeRequest;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 196
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;IILcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/google/android/finsky/api/PaginatedDfeRequest;

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v5, Lcom/google/android/finsky/remoting/protos/DocList$ListResponse;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/api/PaginatedDfeRequest;-><init>(Ljava/lang/String;IILcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)V

    .line 144
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseStatus(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 287
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 291
    invoke-static {v6}, Lcom/google/android/finsky/api/DfeApi;->getQueryParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v1

    .line 292
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 293
    invoke-virtual {v6, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public getReviews(Ljava/lang/String;IILcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v0, Lcom/google/android/finsky/api/PaginatedDfeRequest;

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v5, Lcom/google/android/finsky/remoting/protos/Rev$ReviewResponse;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/api/PaginatedDfeRequest;-><init>(Ljava/lang/String;IILcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)V

    .line 182
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public makePurchase(Ljava/lang/String;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;

    sget-object v1, Lcom/google/android/finsky/api/DfeApi;->PURCHASE_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v3, Lcom/google/android/finsky/remoting/protos/Buy$BuyResponse;

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;-><init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 239
    const-string v1, "doc"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "ot"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    if-eqz p3, :cond_0

    .line 242
    const-string v1, "ct"

    invoke-virtual {v0, v1, p3}, Lcom/google/android/finsky/api/DfeApi$DfePostRequest;->addPostParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;IILcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener",
            "<",
            "Lcom/google/android/finsky/remoting/protos/SearchResponse;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/android/volley/Request",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Lcom/google/android/finsky/api/PaginatedDfeRequest;

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApi;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    const-class v5, Lcom/google/android/finsky/remoting/protos/SearchResponse;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/api/PaginatedDfeRequest;-><init>(Ljava/lang/String;IILcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/google/android/finsky/api/PaginatedDfeRequest$PaginatedListener;Lcom/android/volley/Response$ErrorListener;)V

    .line 166
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApi;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    move-result-object v0

    return-object v0
.end method
