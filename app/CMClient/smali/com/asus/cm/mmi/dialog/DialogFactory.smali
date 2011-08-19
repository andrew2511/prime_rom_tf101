.class public Lcom/asus/cm/mmi/dialog/DialogFactory;
.super Ljava/lang/Object;
.source "DialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/mmi/dialog/DialogFactory$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/asus/cm/IMmiCallback;


# direct methods
.method public constructor <init>(Lcom/asus/cm/IMmiCallback;Landroid/content/Context;)V
    .locals 1
    .parameter "pService"
    .parameter "pContext"

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mService:Lcom/asus/cm/IMmiCallback;

    .line 12
    iput-object v0, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    .line 15
    iput-object p1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mService:Lcom/asus/cm/IMmiCallback;

    .line 16
    iput-object p2, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method


# virtual methods
.method public createDMDialog(I)V
    .locals 4
    .parameter "pId"

    .prologue
    const/4 v3, 0x0

    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 21
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 22
    const-string v2, "mmicallback"

    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mService:Lcom/asus/cm/IMmiCallback;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 23
    const-string v1, "setupTimer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 25
    sget-object v1, Lcom/asus/cm/mmi/dialog/DialogFactory$1;->$SwitchMap$com$asus$cm$CMService$DialogId:[I

    invoke-static {}, Lcom/asus/cm/CMService$DialogId;->values()[Lcom/asus/cm/CMService$DialogId;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/asus/cm/CMService$DialogId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 70
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".java: The dialogId is dismatch in createDMDialog()."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :pswitch_0
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/mmi/dialog/ConfirmDLDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    const-string v1, "setupTimer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void

    .line 32
    :pswitch_1
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/mmi/dialog/ConfirmUPDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 33
    const-string v1, "setupTimer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 37
    :pswitch_2
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/mmi/dialog/AlertDisplayDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 41
    :pswitch_3
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/mmi/dialog/AlertConfirmDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 45
    :pswitch_4
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/mmi/dialog/AlertSingleChoiceDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 49
    :pswitch_5
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/mmi/dialog/AlertMultiChoiceDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 53
    :pswitch_6
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/mmi/dialog/AlertInputDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 57
    :pswitch_7
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/mmi/dialog/AlertInputTimeDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 61
    :pswitch_8
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/mmi/dialog/AlertInputDateDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 65
    :pswitch_9
    iget-object v1, p0, Lcom/asus/cm/mmi/dialog/DialogFactory;->mContext:Landroid/content/Context;

    const-class v2, Lcom/asus/cm/mmi/dialog/AlertFirmwareUpgradeFail;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 66
    const-string v1, "setupTimer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
