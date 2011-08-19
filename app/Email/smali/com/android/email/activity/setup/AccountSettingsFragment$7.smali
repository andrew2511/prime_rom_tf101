.class Lcom/android/email/activity/setup/AccountSettingsFragment$7;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettingsFragment;->loadSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 537
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0, v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1502(Lcom/android/email/activity/setup/AccountSettingsFragment;Z)Z

    .line 538
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v0}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$7;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$400(Lcom/android/email/activity/setup/AccountSettingsFragment;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;->onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 539
    return v2
.end method
