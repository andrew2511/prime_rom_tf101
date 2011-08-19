.class Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSettingsFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    return-void
.end method


# virtual methods
.method public abandonEdit()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    .line 548
    return-void
.end method

.method public deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 551
    return-void
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->onIncomingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 542
    return-void
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 544
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 545
    return-void
.end method

.method public onSettingsChanged(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "account"
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSettingsXL;->onSettingsChanged(Lcom/android/emailcommon/provider/EmailContent$Account;Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    return-void
.end method
