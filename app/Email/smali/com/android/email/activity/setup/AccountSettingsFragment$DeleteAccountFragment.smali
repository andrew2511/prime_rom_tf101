.class public Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;
.super Landroid/app/DialogFragment;
.source "AccountSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteAccountFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 667
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/EmailContent$Account;Landroid/app/Fragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;
    .locals 4
    .parameter "account"
    .parameter "parentFragment"

    .prologue
    .line 677
    new-instance v1, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;

    invoke-direct {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;-><init>()V

    .line 678
    .local v1, f:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 679
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "DeleteAccountFragment.Name"

    invoke-virtual {p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->setArguments(Landroid/os/Bundle;)V

    .line 681
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 682
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 688
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DeleteAccountFragment.Name"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, name:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08014c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08014d

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08001f

    new-instance v4, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$2;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080020

    new-instance v4, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$1;

    invoke-direct {v4, p0}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
