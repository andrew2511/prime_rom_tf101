.class Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;
.super Ljava/lang/Object;
.source "DownloadContentCommand.java"

# interfaces
.implements Lcom/amazon/foundation/IStatusTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadContentStatusTracker"
.end annotation


# static fields
.field private static final MIN_PROGRESS_REPORT_INTERVAL_MILLIS:J = 0xfaL


# instance fields
.field private delegate:Lcom/amazon/foundation/IStatusTracker;

.field private lastProgressUpdate:J

.field private latestErrorState:Ljava/lang/String;

.field private latestErrorSubstate:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;Lcom/amazon/foundation/IStatusTracker;)V
    .locals 2
    .parameter
    .parameter "delegate"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->lastProgressUpdate:J

    .line 168
    return-void
.end method


# virtual methods
.method public getLatestErrorState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->latestErrorState:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestErrorSubstate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->latestErrorSubstate:Ljava/lang/String;

    return-object v0
.end method

.method public reportCurrentProgress(J)V
    .locals 6
    .parameter

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 180
    iget-wide v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->lastProgressUpdate:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v2}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$000(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 184
    :cond_0
    iput-wide v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->lastProgressUpdate:J

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v0}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$000(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    iget-object v1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v1}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$100(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)J

    move-result-wide v1

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Lcom/amazon/foundation/IStatusTracker;->reportCurrentProgress(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 210
    sget-object v0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->DOWNLOAD_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iput-object p1, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->latestErrorState:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->latestErrorSubstate:Ljava/lang/String;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0, p1, p2}, Lcom/amazon/foundation/IStatusTracker;->reportState(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->latestErrorState:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->latestErrorSubstate:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v0}, Lcom/amazon/foundation/IStatusTracker;->reset()V

    .line 223
    return-void
.end method

.method public setMaxProgress(J)V
    .locals 0
    .parameter "max"

    .prologue
    .line 205
    return-void
.end method

.method public updateMaxProgress()V
    .locals 4

    .prologue
    .line 230
    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->this$0:Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;

    invoke-static {v2}, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;->access$000(Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand;)J

    move-result-wide v0

    .line 231
    .local v0, max:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/amazon/kcp/store/internal/commands/DownloadContentCommand$DownloadContentStatusTracker;->delegate:Lcom/amazon/foundation/IStatusTracker;

    invoke-interface {v2, v0, v1}, Lcom/amazon/foundation/IStatusTracker;->setMaxProgress(J)V

    .line 235
    :cond_0
    return-void
.end method
