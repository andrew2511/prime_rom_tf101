.class Lcom/android/contacts/ContactPhotoManagerImpl;
.super Lcom/android/contacts/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManager;-><init>()V

    .line 180
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    .line 186
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    .line 205
    iput-object p1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 208
    .local v1, resources:Landroid/content/res/Resources;
    new-instance v2, Landroid/util/LruCache;

    const v3, 0x7f090001

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/util/LruCache;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    .line 210
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 211
    .local v0, maxBytes:I
    new-instance v2, Lcom/android/contacts/ContactPhotoManagerImpl$1;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl$1;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;I)V

    iput-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    .line 216
    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe8

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/ContactPhotoManagerImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/contacts/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/ContactPhotoManagerImpl;Ljava/lang/Object;[BZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZ)V
    .locals 2
    .parameter "key"
    .parameter "bytes"
    .parameter "preloading"

    .prologue
    .line 426
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    invoke-direct {v0, p2}, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;-><init>([B)V

    .line 427
    .local v0, holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    .line 431
    if-nez p3, :cond_0

    .line 432
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)V

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    return-void
.end method

.method private inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 305
    iget-object v1, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    .line 306
    .local v1, bytes:[B
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 326
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 312
    .restart local p0
    :cond_1
    iget-object v2, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_2

    .line 313
    iget-object v2, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    iput-object p0, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 314
    iget-object v2, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 320
    :cond_2
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 321
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 322
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Ljava/lang/Object;)Z
    .locals 3
    .parameter "view"
    .parameter "key"

    .prologue
    const v2, 0x7f02005b

    .line 273
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 274
    .local v0, holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    if-nez v0, :cond_0

    .line 276
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    const/4 v1, 0x0

    .line 296
    :goto_0
    return v1

    .line 280
    :cond_0
    iget-object v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v1, :cond_1

    .line 281
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 282
    iget-boolean v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 286
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;)V

    .line 288
    iget-object v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 291
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    iget-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p2, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    .line 296
    iget-boolean v1, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 2
    .parameter "view"
    .parameter "key"

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Ljava/lang/Object;)Z

    move-result v0

    .line 249
    .local v0, loaded:Z
    if-eqz v0, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    iget-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, photoIdsAsStrings:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 444
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 445
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 455
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 456
    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 457
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 458
    .local v3, key:Ljava/lang/Object;
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v4, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 459
    .local v1, holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    if-eqz v1, :cond_1

    iget-boolean v4, v1, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v4, :cond_0

    .line 460
    :cond_1
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_2

    .line 461
    move-object v0, v3

    check-cast v0, Ljava/lang/Long;

    move-object v4, v0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_2
    check-cast v3, Landroid/net/Uri;

    .end local v3           #key:Ljava/lang/Object;
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 468
    .end local v1           #holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    :cond_3
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    .prologue
    .line 395
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 396
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 397
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 398
    .local v3, view:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 399
    .local v1, key:Ljava/lang/Object;
    invoke-direct {p0, v3, v1}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Ljava/lang/Object;)Z

    move-result v2

    .line 400
    .local v2, loaded:Z
    if-eqz v2, :cond_0

    .line 401
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 405
    .end local v1           #key:Ljava/lang/Object;
    .end local v2           #loaded:Z
    .end local v3           #view:Landroid/widget/ImageView;
    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->softenCache()V

    .line 407
    iget-object v4, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 408
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    .line 410
    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 353
    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    .line 354
    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 355
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 357
    :cond_0
    return-void
.end method

.method private softenCache()V
    .locals 3

    .prologue
    .line 417
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 418
    .local v0, holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 420
    .end local v0           #holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method


# virtual methods
.method public ensureLoaderThread()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/contacts/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    .line 386
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->start()V

    .line 388
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 363
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 380
    :goto_0
    return v0

    .line 365
    :pswitch_0
    iput-boolean v1, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoadingRequested:Z

    .line 366
    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 368
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    :cond_0
    move v0, v2

    .line 370
    goto :goto_0

    .line 374
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v0, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->processLoadedImages()V

    :cond_1
    move v0, v2

    .line 377
    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;J)V
    .locals 2
    .parameter "view"
    .parameter "photoId"

    .prologue
    .line 227
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 229
    const v0, 0x7f02005b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .locals 1
    .parameter "view"
    .parameter "photoUri"

    .prologue
    .line 238
    if-nez p2, :cond_0

    .line 240
    const v0, 0x7f02005b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    .line 336
    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->ensureLoaderThread()V

    .line 222
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    .line 223
    return-void
.end method

.method public refreshCache()V
    .locals 3

    .prologue
    .line 262
    iget-object v2, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;

    .line 263
    .local v0, holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    .line 265
    .end local v0           #holder:Lcom/android/contacts/ContactPhotoManagerImpl$BitmapHolder;
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPaused:Z

    .line 341
    iget-object v0, p0, Lcom/android/contacts/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 342
    invoke-direct {p0}, Lcom/android/contacts/ContactPhotoManagerImpl;->requestLoading()V

    .line 344
    :cond_0
    return-void
.end method
