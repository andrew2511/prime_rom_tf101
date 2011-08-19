.class Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$ThumbnailCallback;
.super Ljava/lang/Object;
.source "PlaylistsPagedViewHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 3
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;->access$100(Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;)Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->setThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 64
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$ThumbnailCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "request"
    .parameter "thumbnail"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;->access$100(Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper;)Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p2}, Lcom/google/android/youtube/app/adapter/PlaylistsAdapter;->setThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 60
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/tablet/PlaylistsPagedViewHelper$ThumbnailCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Landroid/graphics/Bitmap;)V

    return-void
.end method
