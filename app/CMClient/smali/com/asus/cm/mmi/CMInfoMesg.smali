.class public Lcom/asus/cm/mmi/CMInfoMesg;
.super Lcom/asus/cm/mmi/CMMMIView;
.source "CMInfoMesg.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/MmiInfoMsg;


# static fields
.field private static final DEBUG:Z


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "pObserver"
    .parameter "pService"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/asus/cm/mmi/CMMMIView;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V

    .line 15
    return-void
.end method


# virtual methods
.method public display(Lcom/asus/dmlib/vdm/MmiViewContext;Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;)Lcom/asus/dmlib/vdm/MmiResult;
    .locals 2
    .parameter "pContext"
    .parameter "pType"

    .prologue
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyInfoMsg.display\t InfoType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/asus/cm/mmi/CMInfoMesg;->setupUIAlertParaDescriptor(Lcom/asus/dmlib/vdm/MmiViewContext;)Lcom/asus/cm/UIAlertParaDescriptor;

    move-result-object v0

    sget-object v1, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_DISPLAY:Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {p0, v0, v1}, Lcom/asus/cm/mmi/CMInfoMesg;->notifyDMServiceShowUIAlertDialog(Lcom/asus/cm/UIAlertParaDescriptor;Lcom/asus/cm/CMService$DialogId;)V

    .line 23
    sget-object v0, Lcom/asus/dmlib/vdm/MmiResult;->OK:Lcom/asus/dmlib/vdm/MmiResult;

    return-object v0
.end method
