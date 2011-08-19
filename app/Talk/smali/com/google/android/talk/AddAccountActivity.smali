.class public Lcom/google/android/talk/AddAccountActivity;
.super Landroid/app/Activity;
.source "AddAccountActivity.java"

# interfaces
.implements Lcom/google/android/talk/TalkApp$AccountListChangeListener;


# static fields
.field private static final REQUIRED_ACCOUNT_FEATURES:[Ljava/lang/String;


# instance fields
.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mLogLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hosted_or_google"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/AddAccountActivity;->REQUIRED_ACCOUNT_FEATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/talk/AddAccountActivity;->mLogLevel:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/AddAccountActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/talk/AddAccountActivity;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/AddAccountActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/talk/AddAccountActivity;->registerForAccountListChanged()V

    return-void
.end method

.method private checkForAccount()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 62
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v5, bundle:Landroid/os/Bundle;
    const-string v0, "optional_message"

    const v1, 0x7f0c000f

    invoke-virtual {p0, v1}, Lcom/google/android/talk/AddAccountActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const-string v2, "ac2dm"

    sget-object v3, Lcom/google/android/talk/AddAccountActivity;->REQUIRED_ACCOUNT_FEATURES:[Ljava/lang/String;

    new-instance v7, Lcom/google/android/talk/AddAccountActivity$1;

    invoke-direct {v7, p0}, Lcom/google/android/talk/AddAccountActivity$1;-><init>(Lcom/google/android/talk/AddAccountActivity;)V

    move-object v4, p0

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 96
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 99
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AddAccountActivity] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method private registerForAccountListChanged()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/talk/AddAccountActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->addAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 104
    return-void
.end method

.method private unregisterForAccountListChanged()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/talk/AddAccountActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v0, p0}, Lcom/google/android/talk/TalkApp;->removeAccountListChangedListener(Lcom/google/android/talk/TalkApp$AccountListChangeListener;)V

    .line 108
    return-void
.end method


# virtual methods
.method public onAccountListChanged()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/android/talk/AddAccountActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/AddAccountActivity;->mApp:Lcom/google/android/talk/TalkApp;

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getLastAccount()Lcom/google/android/talk/TalkApp$AccountInfo;

    move-result-object v0

    .line 115
    .local v0, accountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;
    if-nez v0, :cond_1

    .line 116
    const-string v1, "onAccountListChanged: getLastAccount is null"

    invoke-direct {p0, v1}, Lcom/google/android/talk/AddAccountActivity;->log(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/talk/AddAccountActivity;->finish()V

    goto :goto_0

    .line 120
    :cond_1
    invoke-static {v0, p0}, Lcom/google/android/talk/AccountSelectionActivity;->startBuddyListComboActivity(Lcom/google/android/talk/TalkApp$AccountInfo;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-static {p0}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/AddAccountActivity;->mApp:Lcom/google/android/talk/TalkApp;

    .line 49
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/AddAccountActivity;->mLogLevel:I

    .line 51
    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/talk/AddAccountActivity;->checkForAccount()V

    .line 52
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 58
    invoke-direct {p0}, Lcom/google/android/talk/AddAccountActivity;->unregisterForAccountListChanged()V

    .line 59
    return-void
.end method
