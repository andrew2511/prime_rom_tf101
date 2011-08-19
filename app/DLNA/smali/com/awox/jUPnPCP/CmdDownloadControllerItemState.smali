.class public Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdDownloadControllerItemState.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdDownloadControllerItemStateUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetDownloadControllerItem()Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;
    .locals 4

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDownloadControllerItemState_GetDownloadControllerItem(JLcom/awox/jUPnPCP/CmdDownloadControllerItemState;)J

    move-result-wide v0

    .line 45
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/UPnPDownloadControllerItem;-><init>(JZ)V

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 25
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->swigCMemOwn:Z

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMDownloadControllerItem()Lcom/awox/jUPnPCP/SWIGTYPE_p_awRefT_UPnPDownloadControllerItem_t;
    .locals 4

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDownloadControllerItemState_mDownloadControllerItem_get(JLcom/awox/jUPnPCP/CmdDownloadControllerItemState;)J

    move-result-wide v0

    .line 40
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/SWIGTYPE_p_awRefT_UPnPDownloadControllerItem_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awRefT_UPnPDownloadControllerItem_t;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public setMDownloadControllerItem(Lcom/awox/jUPnPCP/SWIGTYPE_p_awRefT_UPnPDownloadControllerItem_t;)V
    .locals 4
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awRefT_UPnPDownloadControllerItem_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awRefT_UPnPDownloadControllerItem_t;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdDownloadControllerItemState_mDownloadControllerItem_set(JLcom/awox/jUPnPCP/CmdDownloadControllerItemState;J)V

    .line 36
    return-void
.end method
