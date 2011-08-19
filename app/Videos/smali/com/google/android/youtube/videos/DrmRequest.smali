.class public Lcom/google/android/youtube/videos/DrmRequest;
.super Ljava/lang/Object;
.source "DrmRequest.java"


# instance fields
.field public final ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

.field public final offline:Z

.field public final playbackId:Ljava/lang/String;

.field public final sendTimeSinceStarted:Z

.field public final stream:Lcom/google/android/youtube/core/model/Stream;

.field public final unpin:Z

.field public final userAuth:Lcom/google/android/youtube/core/model/UserAuth;

.field public final videoId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/model/Stream;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;ZZLcom/google/android/youtube/videos/DrmManager$Identifiers;)V
    .locals 1
    .parameter "stream"
    .parameter "offline"
    .parameter "videoId"
    .parameter "playbackId"
    .parameter "userAuth"
    .parameter "sendTimeSinceStarted"
    .parameter "unpin"
    .parameter "ids"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    .line 27
    iput-boolean p2, p0, Lcom/google/android/youtube/videos/DrmRequest;->offline:Z

    .line 28
    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/google/android/youtube/videos/DrmRequest;->playbackId:Ljava/lang/String;

    .line 30
    invoke-static {p5}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/UserAuth;

    iput-object v0, p0, Lcom/google/android/youtube/videos/DrmRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 31
    iput-boolean p6, p0, Lcom/google/android/youtube/videos/DrmRequest;->sendTimeSinceStarted:Z

    .line 32
    iput-boolean p7, p0, Lcom/google/android/youtube/videos/DrmRequest;->unpin:Z

    .line 33
    iput-object p8, p0, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    .line 34
    return-void
.end method

.method public static createOfflineRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Z)Lcom/google/android/youtube/videos/DrmRequest;
    .locals 9
    .parameter "stream"
    .parameter "videoId"
    .parameter "userAuth"
    .parameter "sendTimeSinceStarted"

    .prologue
    const/4 v4, 0x0

    .line 43
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    const/4 v2, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-object v8, v4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;ZZLcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method

.method public static createStreamingRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/DrmRequest;
    .locals 9
    .parameter "stream"
    .parameter "videoId"
    .parameter "playbackId"
    .parameter "userAuth"

    .prologue
    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, v2

    move v7, v2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;ZZLcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method

.method public static createUnpinRequest(Lcom/google/android/youtube/core/model/Stream;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/videos/DrmManager$Identifiers;)Lcom/google/android/youtube/videos/DrmRequest;
    .locals 9
    .parameter "stream"
    .parameter "videoId"
    .parameter "userAuth"
    .parameter "ids"

    .prologue
    const/4 v2, 0x1

    .line 48
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move v6, v2

    move v7, v2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;ZZLcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method


# virtual methods
.method public copyWithAuth(Lcom/google/android/youtube/core/model/UserAuth;)Lcom/google/android/youtube/videos/DrmRequest;
    .locals 9
    .parameter "userAuth"

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/youtube/videos/DrmRequest;

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    iget-boolean v2, p0, Lcom/google/android/youtube/videos/DrmRequest;->offline:Z

    iget-object v3, p0, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/videos/DrmRequest;->playbackId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/youtube/videos/DrmRequest;->sendTimeSinceStarted:Z

    iget-boolean v7, p0, Lcom/google/android/youtube/videos/DrmRequest;->unpin:Z

    iget-object v8, p0, Lcom/google/android/youtube/videos/DrmRequest;->ids:Lcom/google/android/youtube/videos/DrmManager$Identifiers;

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/videos/DrmRequest;-><init>(Lcom/google/android/youtube/core/model/Stream;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/model/UserAuth;ZZLcom/google/android/youtube/videos/DrmManager$Identifiers;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ", "

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmRequest;->stream:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/videos/DrmRequest;->offline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/videos/DrmRequest;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
