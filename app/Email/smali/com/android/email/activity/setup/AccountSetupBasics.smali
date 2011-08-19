.class public Lcom/android/email/activity/setup/AccountSetupBasics;
.super Lcom/android/email/activity/setup/AccountSetupActivity;
.source "AccountSetupBasics.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/email/activity/setup/AccountCheckSettingsFragment$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;,
        Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;,
        Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;
    }
.end annotation


# instance fields
.field private final ACTION_CREATE_ACCOUNT:Ljava/lang/String;

.field private final DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

.field private final EXTRA_CREATE_ACCOUNT_EMAIL:Ljava/lang/String;

.field private final EXTRA_CREATE_ACCOUNT_INCOMING:Ljava/lang/String;

.field private final EXTRA_CREATE_ACCOUNT_OUTGOING:Ljava/lang/String;

.field private final EXTRA_CREATE_ACCOUNT_USER:Ljava/lang/String;

.field private mDefaultView:Landroid/widget/CheckBox;

.field private mEmailValidator:Lcom/android/email/EmailAddressValidator;

.field private mEmailView:Landroid/widget/EditText;

.field private mManualButton:Landroid/widget/Button;

.field private mNextButton:Landroid/widget/Button;

.field private mNextButtonInhibit:Z

.field private mOwnerLookupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOwnerLookupTask:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPasswordView:Landroid/widget/EditText;

.field private mPaused:Z

.field private mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

.field private mReportAccountAuthenticatorError:Z

.field private mWelcomeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;-><init>()V

    .line 98
    const-string v0, "com.android.email.CREATE_ACCOUNT"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->ACTION_CREATE_ACCOUNT:Ljava/lang/String;

    .line 99
    const-string v0, "EMAIL"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_EMAIL:Ljava/lang/String;

    .line 100
    const-string v0, "USER"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_USER:Ljava/lang/String;

    .line 101
    const-string v0, "INCOMING"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_INCOMING:Ljava/lang/String;

    .line 102
    const-string v0, "OUTGOING"

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->EXTRA_CREATE_ACCOUNT_OUTGOING:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    .line 115
    new-instance v0, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v0}, Lcom/android/email/EmailAddressValidator;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    .line 400
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/setup/AccountSetupBasics$2;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    .line 685
    return-void
.end method

