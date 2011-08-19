.class final Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;
.super Ljava/lang/Object;
.source "OnlineStreamsRequester.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyPurchasesCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;-><init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to retrieve purchases: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v0, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$902(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Ljava/lang/Exception;)Ljava/lang/Exception;

    .line 111
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 7
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Purchase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Purchase;>;"
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v2, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$202(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Lcom/google/android/youtube/core/model/Page;)Lcom/google/android/youtube/core/model/Page;

    .line 94
    invoke-virtual {p2}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase;

    .line 95
    .local v1, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v2, v1, Lcom/google/android/youtube/core/model/Purchase;->itemType:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    sget-object v3, Lcom/google/android/youtube/core/model/Purchase$ItemType;->MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v3}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$300(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    iget-object v3, v1, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-static {v2, v3}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$402(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Video;

    .line 101
    .end local v1           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v2

    if-nez v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$600(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v3}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$500(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v3

    new-instance v4, Lcom/google/android/youtube/core/player/MissingStreamException;

    const-string v5, "video not found"

    invoke-direct {v4, v5}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    iget-object v2, v2, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->this$0:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;

    invoke-static {v2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->access$800(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v3}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/youtube/core/model/Video;->owner:Ljava/lang/String;

    new-instance v4, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;

    iget-object v5, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;-><init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$1;)V

    invoke-interface {v2, v3, v4}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$MyPurchasesCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method
