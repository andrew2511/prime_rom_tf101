.class public Lcom/google/android/apps/books/app/BooksActivity;
.super Landroid/app/Activity;
.source "BooksActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/BooksActivity$ResetStorageTask;,
        Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;,
        Lcom/google/android/apps/books/app/BooksActivity$ForcedSyncTask;,
        Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;,
        Lcom/google/android/apps/books/app/BooksActivity$SceneMode;,
        Lcom/google/android/apps/books/app/BooksActivity$Scene;,
        Lcom/google/android/apps/books/app/BooksActivity$Tag;,
        Lcom/google/android/apps/books/app/BooksActivity$StateKeys;
    }
.end annotation


# static fields
.field public static final EXTRA_ADD_TO_MY_EBOOKS:Ljava/lang/String; = "books:addToMyEBooks"

.field public static final EXTRA_INTERNAL_INTENT:Ljava/lang/String; = "books:internalIntent"

.field private static final TAG:Ljava/lang/String; = "BooksActivity"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mBrowserAuthenticationRequestId:I

.field private final mBulkUpgradeListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

.field private mConfig:Lcom/google/android/apps/books/util/Config;

.field private mCurrentAccount:Landroid/accounts/Account;

.field private mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeLoadedOnce:Z

.field private mHomeVisited:Z

.field private mIncomingIntent:Landroid/content/Intent;

.field private mIsFirstInstance:Z

.field private mIsThemeNightActive:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mPendingSync:Landroid/os/Message;

.field private final mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

.field private mSceneMode:I

.field private mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    .line 298
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/BooksActivity$1;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    .line 1330
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$3;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/app/BooksActivity$3;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBulkUpgradeListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    .line 1352
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/books/app/BooksActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/apps/books/app/BooksActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    return v0
.end method

