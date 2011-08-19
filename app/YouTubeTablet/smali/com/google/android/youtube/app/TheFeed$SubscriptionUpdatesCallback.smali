.class Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;
.super Ljava/lang/Object;
.source "TheFeed.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/app/TheFeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriptionUpdatesCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Video;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final target:Lcom/google/android/youtube/core/async/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/youtube/app/TheFeed;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/TheFeed;Lcom/google/android/youtube/core/async/Callback;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p2, target:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    iput-object p1, p0, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->this$0:Lcom/google/android/youtube/app/TheFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    .line 140
    return-void
.end method


# virtual methods
.method public onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 165
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 10
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;"
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->this$0:Lcom/google/android/youtube/app/TheFeed;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/TheFeed;->access$000(Lcom/google/android/youtube/app/TheFeed;Lcom/google/android/youtube/core/async/GDataRequest;)Ljava/lang/String;

    move-result-object v8

    .line 144
    .local v8, username:Ljava/lang/String;
    iget-object v1, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->this$0:Lcom/google/android/youtube/app/TheFeed;

    iget-object v2, p0, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    iget-object v3, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/youtube/app/TheFeed;->access$100(Lcom/google/android/youtube/app/TheFeed;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 161
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v1, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/youtube/core/model/Video;

    .line 151
    .local v9, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->this$0:Lcom/google/android/youtube/app/TheFeed;

    invoke-static {v1}, Lcom/google/android/youtube/app/TheFeed;->access$200(Lcom/google/android/youtube/app/TheFeed;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    const v3, 0x7f0d0041

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 153
    .end local v9           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_1
    iget-object v1, p2, Lcom/google/android/youtube/core/model/Page;->nextUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v1, p1, p2}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/myfeed/users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 157
    .local v5, nextUri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/youtube/core/model/Page;

    iget v1, p2, Lcom/google/android/youtube/core/model/Page;->totalResults:I

    iget v2, p2, Lcom/google/android/youtube/core/model/Page;->elementsPerPage:I

    iget v3, p2, Lcom/google/android/youtube/core/model/Page;->startIndex:I

    iget-object v4, p2, Lcom/google/android/youtube/core/model/Page;->previousUri:Landroid/net/Uri;

    iget-object v6, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Page;-><init>(IIILandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    .line 159
    .local v0, lastPage:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;"
    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    invoke-interface {v1, p1, v0}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/TheFeed$SubscriptionUpdatesCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method
