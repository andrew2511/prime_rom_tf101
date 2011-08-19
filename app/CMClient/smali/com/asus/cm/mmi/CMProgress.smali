.class public Lcom/asus/cm/mmi/CMProgress;
.super Ljava/lang/Object;
.source "CMProgress.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/MmiProgress;


# instance fields
.field private mService:Lcom/asus/cm/CMService;


# direct methods
.method public constructor <init>(ILandroid/widget/TextView;Lcom/asus/cm/CMService;)V
    .locals 1
    .parameter "pTotal"
    .parameter "pTextView"
    .parameter "pService"

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/cm/mmi/CMProgress;->mService:Lcom/asus/cm/CMService;

    .line 14
    iput-object p3, p0, Lcom/asus/cm/mmi/CMProgress;->mService:Lcom/asus/cm/CMService;

    .line 15
    return-void
.end method


# virtual methods
.method public update(II)V
    .locals 2
    .parameter "pCurrent"
    .parameter "pTotal"

    .prologue
    .line 20
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 22
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 23
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 24
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 25
    iget-object v1, p0, Lcom/asus/cm/mmi/CMProgress;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v1, v0}, Lcom/asus/cm/CMService;->sendMessage(Landroid/os/Message;)V

    .line 26
    return-void
.end method
