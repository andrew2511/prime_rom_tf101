.class public final Lcom/google/android/youtube/core/model/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/model/Event$Builder;,
        Lcom/google/android/youtube/core/model/Event$Action;
    }
.end annotation


# instance fields
.field public final action:Lcom/google/android/youtube/core/model/Event$Action;

.field public final subject:Ljava/lang/String;

.field public final target:Ljava/lang/String;

.field public final when:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/youtube/core/model/Event$Action;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0
    .parameter "subject"
    .parameter "action"
    .parameter "target"
    .parameter "when"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    .line 67
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    .line 69
    return-void
.end method


# virtual methods
.method public targetIsChannel()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public targetIsVideo()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/Event$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
