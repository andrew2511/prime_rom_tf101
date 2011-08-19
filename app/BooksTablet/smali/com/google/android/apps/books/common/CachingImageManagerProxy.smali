.class public Lcom/google/android/apps/books/common/CachingImageManagerProxy;
.super Ljava/lang/Object;
.source "CachingImageManagerProxy.java"

# interfaces
.implements Lcom/google/android/apps/books/common/ImageManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CachingImageManager"


# instance fields
.field private final mImageManager:Lcom/google/android/apps/books/common/ImageManager;

.field private mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/common/ImageManager;)V
    .locals 1
    .parameter "imageManager"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mImageManager:Lcom/google/android/apps/books/common/ImageManager;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mResults:Ljava/util/Map;

    .line 34
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->shouldLog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/common/CachingImageManagerProxy;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mResults:Ljava/util/Map;

    return-object v0
.end method

.method private static shouldLog()Z
    .locals 2

    .prologue
    .line 37
    const-string v0, "CachingImageManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mImageManager:Lcom/google/android/apps/books/common/ImageManager;

    invoke-interface {v0}, Lcom/google/android/apps/books/common/ImageManager;->clear()V

    .line 87
    return-void
.end method

.method public getImage(Landroid/net/Uri;Ljava/lang/Runnable;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;
    .locals 6
    .parameter "uri"
    .parameter "prereq"
    .parameter "callback"

    .prologue
    const-string v5, "CachingImageManager"

    .line 42
    iget-object v3, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mResults:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;

    .line 43
    .local v0, cacheValue:Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;
    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->shouldLog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    const-string v3, "CachingImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning cached bitmap "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iget-object v3, v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Lcom/google/android/apps/books/common/CachingImageManagerProxy$ImageResult;->exception:Ljava/lang/Throwable;

    invoke-interface {p3, v3, v4}, Lcom/google/android/apps/books/common/ImageCallback;->onImage(Landroid/graphics/Bitmap;Ljava/lang/Throwable;)V

    .line 48
    new-instance v1, Lcom/google/android/apps/books/common/NullImageFuture;

    invoke-direct {v1}, Lcom/google/android/apps/books/common/NullImageFuture;-><init>()V

    .line 77
    .local v1, result:Lcom/google/android/apps/books/common/ImageFuture;
    :goto_0
    return-object v1

    .line 52
    .end local v1           #result:Lcom/google/android/apps/books/common/ImageFuture;
    :cond_1
    new-instance v2, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/google/android/apps/books/common/CachingImageManagerProxy$1;-><init>(Lcom/google/android/apps/books/common/CachingImageManagerProxy;Landroid/net/Uri;Lcom/google/android/apps/books/common/ImageCallback;)V

    .line 72
    .local v2, wrapperCallback:Lcom/google/android/apps/books/common/ImageCallback;
    invoke-static {}, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->shouldLog()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    const-string v3, "CachingImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting image for URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mImageManager:Lcom/google/android/apps/books/common/ImageManager;

    invoke-interface {v3, p1, p2, v2}, Lcom/google/android/apps/books/common/ImageManager;->getImage(Landroid/net/Uri;Ljava/lang/Runnable;Lcom/google/android/apps/books/common/ImageCallback;)Lcom/google/android/apps/books/common/ImageFuture;

    move-result-object v1

    .restart local v1       #result:Lcom/google/android/apps/books/common/ImageFuture;
    goto :goto_0
.end method

.method public getImages([Landroid/net/Uri;)V
    .locals 1
    .parameter "uris"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/apps/books/common/CachingImageManagerProxy;->mImageManager:Lcom/google/android/apps/books/common/ImageManager;

    invoke-interface {v0, p1}, Lcom/google/android/apps/books/common/ImageManager;->getImages([Landroid/net/Uri;)V

    .line 83
    return-void
.end method
