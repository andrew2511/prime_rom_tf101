.class Lcom/android/email/activity/setup/AccountSetupOptions$4;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->saveAccountAndFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    .line 358
    .local v1, context:Lcom/android/email/activity/setup/AccountSetupOptions;
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 359
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    and-int/lit8 v2, v2, -0x31

    iput v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mFlags:I

    .line 360
    invoke-static {v1, v0}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 362
    invoke-static {v1}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    .line 363
    invoke-static {v1}, Lcom/android/email/ExchangeUtils;->startExchangeService(Landroid/content/Context;)V

    .line 365
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupNames;->actionSetNames(Landroid/app/Activity;)V

    .line 366
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    invoke-virtual {v2}, Lcom/android/email/activity/setup/AccountSetupOptions;->finish()V

    .line 367
    return-void
.end method
