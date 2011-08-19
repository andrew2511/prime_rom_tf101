.class public Lcom/awox/jUPnPCP/UPnPUploadControllerModule;
.super Lcom/awox/jUPnPCP/UPnPControlPointModule;
.source "UPnPUploadControllerModule.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGUPnPUploadControllerModuleUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPControlPointModule;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;)V
    .locals 3
    .parameter

    .prologue
    .line 45
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPUploadControllerModule__SWIG_2(JLcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;-><init>(JZ)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Lcom/awox/jUPnPCP/awMediaParserManager;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jUPnPCP/awMediaParserManager;->getCPtr(Lcom/awox/jUPnPCP/awMediaParserManager;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPUploadControllerModule__SWIG_1(JLcom/awox/jUPnPCP/UPnPStack;JLcom/awox/jUPnPCP/awMediaParserManager;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;-><init>(JZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Lcom/awox/jUPnPCP/awMediaParserManager;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jUPnPCP/awMediaParserManager;->getCPtr(Lcom/awox/jUPnPCP/awMediaParserManager;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPUploadControllerModule__SWIG_0(JLcom/awox/jUPnPCP/UPnPStack;JLcom/awox/jUPnPCP/awMediaParserManager;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;-><init>(JZ)V

    .line 38
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPUploadControllerModule;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public CreateChildContainer(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 449
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerModule_CreateChildContainer__SWIG_3(JLcom/awox/jUPnPCP/UPnPUploadControllerModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)J

    move-result-wide v0

    .line 451
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 452
    const/4 v0, 0x0

    .line 545
    :goto_0
    return-object v0

    .line 454
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 457
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 458
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 460
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 461
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 462
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 463
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 464
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 465
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 466
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 467
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 468
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 469
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 470
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 471
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 472
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 473
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 474
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 475
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 476
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 477
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 478
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 479
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 480
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 481
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 482
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 483
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 484
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 485
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 486
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 489
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 490
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 491
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 492
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 493
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 494
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 495
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 496
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 497
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 498
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 499
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 500
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 501
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 502
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 503
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 504
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 505
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 506
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 507
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 508
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 509
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 510
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 511
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 512
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 513
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 514
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 515
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 516
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 517
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 518
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 519
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 520
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 521
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 522
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 523
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 524
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 527
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 528
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 529
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 530
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 531
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 532
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 533
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 534
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 535
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 536
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 537
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 538
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 539
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 540
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 541
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 542
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 543
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 544
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 545
    goto/16 :goto_0
.end method

.method public CreateChildContainer(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;J)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 349
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerModule_CreateChildContainer__SWIG_2(JLcom/awox/jUPnPCP/UPnPUploadControllerModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;J)J

    move-result-wide v0

    .line 351
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 352
    const/4 v0, 0x0

    .line 445
    :goto_0
    return-object v0

    .line 354
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 357
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 358
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 360
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 362
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 364
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 365
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 366
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 367
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 368
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 369
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 370
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 371
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 372
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 373
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 374
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 375
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 376
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 377
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 378
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 379
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 380
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 381
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 382
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 383
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 384
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 385
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 386
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 389
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 390
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 391
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 392
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 393
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 394
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 395
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 396
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 397
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 398
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 399
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 400
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 401
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 402
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 403
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 404
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 405
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 406
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 407
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 408
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 409
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 410
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 411
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 412
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 413
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 414
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 415
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 416
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 417
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 418
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 419
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 420
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 421
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 422
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 423
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 424
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 427
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 428
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 429
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 430
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 431
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 432
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 433
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 434
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 435
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 436
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 437
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 438
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 439
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 440
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 441
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 442
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 443
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 444
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 445
    goto/16 :goto_0
.end method

.method public CreateChildContainer(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JLjava/lang/String;)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerModule_CreateChildContainer__SWIG_1(JLcom/awox/jUPnPCP/UPnPUploadControllerModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v0

    .line 251
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 252
    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    .line 254
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 257
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 258
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 260
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 262
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 263
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 264
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 265
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 266
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 267
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 268
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 269
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 270
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 271
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 272
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 273
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 274
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 275
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 276
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 277
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 278
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 279
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 280
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 281
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 282
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 283
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 284
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 285
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 286
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 289
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 290
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 291
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 292
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 293
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 294
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 295
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 296
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 297
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 298
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 299
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 300
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 301
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 302
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 303
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 304
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 305
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 306
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 307
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 308
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 309
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 310
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 311
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 312
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 313
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 314
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 315
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 316
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 317
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 318
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 319
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 320
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 321
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 322
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 323
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 324
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 327
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 328
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 329
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 330
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 331
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 332
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 333
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 334
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 335
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 336
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 337
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 338
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 339
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 340
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 341
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 342
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 343
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 344
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 345
    goto/16 :goto_0
.end method

.method public CreateChildContainer(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerModule_CreateChildContainer__SWIG_0(JLcom/awox/jUPnPCP/UPnPUploadControllerModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 151
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 154
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 157
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 158
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 160
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 162
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 163
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 164
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 165
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 166
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 167
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 168
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 169
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 170
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 171
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 172
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 173
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 174
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 175
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 176
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 177
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 178
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 179
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 180
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 181
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 182
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 183
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 184
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 185
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 186
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 189
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 190
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 191
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 192
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 193
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 194
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 195
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 196
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 197
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 198
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 199
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 200
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 201
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 202
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 203
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 204
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 205
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 206
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 207
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 208
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 209
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 210
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 211
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 212
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 213
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 214
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 215
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 216
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 217
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 218
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 219
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 220
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 221
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 222
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 223
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 224
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 227
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 228
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 229
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 230
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 231
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 232
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 233
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 234
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 235
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 236
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 237
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 238
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 239
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 240
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 241
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 242
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 243
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 244
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 245
    goto/16 :goto_0
.end method

.method public CreateChildItem(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 849
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerModule_CreateChildItem__SWIG_3(JLcom/awox/jUPnPCP/UPnPUploadControllerModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)J

    move-result-wide v0

    .line 851
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 852
    const/4 v0, 0x0

    .line 945
    :goto_0
    return-object v0

    .line 854
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 857
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 858
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 859
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 860
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 861
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 862
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 863
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 864
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 865
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 866
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 867
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 868
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 869
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 870
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 871
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 872
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 873
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 874
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 875
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 876
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 877
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 878
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 879
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 880
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 881
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 882
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 883
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 884
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 885
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 886
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 889
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 890
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 891
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 892
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 893
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 894
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 895
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 896
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 897
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 898
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 899
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 900
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 901
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 902
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 903
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 904
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 905
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 906
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 907
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 908
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 909
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 910
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 911
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 912
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 913
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 914
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 915
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 916
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 917
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 918
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 919
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 920
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 921
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 922
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 923
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 924
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 927
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 928
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 929
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 930
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 931
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 932
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 933
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 934
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 935
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 936
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 937
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 938
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 939
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 940
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 941
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 942
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 943
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 944
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 945
    goto/16 :goto_0
.end method

.method public CreateChildItem(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;J)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 749
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-static/range {v0 .. v8}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerModule_CreateChildItem__SWIG_2(JLcom/awox/jUPnPCP/UPnPUploadControllerModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;J)J

    move-result-wide v0

    .line 751
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 752
    const/4 v0, 0x0

    .line 845
    :goto_0
    return-object v0

    .line 754
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 757
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 758
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 759
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 760
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 761
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 762
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 763
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 764
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 765
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 766
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 767
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 768
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 769
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 770
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 771
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 772
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 773
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 774
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 775
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 776
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 777
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 778
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 779
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 780
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 781
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 782
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 783
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 784
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 785
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 786
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 789
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 790
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 791
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 792
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 793
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 794
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 795
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 796
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 797
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 798
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 799
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 800
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 801
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 802
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 803
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 804
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 805
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 806
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 807
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 808
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 809
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 810
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 811
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 812
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 813
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 814
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 815
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 816
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 817
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 818
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 819
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 820
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 821
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 822
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 823
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 824
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 827
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 828
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 829
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 830
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 831
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 832
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 833
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 834
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 835
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 836
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 837
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 838
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 839
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 840
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 841
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 842
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 843
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 844
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 845
    goto/16 :goto_0
.end method

.method public CreateChildItem(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JLjava/lang/String;)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 649
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerModule_CreateChildItem__SWIG_1(JLcom/awox/jUPnPCP/UPnPUploadControllerModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JLjava/lang/String;)J

    move-result-wide v0

    .line 651
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 652
    const/4 v0, 0x0

    .line 745
    :goto_0
    return-object v0

    .line 654
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 657
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 658
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 660
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 661
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 662
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 663
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 664
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 665
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 666
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 667
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 668
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 669
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 670
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 671
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 672
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 673
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 674
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 675
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 676
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 677
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 678
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 679
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 680
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 681
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 682
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 683
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 684
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 685
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 686
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 689
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 690
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 691
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 692
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 693
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 694
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 695
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 696
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 697
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 698
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 699
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 700
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 701
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 702
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 703
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 704
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 705
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 706
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 707
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 708
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 709
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 710
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 711
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 712
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 713
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 714
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 715
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 716
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 717
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 718
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 719
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 720
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 721
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 722
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 723
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 724
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 727
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 728
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 729
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 730
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 731
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 732
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 733
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 734
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 735
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 736
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 737
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 738
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 739
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 740
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 741
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 742
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 743
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 744
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 745
    goto/16 :goto_0
.end method

.method public CreateChildItem(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 549
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-wide v7, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerModule_CreateChildItem__SWIG_0(JLcom/awox/jUPnPCP/UPnPUploadControllerModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 551
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 552
    const/4 v0, 0x0

    .line 645
    :goto_0
    return-object v0

    .line 554
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 557
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 558
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 560
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 561
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 562
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 563
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 564
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 565
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 566
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 567
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 568
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 569
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 570
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 571
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 572
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 573
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 574
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 575
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 576
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 577
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 578
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 579
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 580
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 581
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 582
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 583
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 584
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 585
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 586
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 589
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 590
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 591
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 592
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 593
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 594
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 595
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 596
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 597
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 598
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 599
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 600
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 601
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 602
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 603
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 604
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 605
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 606
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 607
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 608
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 609
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 610
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 611
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 612
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 613
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 614
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 615
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 616
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 617
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 618
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 619
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 620
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 621
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 622
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 623
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 624
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 627
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 628
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 629
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 630
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 631
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 632
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 633
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 634
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 635
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 636
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 637
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 638
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 639
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 640
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 641
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 642
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 643
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 644
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 645
    goto/16 :goto_0
.end method

.method public DestroyObject(Lcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 49
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPContentServer;->getCPtr(Lcom/awox/jUPnPCP/UPnPContentServer;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPUploadControllerModule_DestroyObject(JLcom/awox/jUPnPCP/UPnPUploadControllerModule;JLcom/awox/jUPnPCP/UPnPContentServer;Ljava/lang/String;)J

    move-result-wide v0

    .line 51
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    .line 54
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 57
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 58
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 60
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 62
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 64
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 65
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 66
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 67
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 68
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 69
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 70
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 71
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 72
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 73
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 74
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 75
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 76
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 77
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 78
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 79
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 80
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 81
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 82
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 83
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 84
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 85
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 86
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 89
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 90
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 91
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 92
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 93
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 94
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 95
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 96
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 97
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 98
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 99
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 100
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 101
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 102
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 103
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 104
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 105
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 106
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 107
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 108
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 109
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 110
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 111
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 112
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 113
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 114
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 115
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 116
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 117
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 118
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 119
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 120
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 121
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 122
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 123
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 124
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 127
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 128
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 129
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 130
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 131
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 132
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 133
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 134
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 135
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 136
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 137
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 138
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 139
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 140
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 141
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 142
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 143
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 144
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 145
    goto/16 :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCMemOwn:Z

    .line 32
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->swigCPtr:J

    .line 33
    invoke-super {p0}, Lcom/awox/jUPnPCP/UPnPControlPointModule;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
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
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/UPnPUploadControllerModule;->delete()V

    .line 25
    return-void
.end method
