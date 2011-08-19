.class public Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;
.super Ljava/lang/Object;
.source "VdmLawmo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;
    }
.end annotation


# static fields
.field private static final LAWMO_META_TYPE:Ljava/lang/String; = "urn:oma:at:lawmo:1.0:OperationComplete"


# instance fields
.field private mExecArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLawmoHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;

.field private mRootUri:Ljava/lang/String;

.field private mStatusUri:Ljava/lang/String;

.field private mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

.field private mTree:Lcom/asus/dmlib/tree/DMTree;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;)V
    .locals 2
    .parameter "lawmoRootUri"
    .parameter "lawmoHandler"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mExecArray:Ljava/util/ArrayList;

    .line 38
    iput-object p2, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mLawmoHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;

    .line 39
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mRootUri:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "State"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mStatusUri:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/asus/dmlib/vdm/TaskScheduler;->getInstance()Lcom/asus/dmlib/vdm/TaskScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    .line 42
    invoke-direct {p0}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->registerHandlers()V

    .line 43
    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private registerExec(Ljava/lang/String;Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;)V
    .locals 4
    .parameter "path"
    .parameter "type"

    .prologue
    .line 65
    :try_start_0
    new-instance v1, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;

    iget-object v2, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mLawmoHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;

    iget-object v3, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mRootUri:Ljava/lang/String;

    invoke-direct {v1, p2, v2, v3}, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;-><init>(Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;Ljava/lang/String;)V

    .line 66
    .local v1, execHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;
    iget-object v2, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    invoke-virtual {v2, p1, v1}, Lcom/asus/dmlib/tree/DMTree;->registerExecute(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeExecuteHandler;)V

    .line 67
    iget-object v2, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mExecArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1           #execHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 69
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerHandlers()V
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->FactoryReset:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->FactoryReset:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-direct {p0, v0, v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->registerExec(Ljava/lang/String;Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->Wipe:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->Wipe:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-direct {p0, v0, v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->registerExec(Ljava/lang/String;Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->FullyLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->FullyLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-direct {p0, v0, v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->registerExec(Ljava/lang/String;Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->PartiallyLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->PartiallyLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-direct {p0, v0, v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->registerExec(Ljava/lang/String;Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->UnLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->UnLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-direct {p0, v0, v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->registerExec(Ljava/lang/String;Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;)V

    .line 51
    return-void
.end method

.method private unregisterHandlers()V
    .locals 4

    .prologue
    .line 54
    iget-object v3, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mExecArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;

    .line 56
    .local v1, execHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;
    :try_start_0
    iget-object v3, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    invoke-virtual {v3, v1}, Lcom/asus/dmlib/tree/DMTree;->unregisterExecute(Lcom/asus/dmlib/vdm/NodeExecuteHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 58
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0

    .line 61
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    .end local v1           #execHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->unregisterHandlers()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mExecArray:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method public getState()Lcom/asus/dmlib/vdm/lawmo/LawmoState;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mTree:Lcom/asus/dmlib/tree/DMTree;

    iget-object v2, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mStatusUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/asus/dmlib/tree/DMTree;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 75
    .local v0, state:I
    invoke-static {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->fromInt(I)Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    move-result-object v1

    return-object v1
.end method

.method public triggerUnlockSession(Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;)V
    .locals 5
    .parameter "resultCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 89
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 90
    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->getResultCode()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 91
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mRootUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->UnLock:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "urn:oma:at:lawmo:1.0:OperationComplete"

    aput-object v3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    invoke-virtual {v1, v0}, Lcom/asus/dmlib/vdm/TaskScheduler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    return-void
.end method
