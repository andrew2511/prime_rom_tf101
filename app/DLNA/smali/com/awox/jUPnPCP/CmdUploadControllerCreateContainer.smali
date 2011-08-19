.class public Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;
.super Lcom/awox/jUPnPCP/UPnPCommand;
.source "CmdUploadControllerCreateContainer.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdUploadControllerCreateContainerUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_CmdUploadControllerCreateContainer(JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    .line 53
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 25
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCMemOwn:Z

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPCommand;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMContainerData()Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;
    .locals 4

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdUploadControllerCreateContainer_mContainerData_get(JLcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;)J

    move-result-wide v0

    .line 42
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public getMContainerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdUploadControllerCreateContainer_mContainerName_get(JLcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMCreateClassList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdUploadControllerCreateContainer_mCreateClassList_get(JLcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMDLNAManagedFlags()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdUploadControllerCreateContainer_mDLNAManagedFlags_get(JLcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMObjectID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdUploadControllerCreateContainer_mObjectID_get(JLcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMParentID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdUploadControllerCreateContainer_mParentID_get(JLcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
