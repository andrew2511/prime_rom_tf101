.class public Lcom/asus/cm/mmi/CMConfirmation;
.super Lcom/asus/cm/mmi/CMMMIView;
.source "CMConfirmation.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/MmiConfirmation;


# static fields
.field private static final DEBUG:Z


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "pObserver"
    .parameter "pService"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/asus/cm/mmi/CMMMIView;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V

    .line 16
    return-void
.end method


# virtual methods
.method public display(Lcom/asus/dmlib/vdm/MmiViewContext;Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;)Lcom/asus/dmlib/vdm/MmiResult;
    .locals 2
    .parameter "pContext"
    .parameter "pDefaultCommand"

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyConfirmation.display\t defaultCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 21
    iget-object v0, p0, Lcom/asus/cm/mmi/CMConfirmation;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0, p2}, Lcom/asus/cm/CMService;->setDefaultConfirmResult(Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/asus/cm/mmi/CMConfirmation;->setupUIAlertParaDescriptor(Lcom/asus/dmlib/vdm/MmiViewContext;)Lcom/asus/cm/UIAlertParaDescriptor;

    move-result-object v0

    sget-object v1, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_CONFIRM:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {p0, v0, v1}, Lcom/asus/cm/mmi/CMConfirmation;->notifyDMServiceShowUIAlertDialog(Lcom/asus/cm/UIAlertParaDescriptor;Lcom/asus/cm/CMService$DialogId;)V

    .line 25
    sget-object v0, Lcom/asus/dmlib/vdm/MmiResult;->OK:Lcom/asus/dmlib/vdm/MmiResult;

    return-object v0
.end method
