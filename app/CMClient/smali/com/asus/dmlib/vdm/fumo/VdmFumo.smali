.class public Lcom/asus/dmlib/vdm/fumo/VdmFumo;
.super Ljava/lang/Object;
.source "VdmFumo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;,
        Lcom/asus/dmlib/vdm/fumo/VdmFumo$FwUpdateStatus;
    }
.end annotation


# static fields
.field public static final FUMO_META_TYPE_DOWNLOAD_UPDATE:Ljava/lang/String; = "org.openmobilealliance.dm.firmwareupdate.downloadandupdate"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private fumoExecHandler:Lcom/asus/dmlib/fumo/FumoExecHandler;

.field private mExecArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/fumo/FumoExecHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mFotaDLExecuter:Lcom/asus/dmlib/fumo/FotaDLExecuter;

.field private mFumoHandler:Lcom/asus/dmlib/vdm/fumo/FumoHandler;

.field private mPkgNameUri:Ljava/lang/String;

.field private mPkgVersionUri:Ljava/lang/String;

.field private mRootUri:Ljava/lang/String;

.field private mStatusUri:Ljava/lang/String;

.field private mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

.field private mTree:Lcom/asus/dmlib/tree/DMTree;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "VdmFumo"

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/fumo/FumoHandler;)V
    .locals 3
    .parameter "fumoRootUri"
    .parameter "fumoHandler"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mExecArray:Ljava/util/ArrayList;

    .line 38
    iput-object p2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mFumoHandler:Lcom/asus/dmlib/vdm/fumo/FumoHandler;

    .line 39
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mRootUri:Ljava/lang/String;

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "State"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mStatusUri:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PkgName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mPkgNameUri:Ljava/lang/String;

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PkgVersion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mPkgNameUri:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/asus/dmlib/vdm/TaskScheduler;->getInstance()Lcom/asus/dmlib/vdm/TaskScheduler;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    .line 46
    new-instance v1, Lcom/asus/dmlib/fumo/FotaDLExecuter;

    iget-object v2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mFumoHandler:Lcom/asus/dmlib/vdm/fumo/FumoHandler;

    invoke-direct {v1, p1, p0, v2}, Lcom/asus/dmlib/fumo/FotaDLExecuter;-><init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/fumo/VdmFumo;Lcom/asus/dmlib/vdm/fumo/FumoHandler;)V

    iput-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mFotaDLExecuter:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    .line 47
    invoke-direct {p0}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->registerHandler()V

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v1

    sget-object v2, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-ne v1, v2, :cond_0

    .line 50
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_FAILED:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {p0, v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V

    .line 51
    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->TAG:Ljava/lang/String;

    const-string v2, "getState() == FumoState.DOWNLOAD_PROGRESSING change to FumoState.DOWNLOAD_FAILED"

    invoke-static {v1, v2}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_1
    return-void

    .line 39
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 53
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 54
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private registerExec(Ljava/lang/String;Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;)V
    .locals 3
    .parameter "path"
    .parameter "type"

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Lcom/asus/dmlib/fumo/FumoExecHandler;

    iget-object v2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mFotaDLExecuter:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-direct {v1, p2, v2}, Lcom/asus/dmlib/fumo/FumoExecHandler;-><init>(Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;Lcom/asus/dmlib/fumo/FotaDLExecuter;)V

    .line 69
    .local v1, handler:Lcom/asus/dmlib/fumo/FumoExecHandler;
    iget-object v2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    invoke-virtual {v2, p1, v1}, Lcom/asus/dmlib/tree/DMTree;->registerExecute(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeExecuteHandler;)V

    .line 70
    iget-object v2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mExecArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1           #handler:Lcom/asus/dmlib/fumo/FumoExecHandler;
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 72
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private registerHandler()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DownloadAndUpdate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->DOWNLOAD_AND_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    invoke-direct {p0, v0, v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->registerExec(Ljava/lang/String;Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Download"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->DOWNLOAD:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    invoke-direct {p0, v0, v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->registerExec(Ljava/lang/String;Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;)V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Update"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    invoke-direct {p0, v0, v1}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->registerExec(Ljava/lang/String;Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;)V

    .line 64
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mExecArray:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method public executeFwUpdate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mFotaDLExecuter:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->EXECUTE_UPDATE:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setStatus(Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)V

    .line 166
    return-void
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    iget-object v2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mPkgNameUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/asus/dmlib/tree/DMTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 122
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 120
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 122
    const-string v1, ""

    goto :goto_0
.end method

.method public getPkgVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    iget-object v2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mPkgVersionUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/asus/dmlib/tree/DMTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 133
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 135
    const-string v1, ""

    goto :goto_0
.end method

.method public getState()Lcom/asus/dmlib/vdm/fumo/FumoState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    iget-object v2, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mStatusUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/asus/dmlib/tree/DMTree;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, state:I
    invoke-static {v0}, Lcom/asus/dmlib/vdm/fumo/FumoState;->fromInt(I)Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v1

    return-object v1
.end method

.method public getUpdatePkgPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getStorage()Lcom/asus/dmlib/vdm/PLStorage;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->FUMODELTA:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    invoke-interface {v0, v1}, Lcom/asus/dmlib/vdm/PLStorage;->getFileName(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateStatus()Lcom/asus/dmlib/vdm/fumo/VdmFumo$FwUpdateStatus;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyDLSessionProceed()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mFotaDLExecuter:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    sget-object v1, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->DOWNLOADING:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setStatus(Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)V

    .line 216
    return-void
.end method

.method public querySessionActions()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public resumeDLSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 107
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 108
    iget-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mFotaDLExecuter:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 109
    iget-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    invoke-virtual {v1, v0}, Lcom/asus/dmlib/vdm/TaskScheduler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V
    .locals 3
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    iget-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mStatusUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/fumo/FumoState;->val()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/asus/dmlib/tree/DMTree;->replaceIntValue(Ljava/lang/String;I)V

    .line 149
    iget-object v0, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    invoke-virtual {v0}, Lcom/asus/dmlib/tree/DMTree;->writeToPersistentStorage()V

    .line 150
    return-void
.end method

.method public triggerReportSession(Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    .locals 4
    .parameter "resultCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 174
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 175
    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/fumo/VdmFumoUpdateResult$ResultCode;->getRsltCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 176
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mRootUri:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "org.openmobilealliance.dm.firmwareupdate.downloadandupdate"

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    invoke-virtual {v1, v0}, Lcom/asus/dmlib/vdm/TaskScheduler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method

.method public triggerSession([BLcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;)V
    .locals 0
    .parameter "message"
    .parameter "clientType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public triggerSession([BLcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;Ljava/lang/String;)V
    .locals 0
    .parameter "message"
    .parameter "clientType"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method
