.class public Lcom/splashtop/remote/dialog/GestureHintDialog;
.super Landroid/app/AlertDialog;
.source "GestureHintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IRISView"


# instance fields
.field private layout:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 28
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/splashtop/remote/dialog/GestureHintDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 29
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, settings:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/splashtop/remote/dialog/GestureHintDialog;->layout:Landroid/view/View;

    const v3, 0x7f090015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 66
    .local v0, chkboxAlwaysShow:Landroid/widget/CheckBox;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "HINTCHECK"

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->dismiss()V

    .line 68
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 35
    .local v1, config:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000a

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/splashtop/remote/dialog/GestureHintDialog;->layout:Landroid/view/View;

    .line 40
    :goto_0
    iget-object v3, p0, Lcom/splashtop/remote/dialog/GestureHintDialog;->layout:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/splashtop/remote/dialog/GestureHintDialog;->setView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03000b

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 42
    .local v2, title:Landroid/widget/RelativeLayout;
    invoke-virtual {p0, v2}, Lcom/splashtop/remote/dialog/GestureHintDialog;->setCustomTitle(Landroid/view/View;)V

    .line 43
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/splashtop/remote/dialog/GestureHintDialog;->setCancelable(Z)V

    .line 45
    iget-object v3, p0, Lcom/splashtop/remote/dialog/GestureHintDialog;->layout:Landroid/view/View;

    const v4, 0x7f090014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, btnContinue:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    return-void

    .line 38
    .end local v0           #btnContinue:Landroid/widget/Button;
    .end local v2           #title:Landroid/widget/RelativeLayout;
    :cond_0
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030009

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/splashtop/remote/dialog/GestureHintDialog;->layout:Landroid/view/View;

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/splashtop/remote/dialog/GestureHintDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, settings:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/splashtop/remote/dialog/GestureHintDialog;->layout:Landroid/view/View;

    const v3, 0x7f090015

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 57
    .local v0, chkboxAlwaysShow:Landroid/widget/CheckBox;
    const-string v2, "HINTCHECK"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    return-void
.end method
