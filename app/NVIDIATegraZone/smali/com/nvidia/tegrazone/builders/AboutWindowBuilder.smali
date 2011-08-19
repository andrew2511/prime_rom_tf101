.class public Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;
.super Ljava/lang/Object;
.source "AboutWindowBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private aboutPopup:Landroid/app/AlertDialog;

.field private builder:Landroid/app/AlertDialog$Builder;

.field public callingActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->callingActivity:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method public dismissPopup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->aboutDismissBlocker:Ljava/lang/Boolean;

    .line 75
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 79
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->aboutWindowOpen:Ljava/lang/Boolean;

    .line 80
    return-void
.end method

.method public dismissPopupOnRotate()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->aboutDismissBlocker:Ljava/lang/Boolean;

    .line 84
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 90
    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    iget-object v0, v0, Lcom/nvidia/tegrazone/model/NVModel;->aboutDismissBlocker:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->aboutWindowOpen:Ljava/lang/Boolean;

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/nvidia/tegrazone/model/NVModel;->aboutDismissBlocker:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public showAboutWindow()V
    .locals 9

    .prologue
    const/high16 v8, 0x7f0a

    .line 33
    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 34
    :cond_0
    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const/high16 v7, 0x7f03

    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v5, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, aboutDialog:Landroid/view/View;
    const v5, 0x7f0a0003

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 38
    .local v4, versionLbl:Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v6

    iget-object v6, v6, Lcom/nvidia/tegrazone/model/NVModel;->versionName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v5, 0x7f0a0002

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 42
    .local v3, startBtn:Landroid/widget/Button;
    new-instance v5, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder$1;

    invoke-direct {v5, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder$1;-><init>(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v5, 0x7f0a0004

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 50
    .local v1, feedbackLbl:Landroid/widget/TextView;
    new-instance v5, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder$2;

    invoke-direct {v5, p0}, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder$2;-><init>(Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 59
    .local v2, rootScroll:Landroid/widget/ScrollView;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 62
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->callingActivity:Landroid/app/Activity;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->builder:Landroid/app/AlertDialog$Builder;

    .line 64
    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 65
    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    .line 66
    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 68
    iget-object v5, p0, Lcom/nvidia/tegrazone/builders/AboutWindowBuilder;->aboutPopup:Landroid/app/AlertDialog;

    invoke-virtual {v5, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 69
    invoke-static {}, Lcom/nvidia/tegrazone/model/NVModel;->getInstance()Lcom/nvidia/tegrazone/model/NVModel;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v5, Lcom/nvidia/tegrazone/model/NVModel;->aboutWindowOpen:Ljava/lang/Boolean;

    .line 71
    .end local v0           #aboutDialog:Landroid/view/View;
    .end local v1           #feedbackLbl:Landroid/widget/TextView;
    .end local v2           #rootScroll:Landroid/widget/ScrollView;
    .end local v3           #startBtn:Landroid/widget/Button;
    .end local v4           #versionLbl:Landroid/widget/TextView;
    :cond_1
    return-void
.end method
