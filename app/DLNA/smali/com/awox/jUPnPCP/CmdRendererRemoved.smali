.class public Lcom/awox/jUPnPCP/CmdRendererRemoved;
.super Lcom/awox/jUPnPCP/CmdDeviceRemoved;
.source "CmdRendererRemoved.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGCmdRendererRemovedUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/CmdDeviceRemoved;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/CmdRendererRemoved;->swigCPtr:J

    .line 17
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/CmdRendererRemoved;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererRemoved;->swigCPtr:J

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererRemoved;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 25
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/CmdRendererRemoved;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/CmdRendererRemoved;->swigCMemOwn:Z

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
    iput-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererRemoved;->swigCPtr:J

    .line 31
    :cond_1
    invoke-super {p0}, Lcom/awox/jUPnPCP/CmdDeviceRemoved;->delete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    monitor-exit p0

    return-void
.end method

.method public getMMediaRenderer()Lcom/awox/jUPnPCP/UPnPRenderer;
    .locals 4

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererRemoved;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdRendererRemoved_mMediaRenderer_get(JLcom/awox/jUPnPCP/CmdRendererRemoved;)J

    move-result-wide v0

    .line 40
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPRenderer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/UPnPRenderer;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public setMMediaRenderer(Lcom/awox/jUPnPCP/UPnPRenderer;)V
    .locals 6
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/awox/jUPnPCP/CmdRendererRemoved;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getCPtr(Lcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->CmdRendererRemoved_mMediaRenderer_set(JLcom/awox/jUPnPCP/CmdRendererRemoved;JLcom/awox/jUPnPCP/UPnPRenderer;)V

    .line 36
    return-void
.end method
