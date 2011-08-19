.class public Lcom/asus/dmlib/vdm/VdmEngine;
.super Ljava/lang/Object;
.source "VdmEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VdmEngine"

.field private static mContext:Landroid/content/Context;

.field private static mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

.field private static mMmiFactory:Lcom/asus/dmlib/vdm/MmiFactory;

.field private static mPlFactory:Lcom/asus/dmlib/vdm/PLFactory;

.field private static mScheduleLoopder:Landroid/os/Looper;

.field private static mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

.field private static mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

.field private static mVdmFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;


# instance fields
.field private destoried:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/asus/dmlib/vdm/MmiFactory;Lcom/asus/dmlib/vdm/PLFactory;)V
    .locals 1
    .parameter "context"
    .parameter "mmiFactory"
    .parameter "plFactory"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sput-object p1, Lcom/asus/dmlib/vdm/VdmEngine;->mContext:Landroid/content/Context;

    .line 43
    sput-object p2, Lcom/asus/dmlib/vdm/VdmEngine;->mMmiFactory:Lcom/asus/dmlib/vdm/MmiFactory;

    .line 44
    sput-object p3, Lcom/asus/dmlib/vdm/VdmEngine;->mPlFactory:Lcom/asus/dmlib/vdm/PLFactory;

    .line 45
    new-instance v0, Lcom/asus/dmlib/vdm/SessionStateNotifier;

    invoke-direct {v0}, Lcom/asus/dmlib/vdm/SessionStateNotifier;-><init>()V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/dmlib/vdm/VdmEngine;->destoried:Z

    .line 47
    return-void
.end method

.method public static getDownloadPkg()Lcom/asus/dmlib/vdm/PLDlPkg;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mPlFactory:Lcom/asus/dmlib/vdm/PLFactory;

    invoke-interface {v0}, Lcom/asus/dmlib/vdm/PLFactory;->getDownloadPkg()Lcom/asus/dmlib/vdm/PLDlPkg;

    move-result-object v0

    return-object v0
.end method

.method public static getLogger()Lcom/asus/dmlib/vdm/PLLogger;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mPlFactory:Lcom/asus/dmlib/vdm/PLFactory;

    invoke-interface {v0}, Lcom/asus/dmlib/vdm/PLFactory;->getLogger()Lcom/asus/dmlib/vdm/PLLogger;

    move-result-object v0

    return-object v0
.end method

.method public static getMmiFactory()Lcom/asus/dmlib/vdm/MmiFactory;
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mMmiFactory:Lcom/asus/dmlib/vdm/MmiFactory;

    return-object v0
.end method

.method public static getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mPlFactory:Lcom/asus/dmlib/vdm/PLFactory;

    invoke-interface {v0}, Lcom/asus/dmlib/vdm/PLFactory;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v0

    return-object v0
.end method

.method public static getStorage()Lcom/asus/dmlib/vdm/PLStorage;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mPlFactory:Lcom/asus/dmlib/vdm/PLFactory;

    invoke-interface {v0}, Lcom/asus/dmlib/vdm/PLFactory;->getStorage()Lcom/asus/dmlib/vdm/PLStorage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelSession()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 53
    const-string v0, "VdmEngine"

    const-string v1, "========== VdmEngine.destroy() =========="

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lcom/asus/dmlib/vdm/VdmEngine;->destoried:Z

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->terminate()V

    .line 56
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mScheduleLoopder:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 57
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/dmlib/tree/DMTree;->destory()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/dmlib/vdm/VdmEngine;->destoried:Z

    .line 63
    :goto_0
    return-void

    .line 60
    :cond_0
    const-string v0, "VdmEngine"

    const-string v1, "Engine has Destoried!!"

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionEnableMode()Lcom/asus/dmlib/vdm/VdmSessionEnableMode;
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public isIdle()Z
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    iget-object v0, v0, Lcom/asus/dmlib/vdm/SessionStateNotifier;->mLastState:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v1, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    if-ne v0, v1, :cond_0

    .line 104
    const/4 v0, 0x0

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public notifyDLSessionProceed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 252
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mVdmFumo:Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    if-eqz v0, :cond_0

    .line 255
    :cond_0
    return-void
.end method

.method public notifyNIASessionProceed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 242
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 243
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 244
    sget-object v1, Lcom/asus/dmlib/vdm/VdmEngine;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    sget-object v1, Lcom/asus/dmlib/vdm/VdmEngine;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    invoke-virtual {v1, v0}, Lcom/asus/dmlib/vdm/TaskScheduler;->sendMessage(Landroid/os/Message;)Z

    .line 246
    return-void
.end method

.method public notifyUserPinSet(Ljava/lang/String;Z)V
    .locals 0
    .parameter "userPin"
    .parameter "accepted"

    .prologue
    .line 285
    return-void
.end method

