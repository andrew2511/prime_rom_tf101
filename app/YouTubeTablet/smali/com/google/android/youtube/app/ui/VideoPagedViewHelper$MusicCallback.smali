.class Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$MusicCallback;
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
    name = "MusicCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/async/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/MusicVideo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$MusicCallback;->this$0:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$MusicCallback;-><init>(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$MusicCallback;->onError(Ljava/util/List;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/util/List;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter "exception"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, request:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "MusicVideosRequester failed"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 143
    check-cast p1, Ljava/util/List;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$MusicCallback;->onResponse(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/MusicVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, request:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/MusicVideo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/MusicVideo;

    .line 150
    .local v1, video:Lcom/google/android/youtube/core/model/MusicVideo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is a music video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper$MusicCallback;->this$0:Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;

    invoke-static {v2}, Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;->access$200(Lcom/google/android/youtube/app/ui/VideoPagedViewHelper;)Lcom/google/android/youtube/app/adapter/VideoListAdapter;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/youtube/core/model/MusicVideo;->videoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/youtube/app/adapter/VideoListAdapter;->setIsMusicVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v1           #video:Lcom/google/android/youtube/core/model/MusicVideo;
    :cond_0
    return-void
.end method
