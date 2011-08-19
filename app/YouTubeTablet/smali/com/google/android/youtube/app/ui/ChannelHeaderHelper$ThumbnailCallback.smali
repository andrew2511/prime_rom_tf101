.class Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;
.super Ljava/lang/Object;
.source "ChannelHeaderHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;
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
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;-><init>(Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;)V

    return-void
.end method


# virtual methods
.method public onError(Landroid/net/Uri;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 141
    const-string v0, "Error retrieving user thumbnail"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->access$200(Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;)V

    .line 143
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    check-cast p1, Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;->onError(Landroid/net/Uri;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "request"
    .parameter "response"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;->this$0:Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;->access$100(Lcom/google/android/youtube/app/ui/ChannelHeaderHelper;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    check-cast p1, Landroid/net/Uri;

    .end local p1
    check-cast p2, Landroid/graphics/Bitmap;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/ChannelHeaderHelper$ThumbnailCallback;->onResponse(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method
