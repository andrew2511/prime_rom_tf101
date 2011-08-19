.class public Lcom/google/android/gm/WaitActivity;
.super Lcom/google/android/gm/GmailBaseActivity;
.source "WaitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/gm/TwoPaneActionBar$Callback;


# static fields
.field private static sCurrentAccount:Landroid/accounts/Account;

.field private static sNewAccount:Ljava/lang/String;


# instance fields
.field private mCalledFromSettings:Z

.field private mLabelList:Lcom/google/android/gm/provider/LabelList;

.field mLabelsObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseActivity;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/WaitActivity;->mCalledFromSettings:Z

    .line 360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/WaitActivity;->mLabelsObserver:Landroid/database/DataSetObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/WaitActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/gm/WaitActivity;->onAccountsLoaded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/WaitActivity;)Lcom/google/android/gm/provider/LabelList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/WaitActivity;Lcom/google/android/gm/provider/LabelList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/WaitActivity;->labelsMayBeLoaded(Lcom/google/android/gm/provider/LabelList;Z)V

    return-void
.end method

.method static synthetic access$300()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/WaitActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/gm/WaitActivity;->waitForGmailAccount()V

    return-void
.end method

.method private static areLabelsOk(Lcom/google/android/gm/provider/LabelList;)Z
    .locals 1
    .parameter "labelList"

    .prologue
    .line 267
    const-string v0, "^i"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/LabelList;->get(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    .line 207
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/android/gm/Utils;->isValidGoogleAccount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private labelsMayBeLoaded(Lcom/google/android/gm/provider/LabelList;Z)V
    .locals 2
    .parameter "labelList"
    .parameter "unregisterOnSuccess"

    .prologue
    .line 363
    if-nez p1, :cond_1

    .line 364
    const-string v0, "Gmail"

    const-string v1, "labelList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-static {p1}, Lcom/google/android/gm/WaitActivity;->areLabelsOk(Lcom/google/android/gm/provider/LabelList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_2

    .line 369
    sget-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gm/WaitActivity;->startOriginalActivityWithSelectedAccount(Ljava/lang/String;)V

    .line 373
    :goto_1
    if-eqz p2, :cond_0

    .line 374
    invoke-direct {p0, p1}, Lcom/google/android/gm/WaitActivity;->unregisterObserver(Lcom/google/android/gm/provider/LabelList;)V

    goto :goto_0

    .line 371
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gm/WaitActivity;->startOriginalActivityAndFinish()V

    goto :goto_1
.end method

.method private onAccountsLoaded(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 261
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gm/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    invoke-direct {p0, p1}, Lcom/google/android/gm/WaitActivity;->waitForLabels(Ljava/lang/String;)V

    .line 263
    return-void
.end method

.method private startOriginalActivityAndFinish()V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/WaitActivity;->unwrapIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 387
    .local v0, original:Landroid/content/Intent;
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0, v0}, Lcom/google/android/gm/WaitActivity;->startActivity(Landroid/content/Intent;)V

    .line 389
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->finish()V

    .line 390
    return-void
.end method

.method private startOriginalActivityWithSelectedAccount(Ljava/lang/String;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/WaitActivity;->unwrapIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 394
    .local v0, original:Landroid/content/Intent;
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, v0}, Lcom/google/android/gm/WaitActivity;->startActivity(Landroid/content/Intent;)V

    .line 397
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->finish()V

    .line 398
    return-void
.end method

.method private static startWaitActivity(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/google/android/gm/WaitActivity;

    invoke-static {v0, p0, v1, p1}, Lcom/google/android/gm/WaitActivity;->wrapIntentForClass(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 174
    const-string v1, "awaitingSettings"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 176
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 177
    return-void
.end method

.method private unregisterObserver(Lcom/google/android/gm/provider/LabelList;)V
    .locals 1
    .parameter "labelList"

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mLabelsObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/google/android/gm/provider/LabelList;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 381
    invoke-virtual {p1}, Lcom/google/android/gm/provider/LabelList;->unregisterForLabelChanges()V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/WaitActivity;->mLabelsObserver:Landroid/database/DataSetObserver;

    .line 383
    return-void
.end method

.method private static unwrapIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .parameter "intent"

    .prologue
    .line 427
    const-string v0, "wrappedIntent"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public static waitForAccountIfNeeded(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .parameter "activity"
    .parameter "account"
    .parameter "fromSettings"

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-static {p0, p1}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/WaitActivity;->startWaitActivity(Landroid/app/Activity;Ljava/lang/String;Z)V

    move-object v1, v2

    .line 167
    :goto_0
    return-object v1

    .line 161
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v2, v1}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    .line 163
    .local v0, labelList:Lcom/google/android/gm/provider/LabelList;
    invoke-static {v0}, Lcom/google/android/gm/WaitActivity;->areLabelsOk(Lcom/google/android/gm/provider/LabelList;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 164
    invoke-static {p0, p1, p2}, Lcom/google/android/gm/WaitActivity;->startWaitActivity(Landroid/app/Activity;Ljava/lang/String;Z)V

    move-object v1, v2

    .line 165
    goto :goto_0

    :cond_1
    move-object v1, p1

    .line 167
    goto :goto_0
.end method

.method private waitForAccounts(Ljava/lang/String;Z)V
    .locals 1
    .parameter "account"
    .parameter "firstLaunch"

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-direct {p0, p1}, Lcom/google/android/gm/WaitActivity;->waitForLabels(Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    if-eqz p2, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/google/android/gm/WaitActivity;->waitForGmailAccount()V

    goto :goto_0
.end method

.method private waitForGmailAccount()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 232
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v5, bundle:Landroid/os/Bundle;
    const-string v0, "optional_message"

    const v1, 0x7f0d0136

    invoke-virtual {p0, v1}, Lcom/google/android/gm/WaitActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 234
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "mail"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "mail"

    invoke-static {v7}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    new-instance v7, Lcom/google/android/gm/WaitActivity$1;

    invoke-direct {v7, p0}, Lcom/google/android/gm/WaitActivity$1;-><init>(Lcom/google/android/gm/WaitActivity;)V

    move-object v4, p0

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 258
    return-void
.end method

.method private waitForLabels(Ljava/lang/String;)V
    .locals 9
    .parameter "accountName"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 276
    invoke-static {p0, p1, v8, v7}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v3

    .line 279
    .local v3, labelList:Lcom/google/android/gm/provider/LabelList;
    iput-object v3, p0, Lcom/google/android/gm/WaitActivity;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    .line 280
    new-instance v5, Lcom/google/android/gm/WaitActivity$2;

    invoke-direct {v5, p0}, Lcom/google/android/gm/WaitActivity$2;-><init>(Lcom/google/android/gm/WaitActivity;)V

    iput-object v5, p0, Lcom/google/android/gm/WaitActivity;->mLabelsObserver:Landroid/database/DataSetObserver;

    .line 286
    iget-object v5, p0, Lcom/google/android/gm/WaitActivity;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    invoke-virtual {v5}, Lcom/google/android/gm/provider/LabelList;->registerForLabelChanges()V

    .line 287
    iget-object v5, p0, Lcom/google/android/gm/WaitActivity;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    iget-object v6, p0, Lcom/google/android/gm/WaitActivity;->mLabelsObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v5, v6}, Lcom/google/android/gm/provider/LabelList;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 289
    iget-object v5, p0, Lcom/google/android/gm/WaitActivity;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    invoke-static {v5}, Lcom/google/android/gm/WaitActivity;->areLabelsOk(Lcom/google/android/gm/provider/LabelList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    iget-object v5, p0, Lcom/google/android/gm/WaitActivity;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    invoke-direct {p0, v5}, Lcom/google/android/gm/WaitActivity;->unregisterObserver(Lcom/google/android/gm/provider/LabelList;)V

    .line 291
    invoke-direct {p0, p1}, Lcom/google/android/gm/WaitActivity;->startOriginalActivityWithSelectedAccount(Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 295
    :cond_0
    new-instance v5, Landroid/accounts/Account;

    const-string v6, "com.google"

    invoke-direct {v5, p1, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    .line 297
    sget-object v5, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    const-string v6, "gmail-ls"

    invoke-static {v5, v6}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 298
    iget-boolean v5, p0, Lcom/google/android/gm/WaitActivity;->mCalledFromSettings:Z

    if-eqz v5, :cond_2

    .line 299
    const v5, 0x7f040030

    invoke-virtual {p0, v5}, Lcom/google/android/gm/WaitActivity;->setContentView(I)V

    .line 309
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 310
    .local v1, actionBar:Landroid/app/ActionBar;
    if-eqz v1, :cond_1

    .line 311
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04002c

    invoke-virtual {v5, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/TwoPaneActionBar;

    .line 313
    .local v2, actionBarView:Lcom/google/android/gm/TwoPaneActionBar;
    new-instance v5, Lcom/google/android/gm/ViewMode;

    invoke-direct {v5}, Lcom/google/android/gm/ViewMode;-><init>()V

    invoke-virtual {v2, p0, p0, v5, v1}, Lcom/google/android/gm/TwoPaneActionBar;->initialize(Landroid/app/Activity;Lcom/google/android/gm/TwoPaneActionBar$Callback;Lcom/google/android/gm/ViewMode;Landroid/app/ActionBar;)V

    .line 315
    const v5, 0x7f0e0072

    invoke-virtual {v2, v5}, Lcom/google/android/gm/TwoPaneActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 317
    const/16 v5, 0x10

    const/16 v6, 0x18

    invoke-virtual {v1, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 319
    invoke-virtual {v2}, Lcom/google/android/gm/TwoPaneActionBar;->setActionBarIconNormal()V

    .line 322
    new-instance v0, Lcom/google/android/gm/AccountHelper;

    invoke-direct {v0, p0}, Lcom/google/android/gm/AccountHelper;-><init>(Landroid/app/Activity;)V

    .line 323
    .local v0, accountHelper:Lcom/google/android/gm/AccountHelper;
    new-instance v5, Lcom/google/android/gm/WaitActivity$3;

    invoke-direct {v5, p0, v2}, Lcom/google/android/gm/WaitActivity$3;-><init>(Lcom/google/android/gm/WaitActivity;Lcom/google/android/gm/TwoPaneActionBar;)V

    invoke-virtual {v0, v5}, Lcom/google/android/gm/AccountHelper;->asyncGetAccountsInfo(Lcom/google/android/gm/AccountHelper$AccountResultsCallback;)V

    .line 347
    .end local v0           #accountHelper:Lcom/google/android/gm/AccountHelper;
    .end local v2           #actionBarView:Lcom/google/android/gm/TwoPaneActionBar;
    :cond_1
    invoke-static {p1}, Lcom/google/android/gm/Utils;->startSync(Ljava/lang/String;)V

    .line 354
    invoke-static {p0, p1, v8, v7}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v4

    .line 357
    .local v4, latestLabels:Lcom/google/android/gm/provider/LabelList;
    invoke-direct {p0, v4, v7}, Lcom/google/android/gm/WaitActivity;->labelsMayBeLoaded(Lcom/google/android/gm/provider/LabelList;Z)V

    goto :goto_0

    .line 301
    .end local v1           #actionBar:Landroid/app/ActionBar;
    .end local v4           #latestLabels:Lcom/google/android/gm/provider/LabelList;
    :cond_2
    const v5, 0x7f040031

    invoke-virtual {p0, v5}, Lcom/google/android/gm/WaitActivity;->setContentView(I)V

    goto :goto_1

    .line 304
    :cond_3
    const v5, 0x7f04002f

    invoke-virtual {p0, v5}, Lcom/google/android/gm/WaitActivity;->setContentView(I)V

    .line 305
    const v5, 0x7f0e0088

    invoke-virtual {p0, v5}, Lcom/google/android/gm/WaitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    const v5, 0x7f0e0087

    invoke-virtual {p0, v5}, Lcom/google/android/gm/WaitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public static waitIfNeededAndGetAccount(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .parameter "activity"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gm/WaitActivity;->waitIfNeededAndGetAccount(Landroid/app/Activity;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static waitIfNeededAndGetAccount(Landroid/app/Activity;Z)Ljava/lang/String;
    .locals 7
    .parameter "activity"
    .parameter "fromSettings"

    .prologue
    const/4 v6, 0x0

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, account:Ljava/lang/String;
    const-string v4, "WA.waitIfNeeded"

    invoke-static {v4}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 109
    sget-object v4, Lcom/google/android/gm/WaitActivity;->sNewAccount:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 110
    sget-object v3, Lcom/google/android/gm/WaitActivity;->sNewAccount:Ljava/lang/String;

    .line 113
    .local v3, result:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/google/android/gm/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    sput-object v6, Lcom/google/android/gm/WaitActivity;->sNewAccount:Ljava/lang/String;

    .line 115
    move-object v0, v3

    .line 118
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    invoke-static {p0, v0}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 123
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 128
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    invoke-static {p0, v0}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 130
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_4

    const-string v4, "account"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 132
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_2
    :goto_0
    if-eqz p1, :cond_5

    invoke-static {p0, v0}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 133
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/android/gm/Persistence;->getPersistenceActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_3
    :goto_1
    invoke-static {p0, v0, p1}, Lcom/google/android/gm/WaitActivity;->waitForAccountIfNeeded(Landroid/app/Activity;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v4, "WA.waitIfNeeded"

    invoke-static {v4}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 140
    return-object v0

    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_4
    move-object v0, v6

    .line 130
    goto :goto_0

    .line 134
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_5
    invoke-static {p0, v0}, Lcom/google/android/gm/WaitActivity;->isAccountOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 135
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/google/android/gm/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static wrapIntentForClass(Landroid/content/Intent;Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "intent"
    .parameter "context"
    .parameter "clazz"
    .parameter "account"

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 413
    .local v0, activityIntent:Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 417
    .local v1, waitIntent:Landroid/content/Intent;
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 418
    const-string v2, "wrappedIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 419
    const-string v2, "account"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    return-object v1
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public getCurrentAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    sget-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentListContext()Lcom/google/android/gm/ConversationListContext;
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    const-string v0, "gm_wait"

    return-object v0
.end method

.method public navigateToAccount(Ljava/lang/String;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 501
    sget-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gm/Persistence;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 503
    invoke-direct {p0, p1}, Lcom/google/android/gm/WaitActivity;->startOriginalActivityWithSelectedAccount(Ljava/lang/String;)V

    .line 505
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 457
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v0}, Lcom/google/android/gm/WaitActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 462
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    sget-object v1, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    .line 463
    sget-object v1, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/Utils;->startSync(Ljava/lang/String;)V

    .line 464
    const v1, 0x7f040031

    invoke-virtual {p0, v1}, Lcom/google/android/gm/WaitActivity;->setContentView(I)V

    goto :goto_0

    .line 455
    :pswitch_data_0
    .packed-switch 0x7f0e0087
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 183
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, account:Ljava/lang/String;
    const-string v2, "awaitingSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/gm/WaitActivity;->mCalledFromSettings:Z

    .line 188
    const v2, 0x7f040017

    invoke-virtual {p0, v2}, Lcom/google/android/gm/WaitActivity;->setContentView(I)V

    .line 189
    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/WaitActivity;->waitForAccounts(Ljava/lang/String;Z)V

    .line 190
    return-void

    :cond_0
    move v2, v3

    .line 189
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mLabelsObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    invoke-direct {p0, v0}, Lcom/google/android/gm/WaitActivity;->unregisterObserver(Lcom/google/android/gm/provider/LabelList;)V

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onDestroy()V

    .line 204
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 439
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 449
    :pswitch_0
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 441
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gm/MailboxSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/WaitActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 442
    goto :goto_0

    .line 444
    :pswitch_2
    sget-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 445
    sget-object v0, Lcom/google/android/gm/WaitActivity;->sCurrentAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->startSync(Ljava/lang/String;)V

    :cond_0
    move v0, v2

    .line 447
    goto :goto_0

    .line 439
    :pswitch_data_0
    .packed-switch 0x7f0e00ab
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 432
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 433
    invoke-virtual {p0}, Lcom/google/android/gm/WaitActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f11000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 434
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 194
    invoke-super {p0}, Lcom/google/android/gm/GmailBaseActivity;->onResume()V

    .line 195
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity;->mLabelList:Lcom/google/android/gm/provider/LabelList;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/WaitActivity;->labelsMayBeLoaded(Lcom/google/android/gm/provider/LabelList;Z)V

    .line 196
    return-void
.end method
