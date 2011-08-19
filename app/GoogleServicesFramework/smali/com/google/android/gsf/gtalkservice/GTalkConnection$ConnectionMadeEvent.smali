.class Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;
.super Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;
.source "GTalkConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/GTalkConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionMadeEvent"
.end annotation


# instance fields
.field private mHostIpAddress:Ljava/lang/String;

.field private mPresenceIsAvailable:Z

.field private mPresenceIsInvisible:Z

.field private mPresenceShow:I


# direct methods
.method constructor <init>(ILcom/google/android/gtalkservice/Presence;Ljava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "presence"
    .parameter "ipAddress"

    .prologue
    .line 2521
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;-><init>(I)V

    .line 2523
    invoke-virtual {p2}, Lcom/google/android/gtalkservice/Presence;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mPresenceIsAvailable:Z

    .line 2524
    invoke-virtual {p2}, Lcom/google/android/gtalkservice/Presence;->isInvisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mPresenceIsInvisible:Z

    .line 2525
    invoke-virtual {p2}, Lcom/google/android/gtalkservice/Presence;->getShow()Lcom/google/android/gtalkservice/Presence$Show;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mPresenceShow:I

    .line 2526
    iput-object p3, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mHostIpAddress:Ljava/lang/String;

    .line 2527
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 2531
    invoke-super {p0, p1}, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionStateEvent;->dump(Ljava/io/PrintWriter;)V

    .line 2535
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mPresenceIsAvailable:Z

    if-nez v1, :cond_1

    .line 2536
    const-string v0, "UNAVAILABLE"

    .line 2550
    .local v0, presenceStr:Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2552
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mHostIpAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", host="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mHostIpAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2555
    :cond_0
    return-void

    .line 2537
    .end local v0           #presenceStr:Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mPresenceIsInvisible:Z

    if-eqz v1, :cond_2

    .line 2538
    const-string v0, "INVISIBLE"

    .restart local v0       #presenceStr:Ljava/lang/String;
    goto :goto_0

    .line 2540
    .end local v0           #presenceStr:Ljava/lang/String;
    :cond_2
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mPresenceShow:I

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->NONE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mPresenceShow:I

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->AVAILABLE:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 2542
    :cond_3
    const-string v0, "AVAILABLE"

    .restart local v0       #presenceStr:Ljava/lang/String;
    goto :goto_0

    .line 2543
    .end local v0           #presenceStr:Ljava/lang/String;
    :cond_4
    iget v1, p0, Lcom/google/android/gsf/gtalkservice/GTalkConnection$ConnectionMadeEvent;->mPresenceShow:I

    sget-object v2, Lcom/google/android/gtalkservice/Presence$Show;->DND:Lcom/google/android/gtalkservice/Presence$Show;

    invoke-virtual {v2}, Lcom/google/android/gtalkservice/Presence$Show;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 2544
    const-string v0, "DND"

    .restart local v0       #presenceStr:Ljava/lang/String;
    goto :goto_0

    .line 2546
    .end local v0           #presenceStr:Ljava/lang/String;
    :cond_5
    const-string v0, "AWAY"

    .restart local v0       #presenceStr:Ljava/lang/String;
    goto :goto_0
.end method
