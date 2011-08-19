.class Lcom/android/email/activity/setup/AccountSetupOptions$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

.field final synthetic val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

.field final synthetic val$calendar2:Z

.field final synthetic val$contacts2:Z

.field final synthetic val$email2:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-boolean p3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$email2:Z

    iput-boolean p4, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$calendar2:Z

    iput-boolean p5, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$contacts2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    .line 258
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 259
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$account:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$email2:Z

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$calendar2:Z

    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$contacts2:Z

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v5, v5, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static/range {v0 .. v5}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;ZZZLandroid/accounts/AccountManagerCallback;)V

    .line 261
    return-void
.end method
