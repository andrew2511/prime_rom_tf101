.class Lcom/amazon/kcp/application/DownloadStatus$1;
.super Ljava/lang/Object;
.source "DownloadStatus.java"

# interfaces
.implements Lcom/amazon/foundation/IStatusTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/DownloadStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private maxProgress:J

.field final synthetic this$0:Lcom/amazon/kcp/application/DownloadStatus;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/DownloadStatus;)V
    .locals 2
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/application/DownloadStatus$1;->this$0:Lcom/amazon/kcp/application/DownloadStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/amazon/kcp/application/DownloadStatus$1;->maxProgress:J

    return-void
.end method


# virtual methods
.method public reportCurrentProgress(J)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reporting progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    iget-wide v0, p0, Lcom/amazon/kcp/application/DownloadStatus$1;->maxProgress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/application/DownloadStatus$1;->this$0:Lcom/amazon/kcp/application/DownloadStatus;

    long-to-float v1, p1

    const/high16 v2, 0x3f80

    mul-float/2addr v1, v2

    iget-wide v2, p0, Lcom/amazon/kcp/application/DownloadStatus$1;->maxProgress:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/DownloadStatus;->access$002(Lcom/amazon/kcp/application/DownloadStatus;F)F

    .line 36
    :cond_0
    return-void
.end method

.method public reportState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 49
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public setMaxProgress(J)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set max progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    iput-wide p1, p0, Lcom/amazon/kcp/application/DownloadStatus$1;->maxProgress:J

    .line 43
    return-void
.end method
