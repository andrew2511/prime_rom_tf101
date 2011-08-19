.class Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;
.super Ljava/lang/Object;
.source "LawmoExecHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeExecuteHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler$1;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;

.field private mStateUri:Ljava/lang/String;

.field private mTree:Lcom/asus/dmlib/tree/DMTree;

.field private mType:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "handler"
    .parameter "pRootUri"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mType:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    .line 18
    iput-object p2, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;

    .line 19
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mTree:Lcom/asus/dmlib/tree/DMTree;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "State"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mStateUri:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private setState(Lcom/asus/dmlib/vdm/lawmo/LawmoState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mTree:Lcom/asus/dmlib/tree/DMTree;

    iget-object v2, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mStateUri:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->val()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/asus/dmlib/tree/DMTree;->replaceIntValue(Ljava/lang/String;I)V

    .line 63
    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mTree:Lcom/asus/dmlib/tree/DMTree;

    invoke-virtual {v1}, Lcom/asus/dmlib/tree/DMTree;->writeToPersistentStorage()V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/asus/dmlib/syncml/message/management/Status;Ljava/lang/String;)V
    .locals 2
    .parameter "status"
    .parameter "correlator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler$1;->$SwitchMap$com$asus$dmlib$vdm$lawmo$VdmLawmo$LawmoHandleType:[I

    iget-object v1, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mType:Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;

    invoke-virtual {v1}, Lcom/asus/dmlib/vdm/lawmo/VdmLawmo$LawmoHandleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;->fullyLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Operation_Succeeded:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->getResultCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 29
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Fully_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->setState(Lcom/asus/dmlib/vdm/lawmo/LawmoState;)V

    goto :goto_0

    .line 34
    :pswitch_1
    iget-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;->partiallyLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Operation_Succeeded:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->getResultCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 36
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Partially_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->setState(Lcom/asus/dmlib/vdm/lawmo/LawmoState;)V

    goto :goto_0

    .line 41
    :pswitch_2
    iget-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;->unLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Operation_Succeeded:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->getResultCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    .line 43
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Unlocked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->setState(Lcom/asus/dmlib/vdm/lawmo/LawmoState;)V

    goto :goto_0

    .line 48
    :pswitch_3
    iget-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;->factoryReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Operation_Succeeded:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->getResultCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    goto :goto_0

    .line 53
    :pswitch_4
    iget-object v0, p0, Lcom/asus/dmlib/vdm/lawmo/LawmoExecHandler;->mHandler:Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;->wipe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->Operation_Succeeded:Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/lawmo/LawmoStatus;->getResultCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/syncml/message/management/Status;->setStatusCode(I)V

    goto :goto_0

    .line 25
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
