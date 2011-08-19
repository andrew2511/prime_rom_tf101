.class public Lcom/awox/jUPnPCP/UPnPStack;
.super Ljava/lang/Object;
.source "UPnPStack.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPStack__SWIG_1()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPStack;-><init>(JZ)V

    .line 44
    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean p3, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCMemOwn:Z

    .line 17
    iput-wide p1, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;)J

    move-result-wide v2

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPStack__SWIG_3(JJJ)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPStack;-><init>(JZ)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;Lcom/awox/jUPnPCP/SWIGTYPE_p_void;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_f_p_UPnPCommand_p_void__void;)J

    move-result-wide v2

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)J

    move-result-wide v4

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPStack__SWIG_2(JJJLjava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPStack;-><init>(JZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 39
    invoke-static {p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->new_UPnPStack__SWIG_0(Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/awox/jUPnPCP/UPnPStack;-><init>(JZ)V

    .line 40
    return-void
.end method

.method protected static getCPtr(Lcom/awox/jUPnPCP/UPnPStack;)J
    .locals 2
    .parameter

    .prologue
    .line 21
    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public GetCommandName(Lcom/awox/jUPnPCP/UPnPCommand;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getCPtr(Lcom/awox/jUPnPCP/UPnPCommand;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_GetCommandName(JLcom/awox/jUPnPCP/UPnPStack;JLcom/awox/jUPnPCP/UPnPCommand;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetModule(Ljava/lang/String;)Lcom/awox/jUPnPCP/UPnPControlPointModule;
    .locals 4
    .parameter

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_GetModule(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;)J

    move-result-wide v0

    .line 159
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPControlPointModule;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/awox/jUPnPCP/UPnPControlPointModule;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public HasModule(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 154
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_HasModule(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_addDevice(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 29
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 30
    iget-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCMemOwn:Z

    .line 32
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->delete_UPnPStack(J)V

    .line 34
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    monitor-exit p0

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deviceSupportExtension(Lcom/awox/jUPnPCP/UPnPDeviceBase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getCPtr(Lcom/awox/jUPnPCP/UPnPDeviceBase;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_deviceSupportExtension(JLcom/awox/jUPnPCP/UPnPStack;JLcom/awox/jUPnPCP/UPnPDeviceBase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/awox/jUPnPCP/UPnPStack;->delete()V

    .line 26
    return-void
.end method

.method public getCommandToHandle()Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 175
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_getCommandToHandle(JLcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    .line 177
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 271
    :goto_0
    return-object v0

    .line 180
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 183
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 184
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 186
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 188
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 190
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 192
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 193
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 194
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 195
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 196
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 197
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 198
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 199
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 200
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 201
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 202
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 203
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 204
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 205
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 206
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 207
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 208
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 209
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 210
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 211
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 212
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 215
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 216
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 217
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 218
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 219
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 220
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 221
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 222
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 223
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 224
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 225
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 226
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 227
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 228
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 229
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 230
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 231
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 232
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 233
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 234
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 235
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 236
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 237
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 238
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 239
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 240
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 241
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 242
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 243
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 244
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 245
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 246
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 247
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 248
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 249
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 250
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 253
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 254
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 255
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 256
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 257
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 258
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 259
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 260
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 261
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 262
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 263
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 264
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 265
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 266
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 267
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 268
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 269
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 270
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 271
    goto/16 :goto_0
.end method

.method public getCommandToHandleOnStop()Lcom/awox/jUPnPCP/UPnPCommand;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 275
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_getCommandToHandleOnStop(JLcom/awox/jUPnPCP/UPnPStack;)J

    move-result-wide v0

    .line 277
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    .line 280
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPCommand;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/UPnPCommand;-><init>(JZ)V

    .line 283
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATEID:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 284
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUpdated;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UPDATING:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 286
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUpdating;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUpdating;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 288
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerAdded;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerAdded;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 289
    :cond_3
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_CONTENTSERVERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 290
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerRemoved;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerRemoved;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 291
    :cond_4
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_5

    .line 292
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 293
    :cond_5
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_BROWSE2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 294
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowse2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdBrowse2;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 295
    :cond_6
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISAUTHORIZED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_7

    .line 296
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsAuthorized;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdIsAuthorized;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 297
    :cond_7
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SEARCH:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    .line 298
    new-instance v2, Lcom/awox/jUPnPCP/CmdSearch;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSearch;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 299
    :cond_8
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 300
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 301
    :cond_9
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    .line 302
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 303
    :cond_a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_MEDIARECEIVERREGISTRAR_UPDATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 304
    new-instance v2, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdContentServerMediaReceiverRegistrarUpdated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 305
    :cond_b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_CS_ISVALIDATED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 306
    new-instance v2, Lcom/awox/jUPnPCP/CmdIsValidated;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdIsValidated;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 307
    :cond_c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_ITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 308
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 309
    :cond_d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_CREATECONTAINER:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 310
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerCreateContainer;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 311
    :cond_e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CS_UPLOAD_DESTROYOBJECT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_f

    .line 312
    new-instance v2, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdUploadControllerDestroyObject;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 315
    :cond_f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERADDED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_10

    .line 316
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererAdded;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererAdded;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 317
    :cond_10
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_RENDERERREMOVED:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 318
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererRemoved;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererRemoved;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 319
    :cond_11
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STATECHANGE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_12

    .line 320
    new-instance v2, Lcom/awox/jUPnPCP/CmdStateChange;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdStateChange;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 321
    :cond_12
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 322
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 323
    :cond_13
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_UNSUBSCRIBE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_14

    .line 324
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererUnSubscribe;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 325
    :cond_14
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PROTOCOLINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 326
    new-instance v2, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRendererProtocolInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 327
    :cond_15
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_16

    .line 328
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetURI2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 329
    :cond_16
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PLAYMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_17

    .line 330
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlayMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPlayMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 331
    :cond_17
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETNEXTURI2:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_18

    .line 332
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetNextURI2;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetNextURI2;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 333
    :cond_18
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PAUSEMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_19

    .line 334
    new-instance v2, Lcom/awox/jUPnPCP/CmdPauseMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPauseMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 335
    :cond_19
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_STOPMEDIA:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    .line 336
    new-instance v2, Lcom/awox/jUPnPCP/CmdStopMedia;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdStopMedia;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 337
    :cond_1a
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETVOLUME:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1b

    .line 338
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetVolume;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetVolume;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 339
    :cond_1b
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETMUTE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1c

    .line 340
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetMute;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetMute;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 341
    :cond_1c
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_GETPOSITION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1d

    .line 342
    new-instance v2, Lcom/awox/jUPnPCP/CmdGetPosition;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdGetPosition;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 343
    :cond_1d
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_PREV:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1e

    .line 344
    new-instance v2, Lcom/awox/jUPnPCP/CmdPrev;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPrev;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 345
    :cond_1e
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_NEXT:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    .line 346
    new-instance v2, Lcom/awox/jUPnPCP/CmdNext;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdNext;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 347
    :cond_1f
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SEEK:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_20

    .line 348
    new-instance v2, Lcom/awox/jUPnPCP/CmdSeek;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSeek;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 349
    :cond_20
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_MR_SETPLAYMODE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_21

    .line 350
    new-instance v2, Lcom/awox/jUPnPCP/CmdSetPlayMode;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdSetPlayMode;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 353
    :cond_21
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEURLINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_22

    .line 354
    new-instance v2, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdRetrieveURLToCache;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 355
    :cond_22
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DEVICEALIVE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 356
    new-instance v2, Lcom/awox/jUPnPCP/CmdDeviceAlive;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdDeviceAlive;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 357
    :cond_23
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_RETRIEVEBROWSEINTOCACHE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_24

    .line 358
    new-instance v2, Lcom/awox/jUPnPCP/CmdBrowseCached;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdBrowseCached;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 359
    :cond_24
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_DOWNLOADITEMSTATE:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_25

    .line 360
    new-instance v2, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdDownloadControllerItemState;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 361
    :cond_25
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_PLAYLISTINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_26

    .line 362
    new-instance v2, Lcom/awox/jUPnPCP/CmdPlaylistInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdPlaylistInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 363
    :cond_26
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_GETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_27

    .line 364
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerGetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 365
    :cond_27
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_SETPROPERTY:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_28

    .line 366
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerSetProperty;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 367
    :cond_28
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_XSERVICEMANAGER_PERFORMACTION:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_29

    .line 368
    new-instance v2, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdXServiceManagerPerformAction;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    .line 369
    :cond_29
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPCommand;->getMCommandID()J

    move-result-wide v3

    sget-wide v5, Lcom/awox/jUPnPCP/jUPnPCPConstants;->UPNP_CMD_INTERNETPUSHINFO:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2a

    .line 370
    new-instance v2, Lcom/awox/jUPnPCP/CmdInternetPushInfo;

    invoke-direct {v2, v0, v1, v7}, Lcom/awox/jUPnPCP/CmdInternetPushInfo;-><init>(JZ)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_2a
    move-object v0, v2

    .line 371
    goto/16 :goto_0
.end method

.method public getConfigReadOnlyPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_getConfigReadOnlyPath(JLcom/awox/jUPnPCP/UPnPStack;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigReadWritePath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_getConfigReadWritePath(JLcom/awox/jUPnPCP/UPnPStack;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelaySinceDeviceWasLastSeen(Lcom/awox/jUPnPCP/UPnPDeviceBase;)J
    .locals 6
    .parameter

    .prologue
    .line 150
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getCPtr(Lcom/awox/jUPnPCP/UPnPDeviceBase;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_getDelaySinceDeviceWasLastSeen(JLcom/awox/jUPnPCP/UPnPStack;JLcom/awox/jUPnPCP/UPnPDeviceBase;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDevice(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;I)Lcom/awox/jUPnPCP/UPnPDeviceBase;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 83
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/SWIGTYPE_p_void;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_void;)J

    move-result-wide v3

    move-object v2, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_getDevice(JLcom/awox/jUPnPCP/UPnPStack;JI)J

    move-result-wide v0

    .line 85
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 86
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    .line 88
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPDeviceBase;

    invoke-direct {v2, v0, v1, v6}, Lcom/awox/jUPnPCP/UPnPDeviceBase;-><init>(JZ)V

    .line 90
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getDeviceType()I

    move-result v3

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_ContentServer_get()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 91
    new-instance v2, Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-direct {v2, v0, v1, v6}, Lcom/awox/jUPnPCP/UPnPContentServer;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getDeviceType()I

    move-result v3

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_Renderer_get()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 94
    new-instance v2, Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v2, v0, v1, v6}, Lcom/awox/jUPnPCP/UPnPRenderer;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 96
    goto :goto_0
.end method

.method public getDeviceByUDN(Ljava/lang/String;I)Lcom/awox/jUPnPCP/UPnPDeviceBase;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 117
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_getDeviceByUDN__SWIG_1(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;I)J

    move-result-wide v0

    .line 119
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    .line 122
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPDeviceBase;

    invoke-direct {v2, v0, v1, v5}, Lcom/awox/jUPnPCP/UPnPDeviceBase;-><init>(JZ)V

    .line 124
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getDeviceType()I

    move-result v3

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_ContentServer_get()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 125
    new-instance v2, Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-direct {v2, v0, v1, v5}, Lcom/awox/jUPnPCP/UPnPContentServer;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getDeviceType()I

    move-result v3

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_Renderer_get()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 128
    new-instance v2, Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v2, v0, v1, v5}, Lcom/awox/jUPnPCP/UPnPRenderer;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 130
    goto :goto_0
.end method

.method public getDeviceByUDN(Ljava/lang/String;IZ)Lcom/awox/jUPnPCP/UPnPDeviceBase;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 100
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_getDeviceByUDN__SWIG_0(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;IZ)J

    move-result-wide v0

    .line 102
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 103
    const/4 v0, 0x0

    .line 113
    :goto_0
    return-object v0

    .line 105
    :cond_0
    new-instance v2, Lcom/awox/jUPnPCP/UPnPDeviceBase;

    invoke-direct {v2, v0, v1, v6}, Lcom/awox/jUPnPCP/UPnPDeviceBase;-><init>(JZ)V

    .line 107
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getDeviceType()I

    move-result v3

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_ContentServer_get()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 108
    new-instance v2, Lcom/awox/jUPnPCP/UPnPContentServer;

    invoke-direct {v2, v0, v1, v6}, Lcom/awox/jUPnPCP/UPnPContentServer;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v2}, Lcom/awox/jUPnPCP/UPnPDeviceBase;->getDeviceType()I

    move-result v3

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->kUPnPDeviceType_Renderer_get()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 111
    new-instance v2, Lcom/awox/jUPnPCP/UPnPRenderer;

    invoke-direct {v2, v0, v1, v6}, Lcom/awox/jUPnPCP/UPnPRenderer;-><init>(JZ)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 113
    goto :goto_0
.end method

.method public getDevicePair(IILcom/awox/jUPnPCP/SWIGTYPE_p_p_UPnPDeviceBase;Lcom/awox/jUPnPCP/SWIGTYPE_p_p_UPnPDeviceBase;Z)Z
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {p3}, Lcom/awox/jUPnPCP/SWIGTYPE_p_p_UPnPDeviceBase;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_p_UPnPDeviceBase;)J

    move-result-wide v5

    invoke-static {p4}, Lcom/awox/jUPnPCP/SWIGTYPE_p_p_UPnPDeviceBase;->getCPtr(Lcom/awox/jUPnPCP/SWIGTYPE_p_p_UPnPDeviceBase;)J

    move-result-wide v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v9, p5

    invoke-static/range {v0 .. v9}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_getDevicePair(JLcom/awox/jUPnPCP/UPnPStack;IIJJZ)Z

    move-result v0

    return v0
.end method

.method public handleEvent()V
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_handleEvent(JLcom/awox/jUPnPCP/UPnPStack;)V

    .line 80
    return-void
.end method

.method public handledCommand(Lcom/awox/jUPnPCP/UPnPCommand;)V
    .locals 6
    .parameter

    .prologue
    .line 375
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {p1}, Lcom/awox/jUPnPCP/UPnPCommand;->getCPtr(Lcom/awox/jUPnPCP/UPnPCommand;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_handledCommand(JLcom/awox/jUPnPCP/UPnPStack;JLcom/awox/jUPnPCP/UPnPCommand;)V

    .line 376
    return-void
.end method

.method public isGlobal()Z
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_isGlobal(JLcom/awox/jUPnPCP/UPnPStack;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_isRunning(JLcom/awox/jUPnPCP/UPnPStack;)Z

    move-result v0

    return v0
.end method

.method public removeDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 167
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_removeDevice(JLcom/awox/jUPnPCP/UPnPStack;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public searchDevices()V
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_searchDevices(JLcom/awox/jUPnPCP/UPnPStack;)V

    .line 64
    return-void
.end method

.method public setUPnPGlobal(Z)V
    .locals 2
    .parameter

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_setUPnPGlobal(JLcom/awox/jUPnPCP/UPnPStack;Z)V

    .line 68
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_start(JLcom/awox/jUPnPCP/UPnPStack;)V

    .line 56
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_stop(JLcom/awox/jUPnPCP/UPnPStack;)V

    .line 60
    return-void
.end method

.method public waitCommand()Z
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/awox/jUPnPCP/UPnPStack;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/awox/jUPnPCP/jUPnPCPJNI;->UPnPStack_waitCommand(JLcom/awox/jUPnPCP/UPnPStack;)Z

    move-result v0

    return v0
.end method
