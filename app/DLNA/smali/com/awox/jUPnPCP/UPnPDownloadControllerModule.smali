.class public Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;
.super Lcom/awox/jUPnPCP/UPnPControlPointModule;
.source "UPnPDownloadControllerModule.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->SWIGUPnPDownloadControllerModuleUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/awox/jUPnPCP/UPnPControlPointModule;-><init>(JZ)V

    .line 16
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;->swigCPtr:J

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;)V
    .locals 3
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPDownloadControllerModule__SWIG_2(JLcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;-><init>(JZ)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Lcom/awox/jUPnPCP/awMediaParserManager;)V
    .locals 6
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

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPDownloadControllerModule__SWIG_1(JLcom/awox/jUPnPCP/UPnPStack;JLcom/awox/jUPnPCP/awMediaParserManager;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;-><init>(JZ)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/UPnPStack;Lcom/awox/jUPnPCP/awMediaParserManager;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jUPnPCP/awMediaParserManager;->getCPtr(Lcom/awox/jUPnPCP/awMediaParserManager;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPDownloadControllerModule__SWIG_0(JLcom/awox/jUPnPCP/UPnPStack;JLcom/awox/jUPnPCP/awMediaParserManager;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;-><init>(JZ)V

    .line 34
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;)J
    .locals 2
    .parameter

    .prologue
    .line 20
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public CreateDownload(Lcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 245
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-static/range {v0 .. v8}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerModule_CreateDownload__SWIG_2(JLcom/awox/jUPnPCP/UPnPDownloadControllerModule;JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;)J

    move-result-wide v0

    .line 247
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 341
    :goto_0
    return-object v0

    .line 250
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 253
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 254
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 255
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 256
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 258
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 260
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 261
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 262
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 263
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 264
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 265
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 266
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 267
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 268
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 269
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 270
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 271
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 272
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 273
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 274
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 275
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 276
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 277
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 278
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 279
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 280
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 281
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 282
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 285
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 286
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 287
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 288
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 289
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 290
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 291
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 292
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 293
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 294
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 295
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 296
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 297
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 298
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 299
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 300
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 301
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 302
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 303
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 304
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 305
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 306
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 307
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 308
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 309
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 310
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 311
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 312
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 313
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 314
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 315
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 316
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 317
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 318
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 319
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 320
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 323
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 324
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 325
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 326
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 327
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 328
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 329
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 330
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 331
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 332
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 333
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 334
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 335
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 336
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 337
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 338
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 339
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 340
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    invoke-direct {v2, v0, v1, v9}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 341
    goto/16 :goto_0
.end method

.method public CreateDownload(Lcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v0 .. v9}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerModule_CreateDownload__SWIG_1(JLcom/awox/jUPnPCP/UPnPDownloadControllerModule;JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 147
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    .line 150
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 153
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 154
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 156
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 158
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 159
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 160
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 161
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 162
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 163
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 164
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 165
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 166
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 167
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 168
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 169
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 170
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 171
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 172
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 173
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 174
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 175
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 176
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 177
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 178
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 179
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 180
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 181
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 182
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 185
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 186
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 187
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 188
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 189
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 190
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 191
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 192
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 193
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 194
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 195
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 196
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 197
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 198
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 199
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 200
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 201
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 202
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 203
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 204
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 205
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 206
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 207
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 208
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 209
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 210
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 211
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 212
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 213
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 214
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 215
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 216
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 217
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 218
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 219
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 220
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 223
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 224
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 225
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 226
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 227
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 228
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 229
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 230
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 231
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 232
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 233
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 234
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 235
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 236
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 237
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 238
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 239
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 240
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 241
    goto/16 :goto_0
.end method

.method public CreateDownload(Lcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPStack;->getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPDownloadControllerModule_CreateDownload__SWIG_0(JLcom/awox/jUPnPCP/UPnPDownloadControllerModule;JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;Ljava/math/BigInteger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 47
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 53
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 54
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 56
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 58
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 60
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 62
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 63
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 64
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 65
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 66
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 67
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 68
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 69
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 70
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 71
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 72
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 73
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 74
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 75
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 76
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 77
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 78
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 79
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 80
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 81
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 82
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 85
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 86
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 87
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 88
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 89
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 90
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 91
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 92
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 93
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 94
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 95
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 96
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 97
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 98
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 99
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 100
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 101
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 102
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 103
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 104
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 105
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 106
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 107
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 108
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 109
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 110
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 111
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 112
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 113
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 114
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 115
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 116
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 117
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 118
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 119
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 120
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 123
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 124
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 125
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 126
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 127
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 128
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 129
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 130
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 131
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 132
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 133
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 134
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 135
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 136
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 137
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 138
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 139
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 140
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 141
    goto/16 :goto_0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 24
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;->swigCMemOwn:Z

    .line 28
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPDownloadControllerModule;->swigCPtr:J

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
