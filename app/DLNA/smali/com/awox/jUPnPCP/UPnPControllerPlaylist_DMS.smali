.class public Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;
.super Lcom/awox/jUPnPCP/UPnPControllerPlaylist;
.source "UPnPControllerPlaylist_DMS.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGUPnPControllerPlaylist_DMSUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;I)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->getCPtr(Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;)J

    move-result-wide v3

    invoke-static {p3}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v6

    move-object v2, p1

    move-object v5, p2

    move-object v8, p3

    move-object v9, p4

    move/from16 v10, p5

    invoke-static/range {v0 .. v10}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPControllerPlaylist_DMS__SWIG_1(JLcom/awox/jUPnPCP/UPnPStack;JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;-><init>(JZ)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;->getCPtr(Lcom/awox/jUPnPCP/UPnPBrowseCacheModule;)J

    move-result-wide v3

    invoke-static {p3}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v6

    move-object v2, p1

    move-object v5, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v0 .. v11}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPControllerPlaylist_DMS__SWIG_0(JLcom/awox/jUPnPCP/UPnPStack;JLcom/awox/jUPnPCP/UPnPBrowseCacheModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;-><init>(JZ)V

    .line 34
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetContainer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_DMS_GetContainer(JLcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetServerUDN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_DMS_GetServerUDN(JLcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public HandleCompletedUPnPCommand(Lcom/awox/jUPnPCP/UPnPCommand;Lcom/awox/jUPnPCP/SWIGTYPE_p_UPnPCommandCompletedAction;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getCPtr(Lcom/awox/jUPnPCP/UPnPCommand;)J

    move-result-wide v3

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_UPnPCommandCompletedAction;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_UPnPCommandCompletedAction;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPControllerPlaylist_DMS_HandleCompletedUPnPCommand(JLcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;JLcom/awox/jUPnPCP/UPnPCommand;J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;->swigCMemOwn:Z

    .line 28
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPControllerPlaylist_DMS;->swigCPtr:J

    .line 29
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPControllerPlaylist;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
