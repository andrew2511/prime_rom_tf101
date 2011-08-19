.class Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$ThumbnailCallback;
.super Ljava/lang/Object;
.source "VideoPagedViewHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;
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
        "Landroid/net/Uri;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 2
    .parameter "uri"
    .parameter "exception"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->access$200(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->setThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 134
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$ThumbnailCallback;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "uri"
    .parameter "response"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->access$200(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->setThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 130
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$ThumbnailCallback;->onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
