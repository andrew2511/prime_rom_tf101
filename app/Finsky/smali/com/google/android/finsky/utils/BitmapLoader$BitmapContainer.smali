.class public Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;
.super Ljava/lang/Object;
.source "BitmapLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

.field private mCacheKey:Ljava/lang/String;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/finsky/utils/BitmapLoader;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/utils/BitmapLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;)V
    .locals 0
    .parameter
    .parameter "bitmap"
    .parameter "requestUrl"
    .parameter "cacheKey"
    .parameter "handler"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmap:Landroid/graphics/Bitmap;

    .line 336
    iput-object p3, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mRequestUrl:Ljava/lang/String;

    .line 337
    iput-object p4, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mCacheKey:Ljava/lang/String;

    .line 338
    iput-object p5, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    .line 339
    return-void
.end method

.method static synthetic access$602(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    return-object v0
.end method


# virtual methods
.method public cancelRequest()V
    .locals 4

    .prologue
    .line 345
    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmapLoaded:Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;

    if-nez v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v2}, Lcom/google/android/finsky/utils/BitmapLoader;->access$300(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 350
    .local v1, wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    if-eqz v1, :cond_2

    .line 351
    invoke-virtual {v1, p0}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->removeHandlerAndCancelIfNecessary(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Z

    move-result v0

    .line 352
    .local v0, canceled:Z
    if-eqz v0, :cond_0

    .line 353
    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v2}, Lcom/google/android/finsky/utils/BitmapLoader;->access$300(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 357
    .end local v0           #canceled:Z
    :cond_2
    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v2}, Lcom/google/android/finsky/utils/BitmapLoader;->access$400(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    check-cast v1, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;

    .line 358
    .restart local v1       #wrapper:Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;
    if-eqz v1, :cond_0

    .line 359
    invoke-virtual {v1, p0}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->removeHandlerAndCancelIfNecessary(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)Z

    .line 360
    invoke-static {v1}, Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;->access$500(Lcom/google/android/finsky/utils/BitmapLoader$RequestListenerWrapper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->this$0:Lcom/google/android/finsky/utils/BitmapLoader;

    invoke-static {v2}, Lcom/google/android/finsky/utils/BitmapLoader;->access$400(Lcom/google/android/finsky/utils/BitmapLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
