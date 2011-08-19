.class Lcom/google/android/youtube/core/player/SubtitleHelper$1;
.super Ljava/lang/Object;
.source "SubtitleHelper.java"

# interfaces
.implements Lcom/google/android/youtube/core/async/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/SubtitleHelper;->init(Lcom/google/android/youtube/core/model/Video;)V
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
        "Ljava/lang/String;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/SubtitleTrack;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/SubtitleHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$1;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/SubtitleHelper$1;->onError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "request"
    .parameter "exception"

    .prologue
    .line 130
    const-string v0, "error retrieving subtitle tracks"

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$1;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$300(Lcom/google/android/youtube/core/player/SubtitleHelper;)V

    .line 132
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    check-cast p1, Ljava/lang/String;

    .end local p1
    check-cast p2, Ljava/util/List;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/player/SubtitleHelper$1;->onResponse(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .parameter "request"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/SubtitleTrack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/SubtitleTrack;>;"
    const/4 v1, 0x0

    .line 102
    .local v1, needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    const/4 v3, 0x0

    .line 103
    .local v3, source:Lcom/google/android/youtube/core/model/SubtitleTrack;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/model/SubtitleTrack;

    .line 104
    .local v4, track:Lcom/google/android/youtube/core/model/SubtitleTrack;
    iget-object v5, v4, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$1;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v6}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$000(Lcom/google/android/youtube/core/player/SubtitleHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$1;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v6}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$000(Lcom/google/android/youtube/core/player/SubtitleHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 106
    move-object v1, v4

    move-object v2, v1

    .line 113
    .end local v1           #needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    .end local v4           #track:Lcom/google/android/youtube/core/model/SubtitleTrack;
    .local v2, needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    :goto_1
    if-eqz v2, :cond_2

    .line 114
    new-instance v1, Lcom/google/android/youtube/core/model/SubtitleTrack;

    invoke-direct {v1, v2, p1}, Lcom/google/android/youtube/core/model/SubtitleTrack;-><init>(Lcom/google/android/youtube/core/model/SubtitleTrack;Ljava/lang/String;)V

    .line 126
    .end local v2           #needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    .restart local v1       #needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    iget-object v5, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$1;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v5}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$200(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/async/Requester;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$1;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v6}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$100(Lcom/google/android/youtube/core/player/SubtitleHelper;)Lcom/google/android/youtube/core/async/ActivityCallback;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Lcom/google/android/youtube/core/async/Requester;->request(Ljava/lang/Object;Lcom/google/android/youtube/core/async/Callback;)V

    .line 127
    :goto_2
    return-void

    .line 108
    .restart local v4       #track:Lcom/google/android/youtube/core/model/SubtitleTrack;
    :cond_1
    if-nez v3, :cond_0

    const-string v5, "en"

    iget-object v6, v4, Lcom/google/android/youtube/core/model/SubtitleTrack;->languageCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    move-object v3, v4

    goto :goto_0

    .line 123
    .end local v1           #needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    .end local v4           #track:Lcom/google/android/youtube/core/model/SubtitleTrack;
    .restart local v2       #needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/google/android/youtube/core/player/SubtitleHelper$1;->this$0:Lcom/google/android/youtube/core/player/SubtitleHelper;

    invoke-static {v6}, Lcom/google/android/youtube/core/player/SubtitleHelper;->access$000(Lcom/google/android/youtube/core/player/SubtitleHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "en"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    move-object v1, v2

    .line 124
    .end local v2           #needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    .restart local v1       #needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    goto :goto_2

    :cond_3
    move-object v2, v1

    .end local v1           #needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    .restart local v2       #needed:Lcom/google/android/youtube/core/model/SubtitleTrack;
    goto :goto_1
.end method
