.class Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;
.super Ljava/lang/Object;
.source "MyPurchasesHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadPolicyDialogHelper"
.end annotation


# instance fields
.field private final dialog:Landroid/app/AlertDialog;

.field private final downloadWhenOnWifi:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 558
    iput-object p1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$500(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v3, 0x7f04

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 560
    .local v1, content:Landroid/view/View;
    const v0, 0x7f080007

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->downloadWhenOnWifi:Landroid/widget/RadioButton;

    .line 561
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {p1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$500(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x104000a

    invoke-virtual {v0, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->dialog:Landroid/app/AlertDialog;

    .line 564
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->dialog:Landroid/app/AlertDialog;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 565
    return-void
.end method

.method static synthetic access$400(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 568
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->downloadWhenOnWifi:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-static {v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$500(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c003c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 571
    .local v0, downloadPolicy:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-static {v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$600(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_policy"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_policy_dialog_shown"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 575
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-static {v1, v3}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$702(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;Z)Z

    .line 576
    return-void

    .line 568
    .end local v0           #downloadPolicy:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper$DownloadPolicyDialogHelper;->this$0:Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;

    invoke-static {v1}, Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;->access$500(Lcom/google/android/youtube/videos/ui/MyPurchasesHelper;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c003d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
