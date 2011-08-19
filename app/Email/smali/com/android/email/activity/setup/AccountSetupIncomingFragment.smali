.class public Lcom/android/email/activity/setup/AccountSetupIncomingFragment;
.super Lcom/android/email/activity/setup/AccountServerBaseFragment;
.source "AccountSetupIncomingFragment.java"


# instance fields
.field private mCacheLoginCredential:Ljava/lang/String;

.field private mConfigured:Z

.field private mDeletePolicyLabelView:Landroid/widget/TextView;

.field private mDeletePolicyView:Landroid/widget/Spinner;

.field private mImapPathPrefixSectionView:Landroid/view/View;

.field private mImapPathPrefixView:Landroid/widget/EditText;

.field private mLoaded:Z

.field private mLoadedDeletePolicy:I

.field private mPasswordView:Landroid/widget/EditText;

.field private mPortView:Landroid/widget/EditText;

.field private mSecurityTypeView:Landroid/widget/Spinner;

.field private mServerLabelView:Landroid/widget/TextView;

.field private mServerView:Landroid/widget/EditText;

.field private mStarted:Z

.field private mUsernameView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    return-void
.end method

.method private configureEditor()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 281
    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    if-eqz v1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 284
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    if-nez v0, :cond_1

    .line 285
    const-string v1, "Email"

    const-string v2, "account is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 287
    :cond_1
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    if-nez v1, :cond_2

    .line 288
    const-string v1, "Email"

    const-string v2, "account.mHostAuthRecv is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_2
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    .line 293
    const-string v1, "pop3"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 294
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    const v2, 0x7f0800d6

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    goto :goto_0

    .line 296
    :cond_3
    const-string v1, "imap"

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 297
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    const v2, 0x7f0800d7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 298
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyLabelView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 299
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 301
    :cond_4
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown account type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPortFromSecurityType()I
    .locals 5

    .prologue
    .line 384
    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v3, v3, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 385
    .local v1, securityType:I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move v2, v3

    .line 386
    .local v2, useSsl:Z
    :goto_0
    if-eqz v2, :cond_2

    const/16 v3, 0x3e1

    move v0, v3

    .line 387
    .local v0, port:I
    :goto_1
    const-string v3, "pop3"

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    if-eqz v2, :cond_3

    const/16 v3, 0x3e3

    move v0, v3

    .line 390
    :cond_0
    :goto_2
    return v0

    .line 385
    .end local v0           #port:I
    .end local v2           #useSsl:Z
    :cond_1
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 386
    .restart local v2       #useSsl:Z
    :cond_2
    const/16 v3, 0x8f

    move v0, v3

    goto :goto_1

    .line 388
    .restart local v0       #port:I
    :cond_3
    const/16 v3, 0x6e

    move v0, v3

    goto :goto_2
.end method

.method private loadSettings()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 310
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    if-eqz v8, :cond_0

    .line 359
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 313
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v6

    .line 315
    .local v6, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v7, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    .line 316
    .local v7, username:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 317
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_1
    iget-object v3, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    .line 320
    .local v3, password:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 321
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    :cond_2
    const-string v8, "imap"

    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 325
    iget-object v5, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 326
    .local v5, prefix:Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 327
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 337
    .end local v5           #prefix:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getDeletePolicy()I

    move-result v8

    iput v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    .line 338
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    iget v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 340
    iget v1, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    .line 341
    .local v1, flags:I
    and-int/lit8 v1, v1, -0x5

    .line 342
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/email/activity/setup/SpinnerOption;->setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V

    .line 344
    iget-object v2, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    .line 345
    .local v2, hostname:Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 346
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_4
    iget v4, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    .line 350
    .local v4, port:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_6

    .line 351
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 356
    :goto_1
    iput-object v6, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedRecvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    .line 357
    iput-boolean v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    .line 358
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    goto :goto_0

    .line 329
    .end local v1           #flags:I
    .end local v2           #hostname:Ljava/lang/String;
    .end local v4           #port:I
    :cond_5
    const-string v8, "pop3"

    iget-object v9, v6, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 331
    new-instance v8, Ljava/lang/Error;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown account type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->getStoreUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v8

    .line 353
    .restart local v1       #flags:I
    .restart local v2       #hostname:Ljava/lang/String;
    .restart local v4       #port:I
    :cond_6
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->updatePortFromSecurityType()V

    goto :goto_1
.end method

