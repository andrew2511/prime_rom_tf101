.class public Lcom/asus/dmlib/syncml/dm/DMMmiObserver;
.super Ljava/lang/Object;
.source "DMMmiObserver.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/MmiObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "DMMmiObserver"


# instance fields
.field private mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

.field private mChoiceResult:I

.field private mConfirmationResult:Z

.field private mDisplayResult:Z

.field private mInputResult:Ljava/lang/String;

.field private mIsCancelled:Z

.field private mIsTimeout:Z


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/syncml/message/command/Alert;)V
    .locals 1
    .parameter "alert"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mDisplayResult:Z

    .line 11
    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mIsTimeout:Z

    .line 12
    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mIsCancelled:Z

    .line 20
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    .line 21
    return-void
.end method


# virtual methods
.method public getChoiceResult()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mChoiceResult:I

    return v0
.end method

.method public getConfirmationResult()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mConfirmationResult:Z

    return v0
.end method

.method public getDisplayResult()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mDisplayResult:Z

    return v0
.end method

.method public getInputResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mInputResult:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCancelled()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mIsCancelled:Z

    return v0
.end method

.method public getIsTimeout()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mIsTimeout:Z

    return v0
.end method

.method public notfiyChoicelistSelection(I)V
    .locals 2
    .parameter "paramInt"

    .prologue
    .line 55
    iput p1, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mChoiceResult:I

    .line 56
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCancelEvent()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mIsCancelled:Z

    .line 66
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyConfirmationResult(Z)V
    .locals 2
    .parameter "paramBoolean"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mConfirmationResult:Z

    .line 36
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyInfoMsgClosed()V
    .locals 2

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mDisplayResult:Z

    .line 25
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    monitor-enter v0

    .line 26
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 27
    monitor-exit v0

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyInputResult(Ljava/lang/String;)V
    .locals 2
    .parameter "paramString"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mInputResult:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    monitor-enter v0

    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 48
    monitor-exit v0

    .line 49
    return-void

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyTimeoutEvent()V
    .locals 2

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mIsTimeout:Z

    .line 76
    iget-object v0, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/syncml/dm/DMMmiObserver;->mAlert:Lcom/asus/dmlib/syncml/message/command/Alert;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
