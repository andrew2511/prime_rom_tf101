.class Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->onPurchase(Lcom/google/android/youtube/core/model/Purchase;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/VideoStreams;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

.field final synthetic val$video:Lcom/google/android/youtube/core/model/Video;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Lcom/google/android/youtube/core/model/Video;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    iput-object p2, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->val$video:Lcom/google/android/youtube/core/model/Video;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to get streams for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;)V
    .locals 4
    .parameter "request"
    .parameter "response"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$200(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->val$video:Lcom/google/android/youtube/core/model/Video;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/google/android/youtube/core/model/VideoStreams;->download:Lcom/google/android/youtube/core/model/Stream;

    iget-wide v2, v2, Lcom/google/android/youtube/core/model/Stream;->sizeInBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$300(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V

    .line 288
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/VideoStreams;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$3;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/VideoStreams;)V

    return-void
.end method
