.class public Lcom/awox/jUPnPCP/UPnPUploadControllerItem;
.super Ljava/lang/Object;
.source "UPnPUploadControllerItem.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPUploadControllerItem;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Abort()Z
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_Abort(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)Z

    move-result v0

    return v0
.end method

.method public CanPause()Z
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_CanPause(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)Z

    move-result v0

    return v0
.end method

.method public GetError()Lcom/awox/jUPnPCP/awError;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/awox/jUPnPCP/awError;

    iget-wide v1, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_GetError(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/awError;-><init>(JZ)V

    return-object v0
.end method

.method public GetFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_GetFileName(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetFilePathAsCString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_GetFilePathAsCString(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetPercentage()I
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_GetPercentage(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)I

    move-result v0

    return v0
.end method

.method public GetResumeDelay()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_GetResumeDelay(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetSizeToUpload()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_GetSizeToUpload(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public GetState()I
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_GetState(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)I

    move-result v0

    return v0
.end method

.method public GetStateStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_GetStateStr(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUploadedSize()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_GetUploadedSize(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public Pause()Z
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_Pause(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)Z

    move-result v0

    return v0
.end method

.method public Release()V
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_Release(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)V

    .line 84
    return-void
.end method

.method public Resume()Z
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_Resume(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)Z

    move-result v0

    return v0
.end method

.method public Start()Z
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerItem_Start(JLcom/awox/jUPnPCP/UPnPUploadControllerItem;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 25
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCMemOwn:Z

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 30
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerItem;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method
