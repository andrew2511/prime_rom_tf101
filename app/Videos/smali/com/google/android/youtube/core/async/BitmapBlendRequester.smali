.class public Lcom/google/android/youtube/core/async/BitmapBlendRequester;
.super Ljava/lang/Object;
.source "BitmapBlendRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Requester",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/net/Uri;",
        ">;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapRequester:Lcom/google/android/youtube/core/async/Requester;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final blender:Lcom/google/android/youtube/core/async/BitmapBlender;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/Requester;Lcom/google/android/youtube/core/async/BitmapBlender;)V
    .locals 1
    .parameter
    .parameter "blender"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Landroid/net/Uri;",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/google/android/youtube/core/async/BitmapBlender;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, bitmapRequester:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Landroid/net/Uri;Landroid/graphics/Bitmap;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "bitmapRequester may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Requester;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester;->bitmapRequester:Lcom/google/android/youtube/core/async/Requester;

    .line 32
    const-string v0, "renderer may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/BitmapBlender;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester;->blender:Lcom/google/android/youtube/core/async/BitmapBlender;

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/async/BitmapBlendRequester;)Lcom/google/android/youtube/core/async/BitmapBlender;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester;->blender:Lcom/google/android/youtube/core/async/BitmapBlender;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/async/BitmapBlendRequester;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester;->bitmapRequester:Lcom/google/android/youtube/core/async/Requester;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/BitmapBlendRequester;->request(Ljava/util/List;Lcom/google/android/youtube/core/async/Callback;)V

    return-void
.end method

.method public request(Ljava/util/List;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, request:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    .local p2, callback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Ljava/util/List<Landroid/net/Uri;>;Landroid/graphics/Bitmap;>;"
    const-string v1, "request may not be null"

    invoke-static {p1, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "callback may not be null"

    invoke-static {p2, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;-><init>(Lcom/google/android/youtube/core/async/BitmapBlendRequester;Ljava/util/List;Lcom/google/android/youtube/core/async/Callback;)V

    .line 40
    .local v0, bitmapCallback:Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->requestBitmaps()V

    .line 41
    return-void
.end method
