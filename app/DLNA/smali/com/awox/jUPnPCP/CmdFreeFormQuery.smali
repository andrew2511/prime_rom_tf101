.class public Lcom/awox/jUPnPCP/CmdFreeFormQuery;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdFreeFormQuery.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdFreeFormQueryUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdFreeFormQuery__SWIG_1(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdFreeFormQuery;-><init>(JZ)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdFreeFormQuery__SWIG_0(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdFreeFormQuery;-><init>(JZ)V

    .line 54
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdFreeFormQuery;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCMemOwn:Z

    .line 31
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_CmdFreeFormQuery(J)V

    .line 33
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCPtr:J

    .line 35
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->delete()V

    .line 25
    return-void
.end method

.method public getMCDSView()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdFreeFormQuery_mCDSView_get(JLcom/awox/jUPnPCP/CmdFreeFormQuery;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMContainerID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdFreeFormQuery_mContainerID_get(JLcom/awox/jUPnPCP/CmdFreeFormQuery;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdFreeFormQuery_mQuery_get(JLcom/awox/jUPnPCP/CmdFreeFormQuery;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMResponse()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdFreeFormQuery_mResponse_get(JLcom/awox/jUPnPCP/CmdFreeFormQuery;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMSystemUpdateID()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdFreeFormQuery;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdFreeFormQuery_mSystemUpdateID_get(JLcom/awox/jUPnPCP/CmdFreeFormQuery;)J

    move-result-wide v0

    return-wide v0
.end method
