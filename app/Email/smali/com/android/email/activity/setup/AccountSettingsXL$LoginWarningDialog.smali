.class public Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;
.super Landroid/app/DialogFragment;
.source "AccountSettingsXL.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginWarningDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 777
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;
    .locals 3
    .parameter "accountName"

    .prologue
    .line 785
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;-><init>()V

    .line 786
    .local v1, dialog:Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 787
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "account_name"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;->setArguments(Landroid/os/Bundle;)V

    .line 789
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;->dismiss()V

    .line 811
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 814
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, accountName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$LoginWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 797
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 798
    .local v3, res:Landroid/content/res/Resources;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 799
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f08012a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 800
    const v4, 0x1010355

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 801
    const v4, 0x7f08012b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 803
    const v4, 0x7f08001f

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 804
    const v4, 0x7f080020

    invoke-virtual {v1, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 805
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
