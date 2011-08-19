.class public Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;
.super Ljava/lang/Object;
.source "UPnPDownloadControllerItem.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public Abort()Z
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_Abort(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)Z

    move-result v0

    return v0
.end method

.method public CanPause()Z
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_CanPause(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)Z

    move-result v0

    return v0
.end method

.method public CanResume()Z
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_CanResume(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)Z

    move-result v0

    return v0
.end method

.method public GetDownloadedSize()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_GetDownloadedSize(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public GetError()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_GetError(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)I

    move-result v0

    return v0
.end method

.method public GetFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_GetFileName(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetFilePathAsCString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_GetFilePathAsCString(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetPercentage()I
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_GetPercentage(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)I

    move-result v0

    return v0
.end method

.method public GetSize()Ljava/math/BigInteger;
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_GetSize(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public GetState()I
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_GetState(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)I

    move-result v0

    return v0
.end method

.method public GetURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_GetURI(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Pause()Z
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_Pause(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)Z

    move-result v0

    return v0
.end method

.method public Release()V
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_Release(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;)V

    .line 78
    return-void
.end method

.method public Start(Z)Z
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerItem_Start(JLcom/awox/jUPnPCP/UPnPDownloadControllerItem;Z)Z

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCMemOwn:Z

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method
