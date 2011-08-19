.class Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;
.super Ljava/lang/Object;
.source "AvatarCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/AvatarCache$BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CacheItem"
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/BitmapDrawable;

.field private hash:Ljava/lang/String;

.field private isSource:Z

.field final synthetic this$1:Lcom/google/android/talk/AvatarCache$BitmapCache;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AvatarCache$BitmapCache;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Z)V
    .locals 0
    .parameter
    .parameter "hash"
    .parameter "drawable"
    .parameter "isSource"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->this$1:Lcom/google/android/talk/AvatarCache$BitmapCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p2, p0, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->hash:Ljava/lang/String;

    .line 296
    iput-object p3, p0, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 297
    iput-boolean p4, p0, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->isSource:Z

    .line 298
    return-void
.end method


# virtual methods
.method getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    .line 313
    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->drawable:Landroid/graphics/drawable/BitmapDrawable;

    monitor-exit p0

    return-object v0

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->hash:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isSourceBitmap()Z
    .locals 1

    .prologue
    .line 325
    monitor-enter p0

    .line 326
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/AvatarCache$BitmapCache$CacheItem;->isSource:Z

    monitor-exit p0

    return v0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