.method private updatePortFromSecurityType()V
    .locals 3

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getPortFromSecurityType()I

    move-result v0

    .line 395
    .local v0, port:I
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 396
    return-void
.end method

.method private validateFields()V
    .locals 4

    .prologue
    .line 365
    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mConfigured:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    if-nez v2, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isTextViewNotEmpty(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->isPortFieldValid(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move v0, v2

    .line 370
    .local v0, enabled:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 372
    :try_start_0
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getUri()Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :cond_2
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->enableNextButton(Z)V

    .line 380
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/android/email/activity/setup/AccountSettingsUtils;->checkPasswordSpaces(Landroid/content/Context;Landroid/widget/EditText;)V

    goto :goto_0

    .line 366
    .end local v0           #enabled:Z
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 373
    .restart local v0       #enabled:Z
    :catch_0
    move-exception v1

    .line 374
    .local v1, use:Ljava/net/URISyntaxException;
    const/4 v0, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected getUri()Ljava/net/URI;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 437
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v1, v1, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 438
    .local v8, securityType:I
    const/4 v5, 0x0

    .line 439
    .local v5, path:Ljava/lang/String;
    const-string v1, "imap"

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 442
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 443
    .local v9, userName:Ljava/lang/String;
    iput-object v9, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, userInfo:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, host:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 448
    .local v4, port:I
    new-instance v0, Ljava/net/URI;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->getSchemeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    .local v0, uri:Ljava/net/URI;
    return-object v0
.end method

.method public haveSettingsChanged()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 494
    const/4 v0, 0x0

    .line 497
    .local v0, deletePolicyChanged:Z
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 498
    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v2, v2, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 500
    .local v1, newDeletePolicy:I
    iget v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoadedDeletePolicy:I

    if-eq v2, v1, :cond_2

    move v0, v4

    .line 503
    .end local v1           #newDeletePolicy:I
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->haveSettingsChanged()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v2, v4

    :goto_1
    return v2

    .restart local v1       #newDeletePolicy:I
    :cond_2
    move v0, v3

    .line 500
    goto :goto_0

    .end local v1           #newDeletePolicy:I
    :cond_3
    move v2, v3

    .line 503
    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    const-string v0, "AccountSetupIncomingFragment.credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    .line 96
    const-string v0, "AccountSetupIncomingFragment.loaded"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    .line 98
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 106
    iget-boolean v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSettingsMode:Z

    if-eqz v8, :cond_0

    const v8, 0x7f040006

    move v3, v8

    .line 110
    .local v3, layoutId:I
    :goto_0
    const/4 v8, 0x0

    invoke-virtual {p1, v3, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 111
    .local v7, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 113
    .local v0, context:Landroid/content/Context;
    const v8, 0x7f0f0023

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    .line 114
    const v8, 0x7f0f001e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    .line 115
    const v8, 0x7f0f0029

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerLabelView:Landroid/widget/TextView;

    .line 116
    const v8, 0x7f0f0024

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    .line 117
    const v8, 0x7f0f002a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    .line 118
    const v8, 0x7f0f002b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    .line 119
    const v8, 0x7f0f002c

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyLabelView:Landroid/widget/TextView;

    .line 120
    const v8, 0x7f0f002d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    .line 121
    const v8, 0x7f0f002e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixSectionView:Landroid/view/View;

    .line 122
    const v8, 0x7f0f002f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mImapPathPrefixView:Landroid/widget/EditText;

    .line 125
    const/4 v8, 0x5

    new-array v4, v8, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800da

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800dc

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800db

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x3

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800de

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    const/4 v8, 0x4

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800dd

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v4, v8

    .line 138
    .local v4, securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    const/4 v8, 0x2

    new-array v1, v8, [Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v8, 0x0

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/android/email/activity/setup/SpinnerOption;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const v11, 0x7f0800e1

    invoke-virtual {v0, v11}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/android/email/activity/setup/SpinnerOption;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v1, v8

    .line 145
    .local v1, deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v5, v0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 147
    .local v5, securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v8, 0x1090009

    invoke-virtual {v5, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 148
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v8, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 150
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v8, 0x1090008

    invoke-direct {v2, v0, v8, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 152
    .local v2, deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    const v8, 0x1090009

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 154
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 158
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    new-instance v9, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;

    invoke-direct {v9, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$1;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 167
    new-instance v6, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;

    invoke-direct {v6, p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment$2;-><init>(Lcom/android/email/activity/setup/AccountSetupIncomingFragment;)V

    .line 175
    .local v6, validationTextWatcher:Landroid/text/TextWatcher;
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 176
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 177
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    iget-object v8, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    const-string v9, "0123456789"

    invoke-static {v9}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 184
    invoke-virtual {p0, v7}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->onCreateViewSettingsMode(Landroid/view/View;)V

    .line 186
    return-object v7

    .line 106
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #deletePolicies:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v2           #deletePoliciesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v3           #layoutId:I
    .end local v4           #securityTypes:[Lcom/android/email/activity/setup/SpinnerOption;
    .end local v5           #securityTypesAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/android/email/activity/setup/SpinnerOption;>;"
    .end local v6           #validationTextWatcher:Landroid/text/TextWatcher;
    .end local v7           #view:Landroid/view/View;
    .restart local p1
    :cond_0
    const v8, 0x7f04000e

    move v3, v8

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onDestroy()V

    .line 252
    return-void
.end method

.method public onNext()V
    .locals 13

    .prologue
    .line 464
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v6

    .line 466
    .local v6, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mDeletePolicyView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->setDeletePolicy(I)V

    .line 469
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v8

    .line 470
    .local v8, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mUsernameView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 471
    .local v11, userName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 472
    .local v12, userPassword:Ljava/lang/String;
    invoke-virtual {v8, v11, v12}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mServerView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, serverAddress:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mPortView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 482
    .local v10, serverPort:I
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mSecurityTypeView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/SpinnerOption;

    iget-object v0, v0, Lcom/android/email/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 483
    .local v9, securityType:I
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mBaseScheme:Ljava/lang/String;

    invoke-virtual {v8, v0, v3, v10, v9}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 484
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mDomain:Ljava/lang/String;

    .line 488
    iget-wide v1, v6, Lcom/android/emailcommon/provider/EmailContent$Account;->mId:J

    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->startDuplicateTaskCheck(JLjava/lang/String;Ljava/lang/String;I)V

    .line 490
    return-void

    .line 478
    .end local v9           #securityType:I
    .end local v10           #serverPort:I
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 479
    .local v7, e:Ljava/lang/NumberFormatException;
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->getPortFromSecurityType()I

    move-result v10

    .line 480
    .restart local v10       #serverPort:I
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-integer server port; using \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 228
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onPause()V

    .line 229
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onResume()V

    .line 220
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->validateFields()V

    .line 221
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 261
    const-string v0, "AccountSetupIncomingFragment.credential"

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mCacheLoginCredential:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v0, "AccountSetupIncomingFragment.loaded"

    iget-boolean v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mLoaded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 263
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStart()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    .line 207
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->configureEditor()V

    .line 208
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->loadSettings()V

    .line 209
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->onStop()V

    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    .line 241
    return-void
.end method

.method public saveSettingsAfterEdit()V
    .locals 4

    .prologue
    .line 406
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 407
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 408
    iget-object v1, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    iget-object v2, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthRecv:Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    invoke-virtual {v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 410
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/email/AccountBackupRestore;->backupAccounts(Landroid/content/Context;)V

    .line 411
    return-void
.end method

.method public saveSettingsAfterSetup()V
    .locals 7

    .prologue
    .line 418
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v0

    .line 419
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthRecv(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v2

    .line 420
    .local v2, recvAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/provider/EmailContent$Account;->getOrCreateHostAuthSend(Landroid/content/Context;)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v3

    .line 425
    .local v3, sendAuth:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mAddress:Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "smtp"

    invoke-static {v4, v5, v6}, Lcom/android/email/activity/setup/AccountSettingsUtils;->inferServerName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, hostName:Ljava/lang/String;
    iget-object v4, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mLogin:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v4, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mProtocol:Ljava/lang/String;

    iget v5, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mPort:I

    iget v6, v3, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    invoke-virtual {v3, v4, v1, v5, v6}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->setConnection(Ljava/lang/String;Ljava/lang/String;II)V

    .line 428
    return-void
.end method

.method public setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 270
    invoke-super {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->setCallback(Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;)V

    .line 271
    iget-boolean v0, p0, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->mStarted:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->configureEditor()V

    .line 273
    invoke-direct {p0}, Lcom/android/email/activity/setup/AccountSetupIncomingFragment;->loadSettings()V

    .line 275
    :cond_0
    return-void
.end method
