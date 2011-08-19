.class public Lcom/asus/dm/mmi/DMMMIFactory;
.super Ljava/lang/Object;
.source "DMMMIFactory.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/MmiFactory;


# instance fields
.field mService:Lcom/asus/dm/DMService;

.field mTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/asus/dm/DMService;)V
    .locals 1
    .parameter "pTv"
    .parameter "pService"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/dm/mmi/DMMMIFactory;->mService:Lcom/asus/dm/DMService;

    .line 19
    iput-object p1, p0, Lcom/asus/dm/mmi/DMMMIFactory;->mTv:Landroid/widget/TextView;

    .line 20
    iput-object p2, p0, Lcom/asus/dm/mmi/DMMMIFactory;->mService:Lcom/asus/dm/DMService;

    .line 21
    return-void
.end method


# virtual methods
.method public createChoiceListDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiChoiceList;
    .locals 2
    .parameter "pObserver"

    .prologue
    .line 24
    new-instance v0, Lcom/asus/dm/mmi/DMChoiceList;

    iget-object v1, p0, Lcom/asus/dm/mmi/DMMMIFactory;->mService:Lcom/asus/dm/DMService;

    invoke-direct {v0, p1, v1}, Lcom/asus/dm/mmi/DMChoiceList;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/dm/DMService;)V

    return-object v0
.end method

.method public createConfirmationDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiConfirmation;
    .locals 2
    .parameter "pObserver"

    .prologue
    .line 28
    new-instance v0, Lcom/asus/dm/mmi/DMConfirmation;

    iget-object v1, p0, Lcom/asus/dm/mmi/DMMMIFactory;->mService:Lcom/asus/dm/DMService;

    invoke-direct {v0, p1, v1}, Lcom/asus/dm/mmi/DMConfirmation;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/dm/DMService;)V

    return-object v0
.end method

.method public createInfoMsgDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiInfoMsg;
    .locals 2
    .parameter "pObserver"

    .prologue
    .line 32
    new-instance v0, Lcom/asus/dm/mmi/DMInfoMesg;

    iget-object v1, p0, Lcom/asus/dm/mmi/DMMMIFactory;->mService:Lcom/asus/dm/DMService;

    invoke-direct {v0, p1, v1}, Lcom/asus/dm/mmi/DMInfoMesg;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/dm/DMService;)V

    return-object v0
.end method

.method public createInputQueryDlg(Lcom/asus/dmlib/vdm/MmiObserver;)Lcom/asus/dmlib/vdm/MmiInputQuery;
    .locals 2
    .parameter "pObserver"

    .prologue
    .line 36
    new-instance v0, Lcom/asus/dm/mmi/DMInputQuery;

    iget-object v1, p0, Lcom/asus/dm/mmi/DMMMIFactory;->mService:Lcom/asus/dm/DMService;

    invoke-direct {v0, p1, v1}, Lcom/asus/dm/mmi/DMInputQuery;-><init>(Lcom/asus/dmlib/vdm/MmiObserver;Lcom/asus/dm/DMService;)V

    return-object v0
.end method

.method public createProgress(I)Lcom/asus/dmlib/vdm/MmiProgress;
    .locals 3
    .parameter "pTotal"

    .prologue
    .line 40
    new-instance v0, Lcom/asus/dm/mmi/DMProgress;

    iget-object v1, p0, Lcom/asus/dm/mmi/DMMMIFactory;->mTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/asus/dm/mmi/DMMMIFactory;->mService:Lcom/asus/dm/DMService;

    invoke-direct {v0, p1, v1, v2}, Lcom/asus/dm/mmi/DMProgress;-><init>(ILandroid/widget/TextView;Lcom/asus/dm/DMService;)V

    return-object v0
.end method