.method public registerCpObserver(Lcom/asus/dmlib/vdm/CpObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 288
    return-void
.end method

.method public registerSessionStateObserver(Lcom/asus/dmlib/vdm/SessionStateObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 270
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    invoke-virtual {v0, p1}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->registerObserver(Lcom/asus/dmlib/vdm/SessionStateObserver;)Z

    move-result v0

    return v0
.end method

.method public setComponentLogLevel(Lcom/asus/dmlib/vdm/VdmComponent;Lcom/asus/dmlib/vdm/VdmLogLevel;)V
    .locals 0
    .parameter "vc"
    .parameter "debug"

    .prologue
    .line 338
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 0
    .parameter "seconds"

    .prologue
    .line 333
    return-void
.end method

.method public setDefaultLogLevel(Lcom/asus/dmlib/vdm/VdmLogLevel;)V
    .locals 1
    .parameter "level"

    .prologue
    .line 294
    sget-object v0, Lcom/asus/dmlib/vdm/VdmLogLevel;->DEBUG:Lcom/asus/dmlib/vdm/VdmLogLevel;

    invoke-virtual {v0, p1}, Lcom/asus/dmlib/vdm/VdmLogLevel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    sput-boolean v0, Lcom/asus/dmlib/util/DMLog;->DEBUG:Z

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/asus/dmlib/util/DMLog;->DEBUG:Z

    goto :goto_0
.end method

.method public setSessionEnableMode(Lcom/asus/dmlib/vdm/VdmSessionEnableMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 315
    return-void
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 70
    const-string v1, "VdmEngine"

    const-string v2, "=========== VdmEngin.start() ==========="

    invoke-static {v1, v2}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-boolean v1, p0, Lcom/asus/dmlib/vdm/VdmEngine;->destoried:Z

    if-nez v1, :cond_0

    .line 72
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TaskScheduler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 73
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 75
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/asus/dmlib/vdm/VdmEngine;->mScheduleLoopder:Landroid/os/Looper;

    .line 76
    sget-object v1, Lcom/asus/dmlib/vdm/VdmEngine;->mScheduleLoopder:Landroid/os/Looper;

    sget-object v2, Lcom/asus/dmlib/vdm/VdmEngine;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    sget-object v3, Lcom/asus/dmlib/vdm/VdmEngine;->mPlFactory:Lcom/asus/dmlib/vdm/PLFactory;

    invoke-static {v1, v2, v3}, Lcom/asus/dmlib/vdm/TaskScheduler;->getInstance(Landroid/os/Looper;Lcom/asus/dmlib/vdm/SessionStateNotifier;Lcom/asus/dmlib/vdm/PLFactory;)Lcom/asus/dmlib/vdm/TaskScheduler;

    move-result-object v1

    sput-object v1, Lcom/asus/dmlib/vdm/VdmEngine;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    .line 81
    return-void

    .line 78
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    const-string v2, "Engine has destoried!!"

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public triggerBootstrapSession(Ljava/lang/String;Lcom/asus/dmlib/vdm/BootProfile;Lcom/asus/dmlib/vdm/CpSecurity;Ljava/lang/String;[BLcom/asus/dmlib/vdm/BootMsgHandler;Lcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 0
    .parameter "account"
    .parameter "profile"
    .parameter "security"
    .parameter "mac"
    .parameter "message"
    .parameter "handler"
    .parameter "initiator"

    .prologue
    .line 168
    return-void
.end method

.method public triggerC2dmIDSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 3
    .parameter "id"
    .parameter "appName"
    .parameter "initiator"

    .prologue
    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "c2dm_reg_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "c2dm_reg_app_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 136
    .local v1, msg:Landroid/os/Message;
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 138
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 140
    sget-object v2, Lcom/asus/dmlib/vdm/VdmEngine;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    invoke-virtual {v2, v1}, Lcom/asus/dmlib/vdm/TaskScheduler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method

.method public triggerDMSession(Ljava/lang/String;Ljava/lang/String;[BLcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 2
    .parameter "account"
    .parameter "genericAlertType"
    .parameter "message"
    .parameter "initiator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/vdm/TaskScheduler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method

.method public triggerNIADmSession([BLcom/asus/dmlib/vdm/SessionInitiator;Lcom/asus/dmlib/vdm/NIAMsgHandler;)V
    .locals 18
    .parameter "message"
    .parameter "initiator"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 177
    const/4 v9, 0x0

    .line 178
    .local v9, isAccountExist:Z
    const/4 v11, 0x0

    .line 181
    .local v11, pkg0:Lcom/asus/dmlib/syncml/pack/NIMessage;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/asus/dmlib/syncml/pack/NIMessage;->parse([B)Lcom/asus/dmlib/syncml/pack/NIMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 186
    :goto_0
    invoke-virtual {v11}, Lcom/asus/dmlib/syncml/pack/NIMessage;->getVersion()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 187
    .local v6, d_version:D
    const-wide/high16 v15, 0x4024

    mul-double/2addr v15, v6

    double-to-int v15, v15

    int-to-short v12, v15

    .line 188
    .local v12, s_version:S
    invoke-virtual {v11}, Lcom/asus/dmlib/syncml/pack/NIMessage;->getServerIdentifier()Ljava/lang/String;

    move-result-object v13

    .line 189
    .local v13, servID:Ljava/lang/String;
    invoke-static {}, Lcom/asus/dmlib/mo/DMAcc;->getInstances()Ljava/util/HashMap;

    move-result-object v5

    .line 190
    .local v5, accMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/asus/dmlib/mo/DMAcc;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 192
    .end local p0
    .local v10, keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 193
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/asus/dmlib/mo/DMAcc;

    sput-object p0, Lcom/asus/dmlib/vdm/VdmEngine;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    .line 195
    const-string v15, "VdmEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "=============== mDMAcc.getServerID(): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/asus/dmlib/vdm/VdmEngine;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual/range {v17 .. v17}, Lcom/asus/dmlib/mo/DMAcc;->getServerID()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v15, Lcom/asus/dmlib/vdm/VdmEngine;->mDMAcc:Lcom/asus/dmlib/mo/DMAcc;

    invoke-virtual {v15}, Lcom/asus/dmlib/mo/DMAcc;->getServerID()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 198
    const/4 v9, 0x1

    .line 203
    :cond_1
    if-nez v9, :cond_2

    .line 204
    new-instance v15, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "No \'"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\' exists in DMAcc"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 182
    .end local v5           #accMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/asus/dmlib/mo/DMAcc;>;"
    .end local v6           #d_version:D
    .end local v10           #keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v12           #s_version:S
    .end local v13           #servID:Ljava/lang/String;
    .restart local p0
    :catch_0
    move-exception v8

    .line 183
    .local v8, ex:Ljava/lang/Exception;
    invoke-static {v8}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 207
    .end local v8           #ex:Ljava/lang/Exception;
    .end local p0
    .restart local v5       #accMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/asus/dmlib/mo/DMAcc;>;"
    .restart local v6       #d_version:D
    .restart local v10       #keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v12       #s_version:S
    .restart local v13       #servID:Ljava/lang/String;
    :cond_2
    invoke-virtual {v11}, Lcom/asus/dmlib/syncml/pack/NIMessage;->getVendorInfo()Ljava/lang/String;

    move-result-object v14

    .line 209
    .local v14, vendorInfo:Ljava/lang/String;
    invoke-static {}, Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;->values()[Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;

    move-result-object v15

    invoke-virtual {v11}, Lcom/asus/dmlib/syncml/pack/NIMessage;->getUIMode()I

    move-result v16

    aget-object v15, v15, v16

    if-nez v14, :cond_3

    const/16 v16, 0x0

    :goto_1
    move-object/from16 v0, p3

    move-object v1, v15

    move v2, v12

    move-object/from16 v3, v16

    move-object/from16 v4, p2

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/asus/dmlib/vdm/NIAMsgHandler;->notify(Lcom/asus/dmlib/vdm/NIAMsgHandler$UIMode;S[BLcom/asus/dmlib/vdm/SessionInitiator;)V

    .line 211
    return-void

    .line 209
    :cond_3
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    goto :goto_1
.end method

.method public triggerReportSession(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 0
    .parameter "uriPath"
    .parameter "reasonCode"
    .parameter "account"
    .parameter "genericAlertType"
    .parameter "correlator"
    .parameter "initiator"

    .prologue
    .line 235
    return-void
.end method

.method public triggerVibeSession(Ljava/lang/String;Ljava/lang/String;Lcom/asus/dmlib/vdm/SessionInitiator;)V
    .locals 3
    .parameter "id"
    .parameter "appName"
    .parameter "initiator"

    .prologue
    .line 145
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "vibe_reg_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v2, "c2dm_reg_app_name"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .local v1, msg:Landroid/os/Message;
    iput-object p3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 151
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 152
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 154
    sget-object v2, Lcom/asus/dmlib/vdm/VdmEngine;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    invoke-virtual {v2, v1}, Lcom/asus/dmlib/vdm/TaskScheduler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    return-void
.end method

.method public unregisterSessionStateObserver(Lcom/asus/dmlib/vdm/SessionStateObserver;)Z
    .locals 1
    .parameter "observer"

    .prologue
    .line 281
    sget-object v0, Lcom/asus/dmlib/vdm/VdmEngine;->mSscNotifier:Lcom/asus/dmlib/vdm/SessionStateNotifier;

    invoke-virtual {v0, p1}, Lcom/asus/dmlib/vdm/SessionStateNotifier;->unregisterObserver(Lcom/asus/dmlib/vdm/SessionStateObserver;)Z

    move-result v0

    return v0
.end method