.method static synthetic access$1008(Lcom/google/android/apps/books/app/BooksActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/apps/books/app/BooksActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/apps/books/app/BooksActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsThemeNightActive:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/google/android/apps/books/app/BooksActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->isThemeNightRequested()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 64
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/util/Config;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/apps/books/app/BooksActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->startFinskyIntent(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/books/app/BooksActivity;->setAccount(Landroid/accounts/Account;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBulkUpgradeListener:Lcom/google/android/apps/books/app/BulkSessionKeyUpgradeTask$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/google/android/apps/books/app/BooksActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeLoadedOnce:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/apps/books/app/BooksActivity;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mPendingSync:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/google/android/apps/books/app/BooksActivity;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mPendingSync:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/sync/SyncAccountsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/BooksActivity;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/books/app/BooksActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/books/app/BooksActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/BooksActivity;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/BooksActivity;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/apps/books/app/BooksActivity;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    return-void
.end method

.method static synthetic access$800(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 64
    invoke-static/range {p0 .. p5}, Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$902(Lcom/google/android/apps/books/app/BooksActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;

    return-object p1
.end method

.method private accountFromIntent()Landroid/accounts/Account;
    .locals 6

    .prologue
    const-string v5, "authAccount"

    .line 871
    const/4 v2, 0x0

    .line 872
    .local v2, result:Landroid/accounts/Account;
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 873
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 875
    .local v3, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 876
    .local v0, accountName:Ljava/lang/String;
    const-string v4, "authAccount"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 877
    const-string v4, "authAccount"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 882
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 883
    new-instance v2, Landroid/accounts/Account;

    .end local v2           #result:Landroid/accounts/Account;
    const-string v4, "com.google"

    invoke-direct {v2, v0, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    .restart local v2       #result:Landroid/accounts/Account;
    :cond_1
    return-object v2

    .line 878
    :cond_2
    if-eqz v3, :cond_0

    .line 879
    const-string v4, "email"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private bestSystemAccount()Landroid/accounts/Account;
    .locals 8

    .prologue
    .line 894
    const/4 v1, 0x0

    .line 895
    .local v1, bestAccount:Landroid/accounts/Account;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    .line 897
    .local v3, googleAccounts:[Landroid/accounts/Account;
    array-length v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 899
    const/4 v6, 0x0

    aget-object v1, v3, v6

    .line 916
    :cond_0
    :goto_0
    return-object v1

    .line 902
    :cond_1
    move-object v0, v3

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 903
    .local v2, candidate:Landroid/accounts/Account;
    const-string v6, "com.google.android.apps.books"

    invoke-static {v2, v6}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 905
    if-nez v1, :cond_3

    .line 906
    move-object v1, v2

    .line 902
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 910
    :cond_3
    const/4 v1, 0x0

    .line 911
    goto :goto_0
.end method

.method private considerNaggingAboutSync()V
    .locals 8

    .prologue
    const-string v7, "syncDisabled"

    .line 1039
    iget-object v5, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    const-string v6, "com.google.android.apps.books"

    invoke-static {v5, v6}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 1041
    .local v1, autoSync:Z
    iget-object v5, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    iget-object v6, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/books/sync/SyncAccountsState;->haveNagged(Ljava/lang/String;)Z

    move-result v4

    .line 1043
    .local v4, haveNagged:Z
    if-nez v1, :cond_0

    if-nez v4, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 1047
    .local v2, fm:Landroid/app/FragmentManager;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 1049
    .local v3, ft:Landroid/app/FragmentTransaction;
    iget-object v5, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {v5}, Lcom/google/android/apps/books/util/LoaderParams;->buildFrom(Landroid/accounts/Account;)Landroid/os/Bundle;

    move-result-object v0

    .line 1050
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "syncDisabled"

    invoke-static {v7, v2, v3}, Lcom/google/android/apps/books/app/BooksActivity;->findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V

    .line 1051
    const-class v5, Lcom/google/android/apps/books/app/SyncDisabledDialogFragment;

    const-string v6, "syncDisabled"

    const/4 v6, 0x0

    invoke-static {v5, v7, v0, v3, v6}, Lcom/google/android/apps/books/app/BooksActivity;->createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;

    .line 1053
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 1055
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #fm:Landroid/app/FragmentManager;
    .end local v3           #ft:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method private static createAndAddFragment(ILjava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    .locals 3
    .parameter "containerViewId"
    .parameter
    .parameter "tag"
    .parameter "args"
    .parameter "ft"
    .parameter "retainInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/FragmentTransaction;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 254
    .local v1, fragment:Landroid/app/Fragment;
    invoke-virtual {v1, p3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {v1, p5}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 256
    invoke-virtual {p4, p0, v1, p2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 257
    return-object v1

    .line 258
    .end local v1           #fragment:Landroid/app/Fragment;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 259
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 260
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 261
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static createAndAddFragment(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/FragmentTransaction;Z)Landroid/app/Fragment;
    .locals 3
    .parameter
    .parameter "tag"
    .parameter "arguments"
    .parameter "ft"
    .parameter "retainInstance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/FragmentTransaction;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 269
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Fragment;

    .line 270
    .local v1, fragment:Landroid/app/Fragment;
    invoke-virtual {v1, p4}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 271
    invoke-virtual {v1, p2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 272
    invoke-virtual {p3, v1, p1}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 273
    return-object v1

    .line 274
    .end local v1           #fragment:Landroid/app/Fragment;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 275
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 276
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 277
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private varargs dispatchBackPressed([Landroid/app/Fragment;)Z
    .locals 5
    .parameter "fragments"

    .prologue
    .line 1195
    move-object v0, p1

    .local v0, arr$:[Landroid/app/Fragment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 1196
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    instance-of v4, v1, Lcom/google/android/apps/books/app/OnBackListener;

    if-eqz v4, :cond_0

    check-cast v1, Lcom/google/android/apps/books/app/OnBackListener;

    .end local v1           #fragment:Landroid/app/Fragment;
    invoke-interface {v1}, Lcom/google/android/apps/books/app/OnBackListener;->onBackPressed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1198
    const/4 v4, 0x1

    .line 1201
    :goto_1
    return v4

    .line 1195
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1201
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static findAccount([Landroid/accounts/Account;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 7
    .parameter "accounts"
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    .line 807
    if-nez p1, :cond_0

    move-object v4, v6

    .line 815
    :goto_0
    return-object v4

    .line 808
    :cond_0
    move-object v1, p0

    .local v1, arr$:[Landroid/accounts/Account;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    .line 811
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    .line 812
    goto :goto_0

    .line 808
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #account:Landroid/accounts/Account;
    :cond_2
    move-object v4, v6

    .line 815
    goto :goto_0
.end method

.method private findAccount(Z)V
    .locals 12
    .parameter "syncIfNewAccount"

    .prologue
    .line 819
    new-instance v10, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v10, p0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 821
    .local v10, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v10}, Lcom/google/android/apps/books/preference/LocalPreferences;->getAccount()Landroid/accounts/Account;

    move-result-object v11

    .line 822
    .local v11, prefsAccount:Landroid/accounts/Account;
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->accountFromIntent()Landroid/accounts/Account;

    move-result-object v8

    .line 827
    .local v8, intentAccount:Landroid/accounts/Account;
    if-eqz v8, :cond_1

    .line 828
    move-object v1, v8

    .line 829
    .local v1, account:Landroid/accounts/Account;
    const/4 v9, 0x1

    .line 839
    .local v9, needAuthorization:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 841
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 842
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 843
    .local v7, accounts:[Landroid/accounts/Account;
    invoke-static {v7, v1}, Lcom/google/android/apps/books/app/BooksActivity;->findAccount([Landroid/accounts/Account;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    .line 846
    .end local v0           #am:Landroid/accounts/AccountManager;
    .end local v7           #accounts:[Landroid/accounts/Account;
    :cond_0
    if-eqz v1, :cond_5

    .line 847
    if-eqz v9, :cond_3

    .line 849
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 850
    .restart local v0       #am:Landroid/accounts/AccountManager;
    const-string v2, "print"

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    new-instance v5, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;

    const/4 v4, 0x0

    invoke-direct {v5, p0, v4}, Lcom/google/android/apps/books/app/BooksActivity$AuthorizedAccountCallback;-><init>(Lcom/google/android/apps/books/app/BooksActivity;Lcom/google/android/apps/books/app/BooksActivity$1;)V

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 863
    .end local v0           #am:Landroid/accounts/AccountManager;
    :goto_1
    return-void

    .line 830
    .end local v1           #account:Landroid/accounts/Account;
    .end local v9           #needAuthorization:Z
    :cond_1
    if-eqz v11, :cond_2

    .line 831
    move-object v1, v11

    .line 833
    .restart local v1       #account:Landroid/accounts/Account;
    const/4 v9, 0x0

    .restart local v9       #needAuthorization:Z
    goto :goto_0

    .line 835
    .end local v1           #account:Landroid/accounts/Account;
    .end local v9           #needAuthorization:Z
    :cond_2
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->bestSystemAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 836
    .restart local v1       #account:Landroid/accounts/Account;
    const/4 v9, 0x1

    .restart local v9       #needAuthorization:Z
    goto :goto_0

    .line 853
    :cond_3
    invoke-static {v1, v11}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 854
    invoke-virtual {v10, v1}, Lcom/google/android/apps/books/preference/LocalPreferences;->setAccount(Landroid/accounts/Account;)V

    .line 856
    :cond_4
    invoke-direct {p0, v1, p1}, Lcom/google/android/apps/books/app/BooksActivity;->setAccount(Landroid/accounts/Account;Z)Z

    goto :goto_1

    .line 860
    :cond_5
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    invoke-interface {v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->reset()V

    .line 861
    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    invoke-interface {v2}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->pickAccount()V

    goto :goto_1
.end method

.method private static findAndRemoveFragment(Ljava/lang/String;Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;)V
    .locals 2
    .parameter "tag"
    .parameter "fm"
    .parameter "ft"

    .prologue
    .line 234
    invoke-virtual {p1, p0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 235
    .local v0, fragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Fragment;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static getScene(Landroid/app/Fragment;)Lcom/google/android/apps/books/app/BooksActivity$Scene;
    .locals 3
    .parameter "fragment"

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 131
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/google/android/apps/books/app/BooksActivity;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Lcom/google/android/apps/books/app/BooksActivity;

    .end local v0           #activity:Landroid/app/Activity;
    iget-object v1, v0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    return-object v1

    .line 134
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unexpected activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleIncomingIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "books:internalIntent"

    const-string v8, "books:addToMyEBooks"

    .line 1233
    iput-boolean v6, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    .line 1235
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1238
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1239
    .local v3, volumeId:Ljava/lang/String;
    const-string v4, "books:internalIntent"

    invoke-virtual {p1, v9, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1240
    .local v2, internalIntent:Z
    const-string v4, "books:addToMyEBooks"

    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1241
    .local v1, addToMyEBooks:Z
    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    if-nez v2, :cond_0

    move v5, v7

    :goto_0
    invoke-interface {v4, v3, v5, v1, v6}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToReader(Ljava/lang/String;ZZZ)V

    .line 1257
    .end local v1           #addToMyEBooks:Z
    .end local v2           #internalIntent:Z
    .end local v3           #volumeId:Ljava/lang/String;
    :goto_1
    return-void

    .restart local v1       #addToMyEBooks:Z
    .restart local v2       #internalIntent:Z
    .restart local v3       #volumeId:Ljava/lang/String;
    :cond_0
    move v5, v6

    .line 1241
    goto :goto_0

    .line 1243
    .end local v1           #addToMyEBooks:Z
    .end local v2           #internalIntent:Z
    .end local v3           #volumeId:Ljava/lang/String;
    :cond_1
    const-string v4, "com.google.android.apps.books.intent.action.READ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1245
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/books/provider/BooksContract$Volumes;->getVolumeId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 1246
    .restart local v3       #volumeId:Ljava/lang/String;
    const-string v4, "books:internalIntent"

    invoke-virtual {p1, v9, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1247
    .restart local v2       #internalIntent:Z
    const-string v4, "books:addToMyEBooks"

    invoke-virtual {p1, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1248
    .restart local v1       #addToMyEBooks:Z
    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    if-nez v2, :cond_2

    move v5, v7

    :goto_2
    invoke-interface {v4, v3, v5, v1, v6}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToReader(Ljava/lang/String;ZZZ)V

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    .line 1250
    .end local v1           #addToMyEBooks:Z
    .end local v2           #internalIntent:Z
    .end local v3           #volumeId:Ljava/lang/String;
    :cond_3
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1252
    iget-object v4, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    invoke-interface {v4}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    goto :goto_1

    .line 1255
    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown incoming intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private handleIntentIfReady()V
    .locals 1

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1068
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/google/android/apps/books/app/BooksActivity;->handleIncomingIntent(Landroid/content/Intent;)V

    .line 1069
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;

    .line 1072
    :cond_0
    return-void
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1296
    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/apps/books/R$styleable;->Theme:[I

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1298
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0xe

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private isThemeNightRequested()Z
    .locals 1

    .prologue
    .line 786
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->isThemeNight()Z

    move-result v0

    return v0
.end method

.method public static markExternalIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1286
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1287
    return-void
.end method

.method private prepareStaticViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 974
    const v2, 0x7f0e000a

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/BooksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/renderscript/RSSurfaceView;

    .line 975
    .local v0, carousel:Landroid/renderscript/RSSurfaceView;
    const v2, 0x7f0e000b

    invoke-virtual {p0, v2}, Lcom/google/android/apps/books/app/BooksActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/renderscript/RSSurfaceView;

    .line 979
    .local v1, reader:Landroid/renderscript/RSSurfaceView;
    invoke-virtual {v1, v4}, Landroid/renderscript/RSSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 982
    invoke-virtual {v0}, Landroid/renderscript/RSSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 983
    invoke-virtual {v1}, Landroid/renderscript/RSSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 986
    invoke-static {v1, v4}, Lcom/google/android/apps/books/app/BooksActivity;->setViewOffscreen(Landroid/view/View;Z)V

    .line 988
    return-void
.end method

.method public static requestManualSyncDownloadWithoutFetch(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    const/4 v2, 0x1

    .line 1264
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1265
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1266
    const-string v1, "SyncService.DOWNLOAD"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1267
    const-string v1, "SyncService.FETCH_BOOKS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1269
    const-string v1, "com.google.android.apps.books"

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1270
    return-void
.end method

.method public static requestManualSyncUpload(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    const/4 v2, 0x1

    .line 1273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1274
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1275
    const-string v1, "upload"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1277
    const-string v1, "com.google.android.apps.books"

    invoke-static {p0, v1, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1278
    return-void
.end method

.method private setAccount(Landroid/accounts/Account;Z)Z
    .locals 3
    .parameter "account"
    .parameter "syncIfNewAccount"

    .prologue
    .line 1000
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {p1, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1001
    const/4 v0, 0x1

    .line 1002
    .local v0, result:Z
    iput-object p1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    .line 1004
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1014
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeLoadedOnce:Z

    if-eqz v1, :cond_1

    .line 1016
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    invoke-interface {v1}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->startForcedSync()V

    .line 1029
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->handleIntentIfReady()V

    .line 1030
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->considerNaggingAboutSync()V

    .line 1035
    :goto_1
    return v0

    .line 1020
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/apps/books/app/BooksActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/apps/books/app/BooksActivity$2;-><init>(Lcom/google/android/apps/books/app/BooksActivity;)V

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mPendingSync:Landroid/os/Message;

    goto :goto_0

    .line 1033
    .end local v0           #result:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #result:Z
    goto :goto_1
.end method

.method public static setViewOffscreen(Landroid/view/View;Z)V
    .locals 2
    .parameter "view"
    .parameter "offscreen"

    .prologue
    .line 1290
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1291
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz p1, :cond_0

    const/16 v1, 0x2710

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1292
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    return-void

    .line 1291
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startFinskyIntent(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1305
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    const-string v2, "missing account"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1308
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authAccount"

    iget-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    const-string v1, "com.google.android.finsky"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    invoke-static {v0}, Lcom/google/android/apps/books/app/BooksActivity;->markExternalIntent(Landroid/content/Intent;)V

    .line 1311
    invoke-virtual {p0, v0}, Lcom/google/android/apps/books/app/BooksActivity;->startActivity(Landroid/content/Intent;)V

    .line 1312
    return-void
.end method


# virtual methods
.method public getFetchService()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/apps/books/service/ContentFetchService;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    return-object v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 3
    .parameter "accounts"

    .prologue
    const/4 v2, 0x0

    .line 793
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {p1, v1}, Lcom/google/android/apps/books/app/BooksActivity;->findAccount([Landroid/accounts/Account;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    .line 794
    iput-object v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    .line 795
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 796
    .local v0, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v0, v2}, Lcom/google/android/apps/books/preference/LocalPreferences;->setAccount(Landroid/accounts/Account;)V

    .line 797
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->findAccount(Z)V

    .line 799
    .end local v0           #prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 1184
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1186
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v3, "carousel"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1187
    .local v0, carousel:Landroid/app/Fragment;
    const-string v3, "reader"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 1189
    .local v2, reader:Landroid/app/Fragment;
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/app/Fragment;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-direct {p0, v3}, Lcom/google/android/apps/books/app/BooksActivity;->dispatchBackPressed([Landroid/app/Fragment;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1190
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1192
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 750
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 751
    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsFirstInstance:Z

    .line 753
    new-instance v0, Lcom/google/android/apps/books/preference/LocalPreferences;

    invoke-direct {v0, p0}, Lcom/google/android/apps/books/preference/LocalPreferences;-><init>(Landroid/content/Context;)V

    .line 754
    .local v0, prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/LocalPreferences;->applyMissingDefaults()V

    .line 756
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsFirstInstance:Z

    if-eqz v1, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIncomingIntent:Landroid/content/Intent;

    .line 771
    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->isThemeNightRequested()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsThemeNightActive:Z

    .line 772
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsThemeNightActive:Z

    if-eqz v1, :cond_2

    const v1, 0x7f100021

    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->setTheme(I)V

    .line 776
    const v1, 0x7f040002

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->setContentView(I)V

    .line 777
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->prepareStaticViews()V

    .line 779
    invoke-static {p0}, Lcom/google/android/apps/books/app/BooksApplication;->getConfig(Landroid/content/Context;)Lcom/google/android/apps/books/util/Config;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mConfig:Lcom/google/android/apps/books/util/Config;

    .line 780
    new-instance v1, Lcom/google/android/apps/books/sync/SyncAccountsState;

    invoke-direct {v1, p0}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSyncState:Lcom/google/android/apps/books/sync/SyncAccountsState;

    .line 782
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mMainHandler:Landroid/os/Handler;

    .line 783
    return-void

    .line 751
    .end local v0           #prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 761
    .restart local v0       #prefs:Lcom/google/android/apps/books/preference/LocalPreferences;
    :cond_1
    const-string v1, "homeVisited"

    iget-boolean v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    .line 764
    const-string v1, "sceneMode"

    iget v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    .line 765
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;

    .line 766
    const-string v1, "browserAuthRequestId"

    iget v2, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    goto :goto_1

    .line 772
    :cond_2
    const v1, 0x7f100022

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1170
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    move v0, v1

    .line 1179
    :goto_0
    return v0

    .line 1173
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1179
    const/4 v0, 0x0

    goto :goto_0

    .line 1175
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mScene:Lcom/google/android/apps/books/app/BooksActivity$Scene;

    invoke-interface {v0}, Lcom/google/android/apps/books/app/BooksActivity$Scene;->moveToHome()V

    move v0, v1

    .line 1176
    goto :goto_0

    .line 1173
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1143
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1144
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 1148
    iget v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    .line 1150
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1151
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1129
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1132
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1133
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1138
    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mIsFirstInstance:Z

    invoke-direct {p0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->findAccount(Z)V

    .line 1139
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 956
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 961
    const-string v0, "sceneMode"

    iget v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mSceneMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 962
    const-string v0, "browserAuthRequestId"

    iget v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mBrowserAuthenticationRequestId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 963
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 964
    const-string v0, "account"

    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mCurrentAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 967
    :cond_0
    const-string v0, "homeVisited"

    iget-boolean v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mHomeVisited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 968
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "componentName"
    .parameter "binder"

    .prologue
    .line 1215
    check-cast p2, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/google/android/apps/books/service/ContentFetchService$MyBinder;->getService()Lcom/google/android/apps/books/service/ContentFetchService;

    move-result-object v0

    .line 1217
    .local v0, fetchService:Lcom/google/android/apps/books/service/ContentFetchService;
    iget-object v1, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;->set(Ljava/lang/Object;)Z

    .line 1219
    invoke-direct {p0}, Lcom/google/android/apps/books/app/BooksActivity;->handleIntentIfReady()V

    .line 1220
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;->setException(Ljava/lang/Throwable;)Z

    .line 1227
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    .line 1228
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1120
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1123
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/books/service/ContentFetchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1124
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p0, v1}, Lcom/google/android/apps/books/app/BooksActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1125
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1155
    invoke-virtual {p0, p0}, Lcom/google/android/apps/books/app/BooksActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1159
    iget-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    new-instance v1, Landroid/os/RemoteException;

    invoke-direct {v1}, Landroid/os/RemoteException;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;->setException(Ljava/lang/Throwable;)Z

    .line 1160
    new-instance v0, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;-><init>(Lcom/google/android/apps/books/app/BooksActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/books/app/BooksActivity;->mFetchService:Lcom/google/android/apps/books/app/BooksActivity$ExternalFuture;

    .line 1162
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1163
    return-void
.end method

.method public onUserInteraction()V
    .locals 3

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/BooksActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "reader"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/ReaderFragment;

    .line 1208
    .local v0, reader:Lcom/google/android/apps/books/app/ReaderFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    invoke-virtual {v0}, Lcom/google/android/apps/books/app/ReaderFragment;->onUserInteraction()V

    .line 1211
    :cond_0
    return-void
.end method
