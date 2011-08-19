.class public Lcom/nvidia/tegrazone/builders/NonTegraBuilder;
.super Ljava/lang/Object;
.source "NonTegraBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private builder:Landroid/app/AlertDialog$Builder;

.field public callingActivity:Landroid/app/Activity;

.field private nonTZPopup:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->callingActivity:Landroid/app/Activity;

    .line 28
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->nonTZDismissBlocker:Ljava/lang/Boolean;

    .line 62
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->nonTZPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->nonTZPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->nonTZPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 66
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->nonTZWindowOpen:Ljava/lang/Boolean;

    .line 67
    return-void
.end method

.method public dismissPopupOnRotate()V
    .locals 2

    .prologue
    .line 70
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->nonTZDismissBlocker:Ljava/lang/Boolean;

    .line 71
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->nonTZPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->nonTZPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->nonTZPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->nonTZPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 77
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->nonTZDismissBlocker:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->nonTZWindowOpen:Ljava/lang/Boolean;

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->nonTZDismissBlocker:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public showWindow()V
    .locals 7

    .prologue
    .line 31
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002c

    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->callingActivity:Landroid/app/Activity;

    const/high16 v6, 0x7f0a

    invoke-virtual {v3, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, aboutDialog:Landroid/view/View;
    const v3, 0x7f0a00ad

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 35
    .local v2, startBtn:Landroid/widget/Button;
    new-instance v3, Lcom/nvidia/tegrazone/builders/NonTegraBuilder$1;

    invoke-direct {v3, p0}, Lcom/nvidia/tegrazone/builders/NonTegraBuilder$1;-><init>(Lcom/nvidia/tegrazone/builders/NonTegraBuilder;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v3, 0x7f0a00ae

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 43
    .local v1, feedbackLbl:Landroid/widget/TextView;
    new-instance v3, Lcom/nvidia/tegrazone/builders/NonTegraBuilder$2;

    invoke-direct {v3, p0}, Lcom/nvidia/tegrazone/builders/NonTegraBuilder$2;-><init>(Lcom/nvidia/tegrazone/builders/NonTegraBuilder;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->callingActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->builder:Landroid/app/AlertDialog$Builder;

    .line 52
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 53
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->nonTZPopup:Landroid/app/AlertDialog;

    .line 54
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->nonTZPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 56
    iget-object v3, p0, Lcom/nvidia/tegrazone/builders/NonTegraBuilder;->nonTZPopup:Landroid/app/AlertDialog;

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 57
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v3, Lcom/nvidia/tegrazone/model/NVModel;->nonTZWindowOpen:Ljava/lang/Boolean;

    .line 58
    return-void
.end method
