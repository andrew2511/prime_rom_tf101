.class public Lcom/asus/dmlib/fumo/FumoExecHandler;
.super Ljava/lang/Object;
.source "FumoExecHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeExecuteHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/fumo/FumoExecHandler$1;
    }
.end annotation


# static fields
.field public static PREF_FOTA_HANDLE_TYPE:Ljava/lang/String;


# instance fields
.field private mDLHandler:Lcom/asus/dmlib/fumo/FotaDLExecuter;

.field private mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

.field private mType:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "FOTAHandleType"

    sput-object v0, Lcom/asus/dmlib/fumo/FumoExecHandler;->PREF_FOTA_HANDLE_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;Lcom/asus/dmlib/fumo/FotaDLExecuter;)V
    .locals 1
    .parameter "type"
    .parameter "handler"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/asus/dmlib/fumo/FumoExecHandler;->mType:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    .line 20
    iput-object p2, p0, Lcom/asus/dmlib/fumo/FumoExecHandler;->mDLHandler:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    .line 21
    invoke-static {}, Lcom/asus/dmlib/vdm/TaskScheduler;->getInstance()Lcom/asus/dmlib/vdm/TaskScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/fumo/FumoExecHandler;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    .line 22
    return-void
.end method


# virtual methods
.method public execute(Lcom/asus/dmlib/syncml/message/management/Status;Ljava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "correlator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 26
    sget-object v1, Lcom/asus/dmlib/fumo/FumoExecHandler$1;->$SwitchMap$com$asus$dmlib$fumo$FotaDLExecuter$FumoHandleType:[I

    iget-object v2, p0, Lcom/asus/dmlib/fumo/FumoExecHandler;->mType:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    invoke-virtual {v2}, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 43
    :goto_0
    :pswitch_0
    return-void

    .line 34
    :pswitch_1
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v1

    sget-object v2, Lcom/asus/dmlib/fumo/FumoExecHandler;->PREF_FOTA_HANDLE_TYPE:Ljava/lang/String;

    iget-object v3, p0, Lcom/asus/dmlib/fumo/FumoExecHandler;->mType:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    invoke-virtual {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/asus/dmlib/vdm/PLRegistry;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 36
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 37
    iget-object v1, p0, Lcom/asus/dmlib/fumo/FumoExecHandler;->mType:Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;

    invoke-virtual {v1}, Lcom/asus/dmlib/fumo/FotaDLExecuter$FumoHandleType;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 38
    iget-object v1, p0, Lcom/asus/dmlib/fumo/FumoExecHandler;->mDLHandler:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/asus/dmlib/fumo/FumoExecHandler;->mTaskScheduler:Lcom/asus/dmlib/vdm/TaskScheduler;

    invoke-virtual {v1, v0}, Lcom/asus/dmlib/vdm/TaskScheduler;->addPendingMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
