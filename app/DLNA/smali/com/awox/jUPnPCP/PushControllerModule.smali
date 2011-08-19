.class public Lcom/awox/jUPnPCP/PushControllerModule;
.super Lcom/awox/jUPnPCP/UPnPControlPointModule;
.source "PushControllerModule.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGPushControllerModuleUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPControlPointModule;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Lcom/awox/jUPnPCP/SWIGTYPE_p_awStreamingEngine;Lcom/awox/jUPnPCP/awMediaParserManager;Ljava/lang/String;JLjava/lang/String;)V
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

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awStreamingEngine;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awStreamingEngine;)J

    move-result-wide v3

    invoke-static {p3}, Lcom/awox/jUPnPCP/awMediaParserManager;->getCPtr(Lcom/awox/jUPnPCP/awMediaParserManager;)J

    move-result-wide v5

    move-object v2, p1

    move-object v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    move-object/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_PushControllerModule(JLcom/awox/jUPnPCP/UPnPStack;JJLcom/awox/jUPnPCP/awMediaParserManager;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/PushControllerModule;-><init>(JZ)V

    .line 34
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/PushControllerModule;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public AddAlbumArt(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getCPtr(Lcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v3

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v7

    invoke-static {p4}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerModule_AddAlbumArt__SWIG_1(JLcom/awox/jUPnPCP/PushControllerModule;JLcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public AddAlbumArt(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_int;)Ljava/lang/String;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getCPtr(Lcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v3

    invoke-static/range {p3 .. p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v7

    invoke-static/range {p4 .. p4}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v9

    invoke-static/range {p5 .. p5}, Lcom/awox/jUPnPCP/SWIGTYPE_p_int;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_int;)J

    move-result-wide v11

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v12}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerModule_AddAlbumArt__SWIG_0(JLcom/awox/jUPnPCP/PushControllerModule;JLcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public AddThumbnail(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getCPtr(Lcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v3

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v7

    invoke-static {p4}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v9

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v10}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerModule_AddThumbnail__SWIG_1(JLcom/awox/jUPnPCP/PushControllerModule;JLcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public AddThumbnail(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;Lcom/awox/jUPnPCP/SWIGTYPE_p_int;)Ljava/lang/String;
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getCPtr(Lcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v3

    invoke-static/range {p3 .. p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v7

    invoke-static/range {p4 .. p4}, Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_awPackedData_t;)J

    move-result-wide v9

    invoke-static/range {p5 .. p5}, Lcom/awox/jUPnPCP/SWIGTYPE_p_int;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_int;)J

    move-result-wide v11

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v12}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerModule_AddThumbnail__SWIG_0(JLcom/awox/jUPnPCP/PushControllerModule;JLcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetURI(Lcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;)Lcom/awox/jUPnPCP/PushControllerGetResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPRenderer;->getCPtr(Lcom/awox/jUPnPCP/UPnPRenderer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->PushControllerModule_GetURI(JLcom/awox/jUPnPCP/PushControllerModule;JLcom/awox/jUPnPCP/UPnPRenderer;Ljava/lang/String;)J

    move-result-wide v0

    .line 46
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/PushControllerGetResult;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/PushControllerGetResult;-><init>(JZ)V

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
    iget-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCMemOwn:Z

    .line 28
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/PushControllerModule;->swigCPtr:J

    .line 29
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPControlPointModule;->delete()V
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
