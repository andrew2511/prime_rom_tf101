.class public Lcom/awox/jUPnPCP/UPnPRenderer;
.super Lcom/awox/jUPnPCP/UPnPDeviceBase;
.source "UPnPRenderer.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGUPnPRendererUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPDeviceBase;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPRenderer;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetBestResourceIndex(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    .locals 5
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    iget-wide v1, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v3

    invoke-static {v1, v2, p0, v3, v4}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_GetBestResourceIndex__SWIG_1(JLcom/awox/jUPnPCP/UPnPRenderer;J)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;-><init>(JZ)V

    return-object v0
.end method

.method public GetBestResourceIndex(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Ljava/lang/String;)Lcom/awox/jUPnPCP/BestResourceIndexGetResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 77
    new-instance v6, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;

    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_GetBestResourceIndex__SWIG_0(JLcom/awox/jUPnPCP/UPnPRenderer;JLjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {v6, v0, v1, v2}, Lcom/awox/jUPnPCP/BestResourceIndexGetResult;-><init>(JZ)V

    return-object v6
.end method

.method public GetLatestURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_GetLatestURI(JLcom/awox/jUPnPCP/UPnPRenderer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetNextPlaySpeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_GetNextPlaySpeed(JLcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetPosition()Lcom/awox/jUPnPCP/RendererPosition;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/awox/jUPnPCP/RendererPosition;

    iget-wide v1, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_GetPosition(JLcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/awox/jUPnPCP/RendererPosition;-><init>(JZ)V

    return-object v0
.end method

.method public GetPreviousPlaySpeed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_GetPreviousPlaySpeed(JLcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetSinkProtocolInfo()Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;
    .locals 4

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_GetSinkProtocolInfo(JLcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v0

    .line 53
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awDLNAProtocolInfoList;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public GetSinkProtocolInfoString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_GetSinkProtocolInfoString(JLcom/awox/jUPnPCP/UPnPRenderer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceSubscribe;
    .locals 4

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_SubscribeToEvents(JLcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v0

    .line 64
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDeviceSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public UnSubscribeToEvents()Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;
    .locals 4

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_UnSubscribeToEvents(JLcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v0

    .line 69
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDeviceUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 25
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCMemOwn:Z

    .line 27
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 29
    :cond_0
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMMaxBGMCount()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_mMaxBGMCount_get(JLcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMState()Lcom/awox/jUPnPCP/UPnPRendererState;
    .locals 4

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_mState_get(JLcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v0

    .line 36
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPRendererState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/UPnPRendererState;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getMSupportedTransportPlayModes()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_mSupportedTransportPlayModes_get(JLcom/awox/jUPnPCP/UPnPRenderer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMSupportedTransportPlaySpeeds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPRenderer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPRenderer_mSupportedTransportPlaySpeeds_get(JLcom/awox/jUPnPCP/UPnPRenderer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
