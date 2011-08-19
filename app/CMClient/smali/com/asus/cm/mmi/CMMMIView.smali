.class public Lcom/asus/cm/mmi/CMMMIView;
.super Ljava/lang/Object;
.source "CMMMIView.java"


# instance fields
.field protected mObserver:Lcom/asus/dmlib/vdm/MmiObserver;

.field mService:Lcom/asus/cm/CMService;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "pObserver"
    .parameter "pService"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/asus/cm/mmi/CMMMIView;->mObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    .line 16
    iput-object p2, p0, Lcom/asus/cm/mmi/CMMMIView;->mService:Lcom/asus/cm/CMService;

    .line 17
    return-void
.end method


# virtual methods
.method notifyDMServiceShowUIAlertDialog(Lcom/asus/cm/UIAlertParaDescriptor;Lcom/asus/cm/CMService$DialogId;)V
    .locals 3
    .parameter "pParaDescriptor"
    .parameter "pDialogId"

    .prologue
    .line 30
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 32
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 33
    invoke-virtual {p2}, Lcom/asus/cm/CMService$DialogId;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 35
    iget-object v1, p0, Lcom/asus/cm/mmi/CMMMIView;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v1, p1}, Lcom/asus/cm/CMService;->setUIAlertParaDescriptor(Lcom/asus/cm/UIAlertParaDescriptor;)V

    .line 36
    iget-object v1, p0, Lcom/asus/cm/mmi/CMMMIView;->mService:Lcom/asus/cm/CMService;

    iget-object v2, p0, Lcom/asus/cm/mmi/CMMMIView;->mObserver:Lcom/asus/dmlib/vdm/MmiObserver;

    invoke-virtual {v1, v2}, Lcom/asus/cm/CMService;->setMmiObserver(Lcom/asus/dmlib/vdm/MmiObserver;)V

    .line 37
    iget-object v1, p0, Lcom/asus/cm/mmi/CMMMIView;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v1, v0}, Lcom/asus/cm/CMService;->sendMessage(Landroid/os/Message;)V

    .line 38
    return-void
.end method

.method setupUIAlertParaDescriptor(Lcom/asus/dmlib/vdm/MmiViewContext;)Lcom/asus/cm/UIAlertParaDescriptor;
    .locals 2
    .parameter "pContext"

    .prologue
    .line 20
    new-instance v0, Lcom/asus/cm/UIAlertParaDescriptor;

    invoke-direct {v0}, Lcom/asus/cm/UIAlertParaDescriptor;-><init>()V

    .line 22
    .local v0, paraDescriptor:Lcom/asus/cm/UIAlertParaDescriptor;
    iget-object v1, p1, Lcom/asus/dmlib/vdm/MmiViewContext;->displayText:Ljava/lang/String;

    iput-object v1, v0, Lcom/asus/cm/UIAlertParaDescriptor;->mDialogContent:Ljava/lang/String;

    .line 23
    iget v1, p1, Lcom/asus/dmlib/vdm/MmiViewContext;->maxDT:I

    iput v1, v0, Lcom/asus/cm/UIAlertParaDescriptor;->mMaxTime:I

    .line 24
    iget v1, p1, Lcom/asus/dmlib/vdm/MmiViewContext;->minDT:I

    iput v1, v0, Lcom/asus/cm/UIAlertParaDescriptor;->mMinTime:I

    .line 26
    return-object v0
.end method
