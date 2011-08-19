.class Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$2;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 696
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 698
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 699
    .local v0, f:Landroid/app/Fragment;
    instance-of v1, v0, Lcom/android/email/activity/setup/AccountSettingsFragment;

    if-eqz v1, :cond_0

    .line 700
    check-cast v0, Lcom/android/email/activity/setup/AccountSettingsFragment;

    .end local v0           #f:Landroid/app/Fragment;
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1600(Lcom/android/email/activity/setup/AccountSettingsFragment;)V

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$2;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->dismiss()V

    .line 703
    return-void
.end method
