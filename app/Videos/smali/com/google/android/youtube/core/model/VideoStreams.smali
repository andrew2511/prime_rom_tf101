.class public Lcom/google/android/youtube/core/model/VideoStreams;
.super Ljava/lang/Object;
.source "VideoStreams.java"


# instance fields
.field public final download:Lcom/google/android/youtube/core/model/Stream;

.field public final hi:Lcom/google/android/youtube/core/model/Stream;

.field public final lo:Lcom/google/android/youtube/core/model/Stream;

.field public final streamingAllowed:Z

.field public final supportsQualityToggle:Z


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;)V
    .locals 0
    .parameter "hi"
    .parameter "lo"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p1}, Lcom/google/android/youtube/core/model/VideoStreams;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;)V
    .locals 1
    .parameter "hi"
    .parameter "lo"
    .parameter "download"

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/core/model/VideoStreams;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;Z)V
    .locals 4
    .parameter "hi"
    .parameter "lo"
    .parameter "download"
    .parameter "streamingAllowed"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p1, :cond_1

    .line 24
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    .line 25
    iput-object p2, p0, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    .line 30
    :goto_0
    if-eqz p3, :cond_3

    move-object v0, p3

    :goto_1
    iput-object v0, p0, Lcom/google/android/youtube/core/model/VideoStreams;->download:Lcom/google/android/youtube/core/model/Stream;

    .line 31
    iput-boolean p4, p0, Lcom/google/android/youtube/core/model/VideoStreams;->streamingAllowed:Z

    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Stream;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    if-eq v0, v1, :cond_4

    :cond_0
    move v0, v3

    :goto_2
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    if-eq v0, v1, :cond_5

    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    .line 35
    return-void

    .line 27
    :cond_1
    iput-object p1, p0, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    .line 28
    if-eqz p2, :cond_2

    move-object v0, p2

    :goto_4
    iput-object v0, p0, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_4

    .line 30
    :cond_3
    iget-object v0, p0, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    goto :goto_1

    :cond_4
    move v0, v2

    .line 33
    goto :goto_2

    :cond_5
    move v0, v2

    .line 34
    goto :goto_3
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/model/Stream;Z)V
    .locals 0
    .parameter "stream"
    .parameter "streamingAllowed"

    .prologue
    .line 46
    invoke-direct {p0, p1, p1, p1, p2}, Lcom/google/android/youtube/core/model/VideoStreams;-><init>(Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;Lcom/google/android/youtube/core/model/Stream;Z)V

    .line 47
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, ", "

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[hi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VideoStreams;->hi:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "lo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VideoStreams;->lo:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "download="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/VideoStreams;->download:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "supportsQualityToggle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/youtube/core/model/VideoStreams;->supportsQualityToggle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
