.class public Lcom/asus/dm/mmi/DMConfirmation;
.super Lcom/asus/dm/mmi/DMMMIView;
.source "DMConfirmation.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/MmiConfirmation;


# static fields
.field private static final DEBUG:Z


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/dm/DMService;)V
    .locals 0
    .parameter "pObserver"
    .parameter "pService"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/asus/dm/mmi/DMMMIView;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/dm/DMService;)V

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

    invoke-static {p0, v0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 21
    iget-object v0, p0, Lcom/asus/dm/mmi/DMConfirmation;->mService:Lcom/asus/dm/DMService;

    invoke-virtual {v0, p2}, Lcom/asus/dm/DMService;->setDefaultConfirmResult(Lcom/asus/dmlib/vdm/MmiConfirmation$ConfirmCommand;)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/asus/dm/mmi/DMConfirmation;->setupUIAlertParaDescriptor(Lcom/asus/dmlib/vdm/MmiViewContext;)Lcom/asus/dm/UIAlertParaDescriptor;

    move-result-object v0

    sget-object v1, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_CONFIRM:Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {p0, v0, v1}, Lcom/asus/dm/mmi/DMConfirmation;->notifyDMServiceShowUIAlertDialog(Lcom/asus/dm/UIAlertParaDescriptor;Lcom/asus/dm/DMService$DialogId;)V

    .line 25
    sget-object v0, Lcom/asus/dmlib/vdm/MmiResult;->OK:Lcom/asus/dmlib/vdm/MmiResult;

    return-object v0
.end method
