.class Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettingsXL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnsavedChangesDialogFragment"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 741
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 742
    return-void
.end method

.method public static newInstanceForBack()Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    .locals 4

    .prologue
    .line 733
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;-><init>()V

    .line 734
    .local v1, f:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 735
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "UnsavedChangesDialogFragment.Back"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 737
    return-object v1
.end method

.method public static newInstanceForHeader(I)Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    .locals 3
    .parameter "position"

    .prologue
    .line 721
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;-><init>()V

    .line 722
    .local v1, f:Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 723
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "UnsavedChangesDialogFragment.Header"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 724
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 725
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSettingsXL;

    .line 747
    .local v0, activity:Lcom/android/email/activity/setup/AccountSettingsXL;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "UnsavedChangesDialogFragment.Header"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 748
    .local v2, position:I
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "UnsavedChangesDialogFragment.Back"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 750
    .local v1, isBack:Z
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080129

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08001f

    new-instance v5, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;

    invoke-direct {v5, p0, v1, v0, v2}, Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL$UnsavedChangesDialogFragment;ZLcom/android/email/activity/setup/AccountSettingsXL;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080020

    invoke-virtual {v0, v4}, Lcom/android/email/activity/setup/AccountSettingsXL;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