.method static synthetic access$102(Lcom/android/email/activity/setup/AccountSetupBasics;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/email/activity/setup/AccountSetupBasics;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/setup/AccountSetupBasics;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    return-void
.end method

.method public static actionAccountCreateFinished(Landroid/app/Activity;J)V
    .locals 1
    .parameter "fromActivity"
    .parameter "accountId"

    .prologue
    .line 160
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/email/activity/setup/AccountSetupBasics$1;-><init>(Landroid/app/Activity;J)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 170
    return-void
.end method

.method public static actionAccountCreateFinishedAccountFlow(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 154
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method public static actionNewAccount(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method public static actionSetupExchangeIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public static actionSetupPopImapIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter

    .prologue
    .line 145
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 146
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private finishAutoSetup()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 419
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, email:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 421
    .local v7, password:Ljava/lang/String;
    const-string v11, "@"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 422
    .local v4, emailParts:[Ljava/lang/String;
    aget-object v10, v4, v12

    .line 423
    .local v10, user:Ljava/lang/String;
    aget-object v1, v4, v13

    .line 426
    .local v1, domain:Ljava/lang/String;
    :try_start_0
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v5, v11, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUsernameTemplate:Ljava/lang/String;

    .line 427
    .local v5, incomingUsername:Ljava/lang/String;
    const-string v11, "\\$email"

    invoke-virtual {v5, v11, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 428
    const-string v11, "\\$user"

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 429
    const-string v11, "\\$domain"

    invoke-virtual {v5, v11, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 431
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 432
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 433
    .local v8, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v11, v11, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->incomingUriTemplate:Ljava/lang/String;

    invoke-static {v8, v11}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 434
    invoke-virtual {v8, v5, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v6, v11, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUsernameTemplate:Ljava/lang/String;

    .line 437
    .local v6, outgoingUsername:Ljava/lang/String;
    const-string v11, "\\$email"

    invoke-virtual {v6, v11, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 438
    const-string v11, "\\$user"

    invoke-virtual {v6, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 439
    const-string v11, "\\$domain"

    invoke-virtual {v6, v11, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 441
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v9

    .line 442
    .local v9, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v11, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v11, v11, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->outgoingUriTemplate:Ljava/lang/String;

    invoke-static {v9, v11}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 443
    invoke-virtual {v9, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v12}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v12

    invoke-direct {p0, v11, v3, v12}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 450
    new-instance v11, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;

    iget-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    invoke-direct {v11, p0, p0, v12, v5}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Void;

    invoke-virtual {v11, v12}, Lcom/android/email/activity/setup/AccountSetupBasics$DuplicateCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    .end local v5           #incomingUsername:Ljava/lang/String;
    .end local v6           #outgoingUsername:Ljava/lang/String;
    .end local v8           #recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v9           #sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 458
    .local v2, e:Ljava/net/URISyntaxException;
    invoke-direct {p0, v13}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0
.end method

.method private forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "email"
    .parameter "user"
    .parameter "incoming"
    .parameter "outgoing"

    .prologue
    .line 586
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 588
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    .line 589
    .local v2, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-static {v2, p3}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 592
    .local v3, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-static {v3, p4}, Lcom/android/emailcommon/utility/Utility;->setHostAuthFromString(Lcom/android/emailcommon/provider/EmailContent$HostAuth;Ljava/lang/String;)V

    .line 594
    const/4 v4, 0x0

    invoke-direct {p0, p2, p1, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v2           #recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    .end local v3           #sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 597
    .local v1, e:Ljava/net/URISyntaxException;
    const v4, 0x7f0800bf

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getOwnerName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 390
    .local v1, result:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-object v1

    .line 392
    :catch_0
    move-exception v2

    goto :goto_0

    .line 391
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private onEnableProceedButtons(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 678
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 679
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 680
    return-void
.end method

.method private onManualSetup(Z)V
    .locals 11
    .parameter "allowAutoDiscover"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 543
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, email:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 545
    .local v4, password:Ljava/lang/String;
    const-string v8, "@"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 546
    .local v3, emailParts:[Ljava/lang/String;
    aget-object v8, v3, v9

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 547
    .local v7, user:Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, domain:Ljava/lang/String;
    const-string v8, "d@d.d"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "debug"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 553
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    const-string v9, ""

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 555
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSettingsXL;->actionSettingsWithDebug(Landroid/content/Context;)V

    .line 572
    :goto_0
    return-void

    .line 559
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 560
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v5

    .line 561
    .local v5, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-virtual {v5, v7, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const-string v8, "placeholder"

    invoke-virtual {v5, v8, v1, v10, v9}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 564
    invoke-virtual {v0, p0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    .line 565
    .local v6, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    invoke-virtual {v6, v7, v4}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v8, "placeholder"

    invoke-virtual {v6, v8, v1, v10, v9}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 568
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getOwnerName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    invoke-direct {p0, v8, v2, v9}, Lcom/android/email/activity/setup/AccountSetupBasics;->populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 570
    invoke-static {p1}, Lcom/android/email/activity/setup/SetupData;->setAllowAutodiscover(Z)V

    .line 571
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupAccountType;->actionSelectAccountType(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private onNext()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 515
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v4

    if-eq v4, v5, :cond_1

    .line 516
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, email:Ljava/lang/String;
    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, emailParts:[Ljava/lang/String;
    aget-object v4, v3, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, domain:Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->findProviderForDomain(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-result-object v4

    iput-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 520
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v4, :cond_1

    .line 521
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v4, v4, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 522
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    iget-object v4, v4, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;->note:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;

    move-result-object v0

    .line 524
    .local v0, dialogFragment:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "NoteDialogFragment"

    invoke-virtual {v0, v4, v5}, Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 533
    .end local v0           #dialogFragment:Lcom/android/email/activity/setup/AccountSetupBasics$NoteDialogFragment;
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #emailParts:[Ljava/lang/String;
    :goto_0
    return-void

    .line 526
    .restart local v1       #domain:Ljava/lang/String;
    .restart local v2       #email:Ljava/lang/String;
    .restart local v3       #emailParts:[Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finishAutoSetup()V

    goto :goto_0

    .line 532
    .end local v1           #domain:Ljava/lang/String;
    .end local v2           #email:Ljava/lang/String;
    .end local v3           #emailParts:[Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0
.end method

.method private populateSetupData(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "senderName"
    .parameter "senderEmail"
    .parameter "isDefault"

    .prologue
    .line 606
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 607
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual {v0, p1}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSenderName(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setEmailAddress(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v0, p2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDisplayName(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0, p3}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDefaultAccount(Z)V

    .line 611
    invoke-static {p3}, Lcom/android/email/activity/setup/SetupData;->setDefault(Z)V

    .line 612
    const/high16 v2, 0x7f08

    invoke-virtual {p0, v2}, Lcom/android/email/activity/setup/AccountSetupBasics;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSignature(Ljava/lang/String;)V

    .line 614
    iget-object v2, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    .line 616
    .local v1, protocol:Ljava/lang/String;
    const-string v2, "imap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 619
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 622
    :cond_0
    const-string v2, "eas"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 623
    const/4 v2, -0x2

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_1
    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->setSyncInterval(I)V

    goto :goto_0
.end method

.method private validateFields()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailValidator:Lcom/android/email/EmailAddressValidator;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/email/EmailAddressValidator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 378
    .local v0, valid:Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    .line 381
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    invoke-static {p0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 382
    return-void

    .line 375
    .end local v0           #valid:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->validateFields()V

    .line 360
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 366
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 317
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    if-eqz v1, :cond_0

    .line 318
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;

    move-result-object v0

    .line 320
    .local v0, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    if-eqz v0, :cond_0

    .line 321
    const/4 v1, 0x4

    const-string v2, "canceled"

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountAuthenticatorResponse;->onError(ILjava/lang/String;)V

    .line 322
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 325
    .end local v0           #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    :cond_0
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->finish()V

    .line 326
    return-void
.end method

.method public onAutoDiscoverComplete(ILcom/android/emailcommon/provider/EmailContent$HostAuth;)V
    .locals 1
    .parameter "result"
    .parameter "hostAuth"

    .prologue
    .line 652
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onCheckSettingsComplete(I)V
    .locals 1
    .parameter "result"

    .prologue
    .line 639
    if-nez p1, :cond_0

    .line 640
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSetupOptions;->actionOptions(Landroid/app/Activity;)V

    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 642
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 644
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 344
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    if-nez v0, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onNext()V

    goto :goto_0

    .line 350
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/setup/AccountSetupBasics;->onManualSetup(Z)V

    goto :goto_0

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f001a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 174
    invoke-super/range {p0 .. p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-static/range {p0 .. p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, action:Ljava/lang/String;
    const-string v18, "com.android.email.CREATE_ACCOUNT"

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 181
    const/16 v18, 0x4

    invoke-static/range {v18 .. v18}, Lcom/android/email/activity/setup/SetupData;->init(I)V

    .line 184
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v10

    .line 185
    .local v10, flowMode:I
    const/16 v18, 0x5

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    .line 299
    .end local p1
    :goto_0
    return-void

    .line 189
    .restart local p1
    :cond_1
    const/16 v18, 0x6

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 190
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    .line 191
    .local v5, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-eqz v5, :cond_2

    move-object v0, v5

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-ltz v18, :cond_2

    .line 193
    move-object v0, v5

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/Welcome;->actionOpenAccountInbox(Landroid/app/Activity;J)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto :goto_0

    .line 199
    .end local v5           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :cond_2
    const v18, 0x7f040009

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setContentView(I)V

    .line 201
    const v18, 0x7f0f0017

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    .line 202
    const v18, 0x7f0f001d

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    .line 203
    const v18, 0x7f0f001e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    .line 204
    const v18, 0x7f0f0020

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mDefaultView:Landroid/widget/CheckBox;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 211
    new-instance v18, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Void;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/email/activity/setup/AccountSetupBasics$DisplayCheckboxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    const/4 v13, 0x1

    .line 214
    .local v13, manualButtonDisplayed:Z
    const/4 v7, 0x0

    .line 215
    .local v7, alternateStrings:Z
    const/16 v18, 0x1

    move v0, v10

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 217
    const/4 v13, 0x0

    .line 219
    invoke-static/range {p0 .. p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v7

    .line 220
    if-eqz v7, :cond_7

    const v18, 0x7f0800b6

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->setTitle(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mWelcomeView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v7, :cond_8

    const v19, 0x7f0800ba

    :goto_2
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(I)V

    .line 229
    :cond_3
    const v18, 0x7f0f001a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    .line 230
    const v18, 0x7f0f001b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    if-eqz v13, :cond_9

    const/16 v19, 0x0

    :goto_3
    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mManualButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onEnableProceedButtons(Z)V

    .line 237
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mNextButtonInhibit:Z

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string v19, "accountAuthenticatorResponse"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/accounts/AccountAuthenticatorResponse;

    .line 242
    .local v8, authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    invoke-static {v8}, Lcom/android/email/activity/setup/SetupData;->setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V

    .line 243
    if-eqz v8, :cond_4

    .line 249
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mReportAccountAuthenticatorError:Z

    .line 253
    :cond_4
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getUsername()Ljava/lang/String;

    move-result-object v17

    .line 254
    .local v17, userName:Ljava/lang/String;
    if-eqz v17, :cond_5

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mEmailView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 256
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/email/activity/setup/SetupData;->setUsername(Ljava/lang/String;)V

    .line 258
    :cond_5
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getPassword()Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, password:Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/email/activity/setup/SetupData;->setPassword(Ljava/lang/String;)V

    .line 266
    :cond_6
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->DEBUG_ALLOW_NON_TEST_HARNESS_CREATION:Ljava/lang/Boolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_a

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v18

    if-nez v18, :cond_a

    .line 269
    const-string v18, "Email"

    const-string v19, "ERROR: Force account create only allowed while in test harness"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_0

    .line 220
    .end local v8           #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    .end local v15           #password:Ljava/lang/String;
    .end local v17           #userName:Ljava/lang/String;
    :cond_7
    const v18, 0x7f0800b5

    goto/16 :goto_1

    .line 223
    :cond_8
    const v19, 0x7f0800b9

    goto/16 :goto_2

    .line 231
    :cond_9
    const/16 v19, 0x4

    goto/16 :goto_3

    .line 274
    .restart local v8       #authenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;
    .restart local v15       #password:Ljava/lang/String;
    .restart local v17       #userName:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 275
    .local v12, intent:Landroid/content/Intent;
    const-string v18, "EMAIL"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 276
    .local v9, email:Ljava/lang/String;
    const-string v18, "USER"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 277
    .local v16, user:Ljava/lang/String;
    const-string v18, "INCOMING"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 278
    .local v11, incoming:Ljava/lang/String;
    const-string v18, "OUTGOING"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 279
    .local v14, outgoing:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_b

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 281
    :cond_b
    const-string v18, "Email"

    const-string v19, "ERROR: Force account create requires extras EMAIL, USER, INCOMING, OUTGOING"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/setup/AccountSetupBasics;->finish()V

    goto/16 :goto_0

    .line 286
    :cond_c
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move-object v3, v11

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/email/activity/setup/AccountSetupBasics;->forceCreateAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/email/activity/setup/AccountSetupBasics;->onCheckSettingsComplete(I)V

    goto/16 :goto_0

    .line 291
    .end local v9           #email:Ljava/lang/String;
    .end local v11           #incoming:Ljava/lang/String;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #outgoing:Ljava/lang/String;
    .end local v16           #user:Ljava/lang/String;
    :cond_d
    if-eqz p1, :cond_e

    const-string v18, "AccountSetupBasics.provider"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 292
    const-string v18, "AccountSetupBasics.provider"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    .line 297
    :cond_e
    new-instance v18, Ljava/util/concurrent/FutureTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupCallable:Ljava/util/concurrent/Callable;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountSetupBasics;->mOwnerLookupTask:Ljava/util/concurrent/FutureTask;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onPause()V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 305
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountSetupActivity;->onResume()V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mPaused:Z

    .line 311
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountSetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 331
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    if-eqz v0, :cond_0

    .line 332
    const-string v0, "AccountSetupBasics.provider"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics;->mProvider:Lcom/android/email/activity/setup/AccountSettingsUtils$Provider;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 334
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 372
    return-void
.end method
