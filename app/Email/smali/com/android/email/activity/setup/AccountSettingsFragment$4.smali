.class Lcom/android/email/activity/setup/AccountSettingsFragment$4;
.super Ljava/lang/Object;
.source "AccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 433
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 435
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 436
    .local v1, summary:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 437
    .local v0, index:I
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v3}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    invoke-static {v2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1300(Lcom/android/email/activity/setup/AccountSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 439
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSettingsFragment$4;->this$0:Lcom/android/email/activity/setup/AccountSettingsFragment;

    const-string v3, "account_check_frequency"

    invoke-static {v2, v3, p2}, Lcom/android/email/activity/setup/AccountSettingsFragment;->access$1000(Lcom/android/email/activity/setup/AccountSettingsFragment;Ljava/lang/String;Ljava/lang/Object;)V

    .line 440
    const/4 v2, 0x0

    return v2
.end method
