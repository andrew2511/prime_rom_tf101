.class public Lcom/google/android/finsky/utils/BitmapLoader;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;,
        Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;,
        Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;,
        Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;
    }
.end annotation


# static fields
.field private static MAX_CACHE_SIZE_IN_BYTES:I


# instance fields
.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/high16 v0, 0x30

    sput v0, Lcom/google/android/finsky/utils/BitmapLoader;->MAX_CACHE_SIZE_IN_BYTES:I

    return-void
.end method

.method public constructor <init>(Lcom/android/volley/RequestQueue;)V
    .locals 2
    .parameter "queue"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLruCache;

    sget v1, Lcom/google/android/finsky/utils/BitmapLoader;->MAX_CACHE_SIZE_IN_BYTES:I

    invoke-direct {v0, v1}, Lcom/google/android/finsky/utils/BitmapLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    .line 47
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    .line 50
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/utils/BitmapLoader;->onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/finsky/utils/BitmapLoader;->onGetImageError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V
    .locals 4
    .parameter "cacheKey"
    .parameter "wrapper"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 448
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$3;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/utils/BitmapLoader$3;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;)V

    iput-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    .line 463
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 465
    :cond_0
    return-void
.end method

.method private get(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .locals 11
    .parameter "requestUrl"
    .parameter "cacheKey"
    .parameter "defaultImage"
    .parameter "remoteRequestCreator"
    .parameter "bitmapLoadedHandler"

    .prologue
    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V

    .line 136
    :goto_0
    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    invoke-virtual {v0, p2}, Lcom/google/android/finsky/utils/BitmapLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 109
    .local v2, cachedBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 111
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V

    goto :goto_0

    .line 115
    :cond_1
    new-instance v3, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-object v4, p0

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V

    .line 119
    .local v3, bitmapContainer:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 120
    .local v10, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    if-eqz v10, :cond_2

    .line 122
    invoke-virtual {v10, v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->addHandler(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    move-object v0, v3

    .line 123
    goto :goto_0

    .line 127
    :cond_2
    invoke-interface {p4}, Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;->create()Lcom/android/volley/Request;

    move-result-object v9

    .line 129
    .local v9, newRequest:Lcom/android/volley/Request;,"Lcom/android/volley/Request<*>;"
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v9}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 132
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    invoke-direct {v1, p0, v9, v3}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Lcom/android/volley/Request;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 136
    goto :goto_0
.end method

.method private static getCacheKey(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onGetImageError(Ljava/lang/String;)V
    .locals 2
    .parameter "cacheKey"

    .prologue
    .line 242
    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 244
    .local v0, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/BitmapLoader;->batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V

    .line 245
    return-void
.end method

.method private onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "cacheKey"
    .parameter "response"

    .prologue
    .line 227
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    mul-int/2addr v1, v2

    const v2, 0x7d000

    if-gt v1, v2, :cond_0

    .line 228
    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mCachedRemoteImages:Lcom/google/android/finsky/utils/BitmapLruCache;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/finsky/utils/BitmapLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 233
    .local v0, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    invoke-static {v0, p2}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$202(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 236
    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/utils/BitmapLoader;->batchResponse(Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)V

    .line 237
    return-void
.end method


# virtual methods
.method public drain()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 73
    return-void
.end method

.method public get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .locals 7
    .parameter "requestUrl"
    .parameter "defaultImage"
    .parameter "bitmapLoadedHandler"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 160
    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 164
    :cond_0
    invoke-static {p1, p4, p5}, Lcom/google/android/finsky/utils/BitmapLoader;->getCacheKey(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, cacheKey:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/utils/BitmapLoader$1;

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader$1;-><init>(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;Ljava/lang/String;II)V

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$RemoteRequestCreator;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    return-object v0
.end method

.method public getOrBindImmediately(Ljava/lang/String;Landroid/widget/ImageView;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .locals 6
    .parameter "requestUrl"
    .parameter "imageView"
    .parameter "bitmapLoadedHandler"

    .prologue
    const/4 v4, 0x0

    .line 258
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->getOrBindImmediately(Ljava/lang/String;Landroid/widget/ImageView;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v0

    return-object v0
.end method

.method public getOrBindImmediately(Ljava/lang/String;Landroid/widget/ImageView;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    .locals 7
    .parameter "requestUrl"
    .parameter "imageView"
    .parameter "bitmapLoadedHandler"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 275
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/utils/BitmapLoader;->get(Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;II)Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    move-result-object v6

    .line 276
    .local v6, container:Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v6}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    :cond_0
    return-object v6
.end method
