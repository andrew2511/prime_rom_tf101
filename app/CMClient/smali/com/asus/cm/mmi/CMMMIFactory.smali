.class public Lcom/asus/cm/mmi/CMMMIFactory;
.super Ljava/lang/Object;
.source "CMMMIFactory.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/MmiFactory;


# instance fields
.field mService:Lcom/asus/cm/CMService;

.field mTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/asus/cm/CMService;)V
    .locals 1
    .parameter "pTv"
    .parameter "pService"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/cm/mmi/CMMMIFactory;->mService:Lcom/asus/cm/CMService;

    .line 19
    iput-object p1, p0, Lcom/asus/cm/mmi/CMMMIFactory;->mTv:Landroid/widget/TextView;

    .line 20
    iput-object p2, p0, Lcom/asus/cm/mmi/CMMMIFactory;->mService:Lcom/asus/cm/CMService;

    .line 21
    return-void
.end method


# virtual methods
.method public createChoiceListDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiChoiceList;
    .locals 2
    .parameter "pObserver"

    .prologue
    .line 24
    new-instance v0, Lcom/asus/cm/mmi/CMChoiceList;

    iget-object v1, p0, Lcom/asus/cm/mmi/CMMMIFactory;->mService:Lcom/asus/cm/CMService;

    invoke-direct {v0, p1, v1}, Lcom/asus/cm/mmi/CMChoiceList;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V

    return-object v0
.end method

.method public createConfirmationDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiConfirmation;
    .locals 2
    .parameter "pObserver"

    .prologue
    .line 28
    new-instance v0, Lcom/asus/cm/mmi/CMConfirmation;

    iget-object v1, p0, Lcom/asus/cm/mmi/CMMMIFactory;->mService:Lcom/asus/cm/CMService;

    invoke-direct {v0, p1, v1}, Lcom/asus/cm/mmi/CMConfirmation;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V

    return-object v0
.end method

.method public createInfoMsgDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiInfoMsg;
    .locals 2
    .parameter "pObserver"

    .prologue
    .line 32
    new-instance v0, Lcom/asus/cm/mmi/CMInfoMesg;

    iget-object v1, p0, Lcom/asus/cm/mmi/CMMMIFactory;->mService:Lcom/asus/cm/CMService;

    invoke-direct {v0, p1, v1}, Lcom/asus/cm/mmi/CMInfoMesg;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V

    return-object v0
.end method

.method public createInputQueryDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiInputQuery;
    .locals 2
    .parameter "pObserver"

    .prologue
    .line 36
    new-instance v0, Lcom/asus/cm/mmi/CMInputQuery;

    iget-object v1, p0, Lcom/asus/cm/mmi/CMMMIFactory;->mService:Lcom/asus/cm/CMService;

    invoke-direct {v0, p1, v1}, Lcom/asus/cm/mmi/CMInputQuery;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/cm/CMService;)V

    return-object v0
.end method

.method public createProgress(I)Lcom/asus/dmlib/vdm/MmiProgress;
    .locals 3
    .parameter "pTotal"

    .prologue
    .line 40
    new-instance v0, Lcom/asus/cm/mmi/CMProgress;

    iget-object v1, p0, Lcom/asus/cm/mmi/CMMMIFactory;->mTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/asus/cm/mmi/CMMMIFactory;->mService:Lcom/asus/cm/CMService;

    invoke-direct {v0, p1, v1, v2}, Lcom/asus/cm/mmi/CMProgress;-><init>(ILandroid/widget/TextView;Lcom/asus/cm/CMService;)V

    return-object v0
.end method
