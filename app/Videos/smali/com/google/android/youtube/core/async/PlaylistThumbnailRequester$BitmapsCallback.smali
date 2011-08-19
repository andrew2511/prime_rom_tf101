.class Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;
.super Ljava/lang/Object;
.source "PlaylistThumbnailRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
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


# instance fields
.field private final origCallback:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final origRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field final synthetic this$0:Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 0
    .parameter
    .parameter "origRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, origCallback:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Landroid/graphics/Bitmap;>;"
    iput-object p1, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;->this$0:Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;->origRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 73
    iput-object p3, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;->origCallback:Lcom/google/android/youtube/core/async/Callback;

    .line 74
    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;->onError(Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, request:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;->origCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;->origRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 82
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    check-cast p1, Ljava/util/List;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;->onResponse(Ljava/util/List;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, request:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;->origCallback:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/PlaylistThumbnailRequester$BitmapsCallback;->origRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-void
.end method
