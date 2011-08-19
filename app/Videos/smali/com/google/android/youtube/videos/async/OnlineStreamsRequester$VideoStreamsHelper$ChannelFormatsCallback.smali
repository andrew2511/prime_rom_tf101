.class final Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;
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
    name = "ChannelFormatsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/Collection",
        "<",
        "Ljava/lang/Integer;",
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
    .line 114
    iput-object p1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;-><init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to retrieve channel supported formats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 183
    iget-object v0, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v0}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$600(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v1}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$500(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 184
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/util/Collection;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->onResponse(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 12
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, channelFormats:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    const/16 v10, 0xb

    .line 117
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$200(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Page;

    move-result-object v7

    if-nez v7, :cond_0

    .line 118
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$600(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v8}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$500(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v9}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$900(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/lang/Exception;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 121
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 124
    .local v3, now:Ljava/util/Date;
    const/4 v5, 0x0

    .line 125
    .local v5, purchasedVideo:Lcom/google/android/youtube/core/model/Video;
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$200(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Page;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/youtube/core/model/Page;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/model/Purchase;

    .line 126
    .local v4, purchase:Lcom/google/android/youtube/core/model/Purchase;
    iget-object v7, v4, Lcom/google/android/youtube/core/model/Purchase;->status:Lcom/google/android/youtube/core/model/Purchase$Status;

    sget-object v8, Lcom/google/android/youtube/core/model/Purchase$Status;->ACTIVE:Lcom/google/android/youtube/core/model/Purchase$Status;

    if-ne v7, v8, :cond_1

    invoke-virtual {v4, v3}, Lcom/google/android/youtube/core/model/Purchase;->isExpired(Ljava/util/Date;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 129
    iget-object v5, v4, Lcom/google/android/youtube/core/model/Purchase;->purchasedVideo:Lcom/google/android/youtube/core/model/Video;

    .line 130
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v8, v5, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 131
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    iget-boolean v8, v4, Lcom/google/android/youtube/core/model/Purchase;->streamable:Z

    invoke-static {v7, v8}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1076(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;I)Z

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    iget-object v7, v4, Lcom/google/android/youtube/core/model/Purchase;->pricePaid:Lcom/google/android/youtube/core/model/PricingStructure;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/PricingStructure;->formats:Ljava/util/List;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .local v0, allowedFormats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    .line 134
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v10, :cond_2

    .line 136
    iget-object v7, v5, Lcom/google/android/youtube/core/model/Video;->streamUri360p:Landroid/net/Uri;

    if-eqz v7, :cond_1

    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/util/Map;

    move-result-object v7

    sget-object v8, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v9}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video;->streamUri360p:Landroid/net/Uri;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 141
    :cond_2
    iget-object v7, v5, Lcom/google/android/youtube/core/model/Video;->streamUri360p:Landroid/net/Uri;

    if-eqz v7, :cond_3

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 143
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/util/Map;

    move-result-object v7

    sget-object v8, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_360P:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v9}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video;->streamUri360p:Landroid/net/Uri;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    :cond_3
    iget-object v7, v5, Lcom/google/android/youtube/core/model/Video;->streamUri405p:Landroid/net/Uri;

    if-eqz v7, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 147
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/util/Map;

    move-result-object v7

    sget-object v8, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_405P:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v9}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video;->streamUri405p:Landroid/net/Uri;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_4
    iget-object v7, v5, Lcom/google/android/youtube/core/model/Video;->streamUri480p:Landroid/net/Uri;

    if-eqz v7, :cond_5

    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 151
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/util/Map;

    move-result-object v7

    sget-object v8, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_480P:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v9}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video;->streamUri480p:Landroid/net/Uri;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_5
    iget-object v7, v5, Lcom/google/android/youtube/core/model/Video;->streamUri720p:Landroid/net/Uri;

    if-eqz v7, :cond_6

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 155
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/util/Map;

    move-result-object v7

    sget-object v8, Lcom/google/android/youtube/core/model/Stream$Quality;->STREAM_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v9}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video;->streamUri720p:Landroid/net/Uri;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_6
    iget-object v7, v5, Lcom/google/android/youtube/core/model/Video;->downloadUri720p:Landroid/net/Uri;

    if-eqz v7, :cond_1

    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 159
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/util/Map;

    move-result-object v7

    sget-object v8, Lcom/google/android/youtube/core/model/Stream$Quality;->DOWNLOAD_720P:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v9}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video;->downloadUri720p:Landroid/net/Uri;

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 164
    .end local v0           #allowedFormats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #purchase:Lcom/google/android/youtube/core/model/Purchase;
    :cond_7
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 165
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$600(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/async/Callback;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v8}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$500(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/async/GDataRequest;

    move-result-object v8

    new-instance v9, Lcom/google/android/youtube/core/player/MissingStreamException;

    if-nez v5, :cond_8

    const-string v10, "no active purchases"

    :goto_1
    invoke-direct {v9, v10}, Lcom/google/android/youtube/core/player/MissingStreamException;-><init>(Ljava/lang/String;)V

    invoke-interface {v7, v8, v9}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 179
    .end local p0
    :goto_2
    return-void

    .line 165
    .restart local p0
    :cond_8
    const-string v10, "No valid streams"

    goto :goto_1

    .line 170
    :cond_9
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    iget-object v8, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v8}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/util/Map;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1200(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Ljava/util/Map;)Lcom/google/android/youtube/core/model/Stream$Quality;

    move-result-object v1

    .line 171
    .local v1, downloadQuality:Lcom/google/android/youtube/core/model/Stream$Quality;
    if-eqz v1, :cond_a

    .line 172
    new-instance v6, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;

    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-direct {v6, v7, v11}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;-><init>(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$1;)V

    .line 173
    .local v6, streamLengthCallback:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    iget-object v7, v7, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->this$0:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;

    invoke-static {v7}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;->access$1400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v7

    new-instance v8, Lcom/google/android/youtube/videos/StreamLengthRequest;

    iget-object v9, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v9}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$400(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Lcom/google/android/youtube/core/model/Video;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v10}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1100(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/Uri;

    invoke-direct {v8, v9, v1, p0}, Lcom/google/android/youtube/videos/StreamLengthRequest;-><init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Stream$Quality;Landroid/net/Uri;)V

    invoke-interface {v7, v8, v6}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    goto :goto_2

    .line 177
    .end local v6           #streamLengthCallback:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$StreamLengthCallback;
    .restart local p0
    :cond_a
    iget-object v7, p0, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper$ChannelFormatsCallback;->this$1:Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;

    invoke-static {v7, v11}, Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;->access$1500(Lcom/google/android/youtube/videos/async/OnlineStreamsRequester$VideoStreamsHelper;Ljava/lang/Long;)V

    goto :goto_2
.end method
