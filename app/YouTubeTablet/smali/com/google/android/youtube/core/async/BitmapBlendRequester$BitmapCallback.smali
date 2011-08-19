.class final Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;
.super Ljava/lang/Object;
.source "BitmapBlendRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/BitmapBlendRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BitmapCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmaps:[Landroid/graphics/Bitmap;

.field private bitmapsCount:I

.field private final targetCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final targetRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/core/async/BitmapBlendRequester;

.field private final uris:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/BitmapBlendRequester;Ljava/util/List;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 4
    .parameter
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
    .line 52
    .local p2, request:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    .local p3, targetCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Ljava/util/List<Landroid/net/Uri;>;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->this$0:Lcom/google/android/youtube/core/async/BitmapBlendRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->targetRequest:Ljava/util/List;

    .line 55
    iput-object p3, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 57
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->uris:Ljava/util/List;

    .line 58
    iget-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->targetRequest:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 59
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->uris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {p1}, Lcom/google/android/youtube/core/async/BitmapBlendRequester;->access$000(Lcom/google/android/youtube/core/async/BitmapBlendRequester;)Lcom/google/android/youtube/core/async/BitmapBlender;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/youtube/core/async/BitmapBlender;->preferredBitmapCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 60
    iget-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->uris:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->uris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->bitmaps:[Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method

.method private collapsetoList([Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 5
    .parameter "bitmaps"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    move-object v0, p1

    .local v0, arr$:[Landroid/graphics/Bitmap;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 100
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-object v4
.end method

.method private maybeInvokeTargetCallback()V
    .locals 5

    .prologue
    .line 87
    iget v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->bitmapsCount:I

    iget-object v3, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->uris:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->bitmaps:[Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->collapsetoList([Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, renderSrc:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    iget-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->targetRequest:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->this$0:Lcom/google/android/youtube/core/async/BitmapBlendRequester;

    invoke-static {v4}, Lcom/google/android/youtube/core/async/BitmapBlendRequester;->access$000(Lcom/google/android/youtube/core/async/BitmapBlendRequester;)Lcom/google/android/youtube/core/async/BitmapBlender;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/google/android/youtube/core/async/BitmapBlender;->blend(Ljava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #renderSrc:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 92
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->targetCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->targetRequest:Ljava/util/List;

    invoke-interface {v2, v3, v0}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->bitmapsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->bitmapsCount:I

    .line 83
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->maybeInvokeTargetCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public declared-synchronized onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "uri"
    .parameter "bitmap"

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->bitmaps:[Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->uris:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    aput-object p2, v0, v1

    .line 75
    iget v0, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->bitmapsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->bitmapsCount:I

    .line 76
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->maybeInvokeTargetCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public declared-synchronized requestBitmaps()V
    .locals 3

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->maybeInvokeTargetCallback()V

    .line 68
    iget-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->uris:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 69
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/youtube/core/async/BitmapBlendRequester$BitmapCallback;->this$0:Lcom/google/android/youtube/core/async/BitmapBlendRequester;

    invoke-static {v2}, Lcom/google/android/youtube/core/async/BitmapBlendRequester;->access$100(Lcom/google/android/youtube/core/async/BitmapBlendRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    invoke-interface {v2, v1, p0}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 67
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 71
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
