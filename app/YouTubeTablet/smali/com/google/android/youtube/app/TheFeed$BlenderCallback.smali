.class Lcom/google/android/youtube/app/TheFeed$BlenderCallback;
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
    name = "BlenderCallback"
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
.field private expectedResponses:I

.field private lastException:Ljava/lang/Exception;

.field private final originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final requestSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final responses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;"
        }
    .end annotation
.end field

.field private final result:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;"
        }
    .end annotation
.end field

.field private final startIndex:I

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
.method public constructor <init>(Lcom/google/android/youtube/app/TheFeed;Lcom/google/android/youtube/core/async/Callback;Lcom/google/android/youtube/core/async/GDataRequest;Ljava/util/HashMap;I)V
    .locals 2
    .parameter
    .parameter
    .parameter "originalRequest"
    .parameter
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/async/Callback",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Lcom/google/android/youtube/core/model/Page",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p2, target:Lcom/google/android/youtube/core/async/Callback;,"Lcom/google/android/youtube/core/async/Callback<Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p4, requestSources:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->this$0:Lcom/google/android/youtube/app/TheFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/Callback;

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    .line 187
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/GDataRequest;

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 188
    invoke-static {p4}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->requestSources:Ljava/util/HashMap;

    .line 189
    iput p5, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->startIndex:I

    .line 190
    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->expectedResponses:I

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->expectedResponses:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->responses:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->result:Ljava/util/ArrayList;

    .line 193
    return-void
.end method

.method private blend(Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, sources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;>;"
    .local p2, destination:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    const/4 v0, 0x0

    .line 235
    .local v0, done:Z
    const/4 v1, 0x0

    .line 236
    .local v1, i:I
    :goto_0
    if-nez v0, :cond_3

    .line 237
    const/4 v0, 0x1

    .line 238
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 239
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 240
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/model/Video;

    .line 241
    .local v4, video:Lcom/google/android/youtube/core/model/Video;
    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 242
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 247
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Video;>;"
    .end local v4           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private maybeRespond()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 211
    iget v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->expectedResponses:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->expectedResponses:I

    .line 212
    iget v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->expectedResponses:I

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->responses:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->result:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->blend(Ljava/util/ArrayList;Ljava/util/List;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->responses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->result:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 216
    iget-object v7, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    iget-object v8, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v0, Lcom/google/android/youtube/core/model/Page;

    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->result:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->result:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->startIndex:I

    iget-object v6, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->result:Ljava/util/ArrayList;

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Page;-><init>(IIILandroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V

    invoke-interface {v7, v8, v0}, Lcom/google/android/youtube/core/async/Callback;->onResponse(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->lastException:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "some feed sources failed"

    iget-object v4, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->lastException:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->target:Lcom/google/android/youtube/core/async/Callback;

    iget-object v1, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->originalRequest:Lcom/google/android/youtube/core/async/GDataRequest;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "all feed sources failed"

    iget-object v4, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->lastException:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/youtube/core/async/Callback;->onError(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    const-string v0, "onError in the feed"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    iput-object p2, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->lastException:Ljava/lang/Exception;

    .line 207
    invoke-direct {p0}, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->maybeRespond()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 205
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
    .line 169
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->onError(Lcom/google/android/youtube/core/async/GDataRequest;Ljava/lang/Exception;)V

    return-void
.end method

.method public declared-synchronized onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V
    .locals 5
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
    .line 196
    .local p2, response:Lcom/google/android/youtube/core/model/Page;,"Lcom/google/android/youtube/core/model/Page<Lcom/google/android/youtube/core/model/Video;>;"
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->requestSources:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 197
    .local v1, sourceId:Ljava/lang/Integer;
    iget-object v3, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Video;

    .line 198
    .local v2, video:Lcom/google/android/youtube/core/model/Video;
    iget-object v3, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->this$0:Lcom/google/android/youtube/app/TheFeed;

    invoke-static {v3}, Lcom/google/android/youtube/app/TheFeed;->access$200(Lcom/google/android/youtube/app/TheFeed;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sourceId:Ljava/lang/Integer;
    .end local v2           #video:Lcom/google/android/youtube/core/model/Video;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 200
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #sourceId:Ljava/lang/Integer;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->responses:Ljava/util/ArrayList;

    iget-object v4, p2, Lcom/google/android/youtube/core/model/Page;->entries:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0}, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->maybeRespond()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    monitor-exit p0

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 169
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    check-cast p2, Lcom/google/android/youtube/core/model/Page;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/TheFeed$BlenderCallback;->onResponse(Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/model/Page;)V

    return-void
.end method
