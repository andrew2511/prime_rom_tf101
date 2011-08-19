.class public Lcom/awox/jUPnPCP/CmdPlaylistInfo;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdPlaylistInfo.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdPlaylistInfoUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdPlaylistInfo;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetEntryInfo()Lcom/awox/jUPnPCP/CDSEntryInfo;
    .locals 4

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdPlaylistInfo_GetEntryInfo(JLcom/awox/jUPnPCP/CmdPlaylistInfo;)J

    move-result-wide v0

    .line 44
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/CDSEntryInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CDSEntryInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public GetResourceInfo()Lcom/awox/jUPnPCP/CDSResourceInfo;
    .locals 4

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdPlaylistInfo_GetResourceInfo(JLcom/awox/jUPnPCP/CmdPlaylistInfo;)J

    move-result-wide v0

    .line 49
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/CDSResourceInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CDSResourceInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public SetEntryInfo(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdPlaylistInfo_SetEntryInfo(JLcom/awox/jUPnPCP/CmdPlaylistInfo;J)V

    .line 54
    return-void
.end method

.method public SetResourceInfo(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)V
    .locals 4
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdPlaylistInfo_SetResourceInfo(JLcom/awox/jUPnPCP/CmdPlaylistInfo;J)V

    .line 58
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 25
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCMemOwn:Z

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMRendererUDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdPlaylistInfo_mRendererUDN_get(JLcom/awox/jUPnPCP/CmdPlaylistInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMTrack()I
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdPlaylistInfo_mTrack_get(JLcom/awox/jUPnPCP/CmdPlaylistInfo;)I

    move-result v0

    return v0
.end method

.method public getMURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdPlaylistInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdPlaylistInfo_mURI_get(JLcom/awox/jUPnPCP/CmdPlaylistInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
