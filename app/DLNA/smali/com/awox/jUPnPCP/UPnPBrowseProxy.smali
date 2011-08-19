.class public Lcom/awox/jUPnPCP/UPnPBrowseProxy;
.super Ljava/lang/Object;
.source "UPnPBrowseProxy.java"


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
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    .line 18
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPBrowseProxy;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AddActionID(J)Z
    .locals 2
    .parameter

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_AddActionID__SWIG_1(JLcom/awox/jUPnPCP/UPnPBrowseProxy;J)Z

    move-result v0

    return v0
.end method

.method public AddActionID(JLcom/awox/jUPnPCP/SWIGTYPE_p_void;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)J

    move-result-wide v5

    move-object v2, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_AddActionID__SWIG_0(JLcom/awox/jUPnPCP/UPnPBrowseProxy;JJ)Z

    move-result v0

    return v0
.end method

.method public GetContainerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_GetContainerID(JLcom/awox/jUPnPCP/UPnPBrowseProxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetError()I
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_GetError(JLcom/awox/jUPnPCP/UPnPBrowseProxy;)I

    move-result v0

    return v0
.end method

.method public GetNextActionID()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_GetNextActionID__SWIG_1(JLcom/awox/jUPnPCP/UPnPBrowseProxy;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetNextActionID(Lcom/awox/jUPnPCP/SWIGTYPE_p_p_void;)J
    .locals 4
    .parameter

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_p_void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_GetNextActionID__SWIG_0(JLcom/awox/jUPnPCP/UPnPBrowseProxy;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetSearchCriteria()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_GetSearchCriteria(JLcom/awox/jUPnPCP/UPnPBrowseProxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetServerUDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_GetServerUDN(JLcom/awox/jUPnPCP/UPnPBrowseProxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetUniqueID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_GetUniqueID(JLcom/awox/jUPnPCP/UPnPBrowseProxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IsMetaData()Z
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_IsMetaData(JLcom/awox/jUPnPCP/UPnPBrowseProxy;)Z

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 26
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCMemOwn:Z

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getMID()J
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_mID_get(JLcom/awox/jUPnPCP/UPnPBrowseProxy;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMID(J)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPBrowseProxy;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPBrowseProxy_mID_set(JLcom/awox/jUPnPCP/UPnPBrowseProxy;J)V

    .line 68
    return-void
.end method
