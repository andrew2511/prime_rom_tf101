.class public Lcom/google/android/music/tutorial/TutorialAccountActivity;
.super Landroid/app/ListActivity;
.source "TutorialAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;,
        Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListActivity;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "tutorial"


# instance fields
.field private final ACTION_SELECT_ACCOUNT:Ljava/lang/String;

.field private final EXTRA_SELECT_ACCOUNT_NAME:Ljava/lang/String;

.field private mAccounts:[Landroid/accounts/Account;

.field private mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

.field private mAdapter:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mList:Landroid/widget/ListView;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mNextButton:Landroid/widget/Button;

.field private mSelectedAccount:Landroid/accounts/Account;

.field private mSelectingInBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 67
    const-string v0, "com.google.android.music.SELECT_ACCOUNT"

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->ACTION_SELECT_ACCOUNT:Ljava/lang/String;

    .line 68
    const-string v0, "ACCOUNT"

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->EXTRA_SELECT_ACCOUNT_NAME:Ljava/lang/String;

    .line 268
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/tutorial/TutorialAccountActivity;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->authenticationSuccess(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/tutorial/TutorialAccountActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->authenticationFailed(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/tutorial/TutorialAccountActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/tutorial/TutorialAccountActivity;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/music/tutorial/TutorialAccountActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method private authenticationFailed(II)V
    .locals 2
    .parameter "title"
    .parameter "message"

    .prologue
    .line 202
    const-string v0, "tutorial"

    const-string v1, "authenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-boolean v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectingInBackground:Z

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/google/android/music/tutorial/TutorialAccountActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/music/tutorial/TutorialAccountActivity$2;-><init>(Lcom/google/android/music/tutorial/TutorialAccountActivity;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 214
    :cond_0
    return-void
.end method

.method private authenticationSuccess(Landroid/accounts/Account;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 184
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    .line 187
    .local v0, musicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-virtual {v0, p1}, Lcom/google/android/music/jumper/MusicPreferences;->setStreamingAccount(Landroid/accounts/Account;)V

    .line 189
    iget-boolean v1, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectingInBackground:Z

    if-nez v1, :cond_0

    .line 190
    new-instance v1, Lcom/google/android/music/tutorial/TutorialAccountActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity$1;-><init>(Lcom/google/android/music/tutorial/TutorialAccountActivity;)V

    invoke-virtual {p0, v1}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    :cond_0
    return-void
.end method

.method private onAccountsChanged()V
    .locals 6

    .prologue
    .line 238
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;

    invoke-virtual {v4}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->clear()V

    .line 239
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAccounts:[Landroid/accounts/Account;

    if-eqz v4, :cond_1

    .line 240
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAccounts:[Landroid/accounts/Account;

    array-length v4, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 241
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAccounts:[Landroid/accounts/Account;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAccounts:[Landroid/accounts/Account;

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 244
    .local v0, a:Landroid/accounts/Account;
    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;

    invoke-virtual {v4, v0}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->add(Ljava/lang/Object;)V

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v0           #a:Landroid/accounts/Account;
    .end local v1           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    return-void
.end method

.method private selectAccount()V
    .locals 5

    .prologue
    .line 133
    new-instance v0, Lcom/google/android/music/sync/google/MusicAuthInfo;

    invoke-direct {v0, p0}, Lcom/google/android/music/sync/google/MusicAuthInfo;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, authInfo:Lcom/google/android/music/sync/google/MusicAuthInfo;
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    new-instance v3, Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;

    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    invoke-direct {v3, p0, v4}, Lcom/google/android/music/tutorial/TutorialAccountActivity$GetAuthTokenCallback;-><init>(Lcom/google/android/music/tutorial/TutorialAccountActivity;Landroid/accounts/Account;)V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/google/android/music/sync/google/MusicAuthInfo;->getAuthTokenForeground(Landroid/app/Activity;Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 143
    .local v1, e:Landroid/accounts/AuthenticatorException;
    const-string v2, "tutorial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthToken failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private selectAccountForTesting(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 111
    invoke-static {}, Lcom/google/android/music/utils/PostFroyoUtils$ActivityManagerComp;->isRunningInTestHarness()Z

    move-result v5

    if-nez v5, :cond_0

    .line 112
    const-string v5, "tutorial"

    const-string v6, "Only supported when running in test harness"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getInstance(Landroid/content/Context;)Lcom/google/android/music/tutorial/SignupStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts()[Landroid/accounts/Account;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAccounts:[Landroid/accounts/Account;

    .line 116
    const-string v5, "ACCOUNT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, accountName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAccounts:[Landroid/accounts/Account;

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 119
    .local v0, a:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    .line 121
    invoke-direct {p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->selectAccount()V

    goto :goto_0

    .line 118
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    .end local v0           #a:Landroid/accounts/Account;
    :cond_2
    const-string v5, "tutorial"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private superStartActivity(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/app/ListActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method


# virtual methods
.method public backClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->finish()V

    .line 227
    return-void
.end method

.method public nextClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->selectAccount()V

    .line 130
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.google.android.music.SELECT_ACCOUNT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iput-boolean v4, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectingInBackground:Z

    .line 76
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->selectAccountForTesting(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->finish()V

    .line 100
    :goto_0
    return-void

    .line 80
    :cond_0
    iput-boolean v5, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectingInBackground:Z

    .line 81
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 82
    invoke-static {p0}, Lcom/google/android/music/activitymanagement/AppState;->getAppState(Landroid/app/Activity;)Lcom/google/android/music/activitymanagement/AppState;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 83
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v2, v5}, Lcom/google/android/music/activitymanagement/AppState;->setBottomBarEnabled(Z)V

    .line 84
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppState;->hideNoMusicView()V

    .line 85
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppState;->getActivityManager()Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 86
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/AppState;->getActionBarController()Lcom/google/android/music/TopBar$ActionBarController;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    .line 87
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    const v3, 0x7f0c00b2

    invoke-virtual {v2, p0, v3}, Lcom/google/android/music/activitymanagement/AppState;->setTitle(Landroid/content/Context;I)V

    .line 88
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v2}, Lcom/google/android/music/TopBar$ActionBarController;->hideAllButTitle()V

    .line 89
    invoke-virtual {p0, v4}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->requestWindowFeature(I)Z

    .line 90
    const v2, 0x7f040038

    invoke-virtual {p0, v2}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->setContentView(I)V

    .line 91
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mActionBarController:Lcom/google/android/music/TopBar$ActionBarController;

    invoke-virtual {v2}, Lcom/google/android/music/TopBar$ActionBarController;->hideTopBar()V

    .line 93
    const v2, 0x7f0f00a2

    invoke-virtual {p0, v2}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mNextButton:Landroid/widget/Button;

    .line 94
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mList:Landroid/widget/ListView;

    .line 95
    invoke-virtual {p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040039

    iget-object v4, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, listHeader:Landroid/view/View;
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 98
    new-instance v2, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;

    invoke-direct {v2, p0, p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;-><init>(Lcom/google/android/music/tutorial/TutorialAccountActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;

    .line 99
    iget-object v2, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 251
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;

    invoke-static {v0}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;->access$300(Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter$ViewHolder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    .line 256
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAdapter:Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;

    invoke-virtual {v0}, Lcom/google/android/music/tutorial/TutorialAccountActivity$AccountsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 105
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getInstance(Landroid/content/Context;)Lcom/google/android/music/tutorial/SignupStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts()[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAccounts:[Landroid/accounts/Account;

    .line 106
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mSelectedAccount:Landroid/accounts/Account;

    .line 107
    invoke-direct {p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->onAccountsChanged()V

    .line 108
    return-void
.end method

.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getInstance(Landroid/content/Context;)Lcom/google/android/music/tutorial/SignupStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedAccounts()[Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAccounts:[Landroid/accounts/Account;

    .line 265
    invoke-direct {p0}, Lcom/google/android/music/tutorial/TutorialAccountActivity;->onAccountsChanged()V

    .line 266
    return-void
.end method

.method public skipClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 219
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->setTutorialViewed(Z)V

    .line 222
    iget-object v0, p0, Lcom/google/android/music/tutorial/TutorialAccountActivity;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->returnToTop()V

    .line 223
    return-void
.end method
