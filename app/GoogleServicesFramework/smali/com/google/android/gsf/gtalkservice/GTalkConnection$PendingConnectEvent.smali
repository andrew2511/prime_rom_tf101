.class Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;
.super Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;
.source "GTalkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/GTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingConnectEvent"
.end annotation


# instance fields
.field private mBroadcastNetworkState:I

.field private mBroadcastNetworkType:I

.field private mError:I

.field private mNetworkAvailable:Z

.field private mReconnectDelta:J


# direct methods
.method constructor <init>(IILandroid/net/NetworkInfo$State;IZJ)V
    .locals 4
    .parameter "state"
    .parameter "err"
    .parameter "netState"
    .parameter "networkType"
    .parameter "netAvailable"
    .parameter "nextReconTime"

    .prologue
    .line 2487
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;-><init>(I)V

    .line 2489
    iput p2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mError:I

    .line 2490
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v0, p6, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mReconnectDelta:J

    .line 2491
    iput-boolean p5, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mNetworkAvailable:Z

    .line 2493
    if-nez p3, :cond_0

    .line 2494
    sget-object p3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    .line 2496
    :cond_0
    invoke-virtual {p3}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mBroadcastNetworkState:I

    .line 2497
    iput p4, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mBroadcastNetworkType:I

    .line 2498
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "out"

    .prologue
    .line 2502
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;->dump(Ljava/io/PrintWriter;)V

    .line 2503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mError:I

    invoke-static {v1}, Lcom/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", netAvail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mNetworkAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", netstateBC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mBroadcastNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mBroadcastNetworkState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    iget-wide v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mReconnectDelta:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", recon in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$PendingConnectEvent;->mReconnectDelta:J

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2510
    :cond_0
    return-void
.end method
