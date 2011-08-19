.class public Lcom/asus/dm/mmi/dialog/DialogFactory;
.super Ljava/lang/Object;
.source "DialogFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dm/mmi/dialog/DialogFactory$1;
    }
.end annotation


# static fields
.field public static final DISABLE_NATIVE_BUTTON:Ljava/lang/String; = "disableNativeButton"

.field public static final MMI_CALLBACK:Ljava/lang/String; = "mmicallback"

.field public static final SAVE_INSTANCE:Ljava/lang/String; = "saveInstance"

.field public static final SETUP_TIMER:Ljava/lang/String; = "setupTimer"


# instance fields
.field private mDMService:Lcom/asus/dm/DMService;

.field private mMmiService:Lcom/asus/dm/IMmiCallback;


# direct methods
.method public constructor <init>(Lcom/asus/dm/IMmiCallback;Lcom/asus/dm/DMService;)V
    .locals 1
    .parameter "pService"
    .parameter "pContext"

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mMmiService:Lcom/asus/dm/IMmiCallback;

    .line 11
    iput-object v0, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    .line 20
    iput-object p1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mMmiService:Lcom/asus/dm/IMmiCallback;

    .line 21
    iput-object p2, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    .line 22
    return-void
.end method


# virtual methods
.method public createDMDialog(IZ)V
    .locals 5
    .parameter "pId"
    .parameter "saveInstance"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 26
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 27
    const-string v2, "mmicallback"

    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mMmiService:Lcom/asus/dm/IMmiCallback;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 28
    const-string v1, "setupTimer"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 29
    const-string v1, "saveInstance"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    sget-object v1, Lcom/asus/dm/mmi/dialog/DialogFactory$1;->$SwitchMap$com$asus$dm$DMService$DialogId:[I

    invoke-static {}, Lcom/asus/dm/DMService$DialogId;->values()[Lcom/asus/dm/DMService$DialogId;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/asus/dm/DMService$DialogId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 82
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

    .line 33
    :pswitch_0
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/ConfirmDLDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 34
    const-string v1, "setupTimer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    :goto_0
    invoke-static {}, Lcom/asus/dm/mmi/dialog/DMDialog;->closeDialog()V

    .line 87
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    invoke-virtual {v1, v0}, Lcom/asus/dm/DMService;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void

    .line 38
    :pswitch_1
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/ConfirmUPDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    const-string v1, "setupTimer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 40
    const-string v1, "disableNativeButton"

    iget-object v2, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    invoke-virtual {v2}, Lcom/asus/dm/DMService;->getPostQuota()I

    move-result v2

    if-gtz v2, :cond_0

    move v2, v4

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .line 44
    :pswitch_2
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/AlertDisplayDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 45
    const-string v1, "setupTimer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 49
    :pswitch_3
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/AlertConfirmDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 53
    :pswitch_4
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/AlertSingleChoiceDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 57
    :pswitch_5
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/AlertMultiChoiceDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 61
    :pswitch_6
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/AlertInputDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 65
    :pswitch_7
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/AlertInputTimeDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 69
    :pswitch_8
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/AlertInputDateDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 73
    :pswitch_9
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 74
    const-string v1, "setupTimer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 77
    :pswitch_a
    iget-object v1, p0, Lcom/asus/dm/mmi/dialog/DialogFactory;->mDMService:Lcom/asus/dm/DMService;

    const-class v2, Lcom/asus/dm/mmi/dialog/AlertBatteryDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 78
    const-string v1, "setupTimer"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 31
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
        :pswitch_a
    .end packed-switch
.end method
