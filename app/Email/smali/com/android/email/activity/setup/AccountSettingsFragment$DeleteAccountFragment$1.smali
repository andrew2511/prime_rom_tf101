.class Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$1;
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
    .line 707
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment$1;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment$DeleteAccountFragment;->dismiss()V

    .line 710
    return-void
.end method
