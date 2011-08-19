.class public Lcom/google/android/youtube/core/async/UserAuthorizer;
.super Ljava/lang/Object;
.source "UserAuthorizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/async/UserAuthorizer$AccountsChangedService;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$AccountsChangedReceiver;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$AuthTokenCallback;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$NoLinkedYouTubeAccountException;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;,
        Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final AUTH_TOKEN_TYPE:Ljava/lang/String; = "youtube"


# instance fields
.field private final accountManager:Landroid/accounts/AccountManager;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;",
            ">;"
        }
    .end annotation
.end field

.field private googleAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private onSignedInChangedListener:Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;

.field private final preferences:Landroid/content/SharedPreferences;

.field private userAuth:Lcom/google/android/youtube/core/model/UserAuth;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "accountManager"
    .parameter "preferences"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    .line 96
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    .line 98
    return-void
.end method

.method protected constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "preferences"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    .line 105
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    .line 107
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/async/UserAuthorizer;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->googleAccounts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->addAccount(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/async/UserAuthorizer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOutIfAccountRemoved()V

    return-void
.end method

.method private addAccount(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 312
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->notifyNotAuthenticated()V

    .line 346
    :goto_0
    return-void

    .line 321
    :cond_0
    const-string v0, "adding account"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    new-instance v6, Lcom/google/android/youtube/core/async/UserAuthorizer$4;

    invoke-direct {v6, p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$4;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method private declared-synchronized signOutIfAccountRemoved()V
    .locals 4

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 214
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    monitor-exit p0

    return-void

    .line 212
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "user_account"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .locals 5
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {p2, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 122
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 124
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "user_account"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, accountName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 126
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_2

    .line 127
    invoke-virtual {p0, v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 119
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 129
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accountName:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer;->fetchAccounts(Landroid/app/Activity;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized authenticate(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .locals 3
    .parameter "activity"
    .parameter "account"
    .parameter "callback"

    .prologue
    const-string v0, "user_account"

    .line 136
    monitor-enter p0

    if-nez p2, :cond_0

    .line 137
    :try_start_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    monitor-exit p0

    return-void

    .line 138
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {p3, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "user_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V

    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_account"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 145
    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->authenticate(Landroid/app/Activity;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public createRetryingRequester(Lcom/google/android/youtube/core/async/Requester;)Lcom/google/android/youtube/core/async/Requester;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "TE;>;)",
            "Lcom/google/android/youtube/core/async/Requester",
            "<",
            "Lcom/google/android/youtube/core/async/GDataRequest;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .line 476
    .local p1, target:Lcom/google/android/youtube/core/async/Requester;,"Lcom/google/android/youtube/core/async/Requester<Lcom/google/android/youtube/core/async/GDataRequest;TE;>;"
    new-instance v0, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;

    invoke-direct {v0, p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$RetryingRequester;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/Requester;)V

    return-object v0
.end method

.method protected declared-synchronized fetchAccounts(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    const-string v0, "fetching accounts"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->googleAccounts:Ljava/util/List;

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->googleAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accounts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/app/Activity;->showDialog(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected fetchAuthToken(Landroid/accounts/Account;Landroid/app/Activity;)V
    .locals 7
    .parameter "account"
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetching authToken for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "youtube"

    new-instance v5, Lcom/google/android/youtube/core/async/UserAuthorizer$5;

    invoke-direct {v5, p0}, Lcom/google/android/youtube/core/async/UserAuthorizer$5;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;)V

    move-object v1, p1

    move-object v4, p2

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 371
    return-void
.end method

.method protected getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 7
    .parameter "accountName"

    .prologue
    .line 421
    if-eqz p1, :cond_1

    .line 422
    iget-object v5, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 423
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 424
    .local v0, account:Landroid/accounts/Account;
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 429
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return-object v5

    .line 423
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accounts:[Landroid/accounts/Account;
    .restart local v2       #arr$:[Landroid/accounts/Account;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public declared-synchronized isSignedIn()Z
    .locals 2

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "user_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized notifyAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->onSignedInChangedListener:Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    if-eq v2, v3, :cond_1

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->onSignedInChangedListener:Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;

    invoke-interface {v2, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;->onSignIn(Lcom/google/android/youtube/core/model/UserAuth;)V

    .line 240
    :cond_1
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 241
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "user_account"

    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    .line 243
    .local v0, callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {v0, v2}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 235
    .end local v0           #callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 245
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    monitor-exit p0

    return-void
.end method

.method declared-synchronized notifyAuthenticationError(Ljava/lang/Exception;)V
    .locals 3
    .parameter "e"

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    const-string v2, "authentication error"

    invoke-static {v2, p1}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 250
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 251
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    .line 252
    .local v0, callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticationError(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 249
    .end local v0           #callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 254
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    monitor-exit p0

    return-void
.end method

.method declared-synchronized notifyNotAuthenticated()V
    .locals 3

    .prologue
    .line 258
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;

    .line 259
    .local v0, callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    invoke-interface {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onNotAuthenticated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 258
    .end local v0           #callback:Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 261
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    monitor-exit p0

    return-void
.end method

.method public onCreateDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 4
    .parameter "activity"

    .prologue
    .line 275
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->googleAccounts:Ljava/util/List;

    if-nez v2, :cond_0

    .line 276
    const-string v2, "lost accounts list, assuming a restore and ignoring"

    invoke-static {v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 277
    const/4 v2, 0x0

    .line 286
    :goto_0
    return-object v2

    .line 280
    :cond_0
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->googleAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    .line 281
    .local v0, accountNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->googleAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 282
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->googleAccounts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->googleAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const v3, 0x7f0c0042

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 286
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0041

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/async/UserAuthorizer$3;

    invoke-direct {v3, p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$3;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/youtube/core/async/UserAuthorizer$2;

    invoke-direct {v3, p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$2;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method

.method public declared-synchronized peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {p1, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :goto_0
    monitor-exit p0

    return-void

    .line 159
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "user_account"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, accountName:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 161
    .local v1, account:Landroid/accounts/Account;
    if-eqz v1, :cond_1

    .line 162
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "youtube"

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/youtube/core/async/UserAuthorizer$1;

    invoke-direct {v4, p0, p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$1;-><init>(Lcom/google/android/youtube/core/async/UserAuthorizer;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    .end local v1           #account:Landroid/accounts/Account;
    .end local v6           #accountName:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    .restart local v1       #account:Landroid/accounts/Account;
    .restart local v6       #accountName:Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-interface {p1}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onNotAuthenticated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized peek(Ljava/lang/String;Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    .locals 3
    .parameter "account"
    .parameter "callback"

    .prologue
    const-string v0, "user_account"

    .line 186
    monitor-enter p0

    if-nez p1, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    invoke-interface {p2, v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;->onAuthenticated(Lcom/google/android/youtube/core/model/UserAuth;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 191
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "user_account"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/google/android/youtube/core/async/UserAuthorizer;->signOut()V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_account"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    :cond_2
    invoke-virtual {p0, p2}, Lcom/google/android/youtube/core/async/UserAuthorizer;->peek(Lcom/google/android/youtube/core/async/UserAuthorizer$Authenticatee;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized refresh(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "expiredAuthToken"

    .prologue
    .line 441
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    const-string v4, "com.google"

    invoke-virtual {v3, v4, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/async/UserAuthorizer;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 445
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_2

    .line 447
    :try_start_1
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->accountManager:Landroid/accounts/AccountManager;

    const-string v4, "youtube"

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, authToken:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 451
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v3, :cond_0

    .line 452
    new-instance v3, Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v4, v4, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lcom/google/android/youtube/core/model/UserAuth;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    move-object v3, v1

    .line 464
    .end local v1           #authToken:Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v3

    .line 443
    .end local v0           #account:Landroid/accounts/Account;
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    const-string v4, "user_account"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 456
    .restart local v0       #account:Landroid/accounts/Account;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 457
    .local v2, e:Landroid/accounts/OperationCanceledException;
    const-string v3, "authToken refresh canceled"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :cond_2
    :goto_2
    move-object v3, p1

    .line 464
    goto :goto_1

    .line 458
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 459
    .local v2, e:Ljava/io/IOException;
    const-string v3, "authToken refresh IOException"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 441
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 460
    .restart local v0       #account:Landroid/accounts/Account;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 461
    .local v2, e:Landroid/accounts/AuthenticatorException;
    :try_start_3
    const-string v3, "authToken refresh AuthenticatorException"

    invoke-static {v3}, Lcom/google/android/youtube/core/L;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized setOnSignedInChangedListener(Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->onSignedInChangedListener:Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized signOut()V
    .locals 2

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->onSignedInChangedListener:Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->onSignedInChangedListener:Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;

    invoke-interface {v0}, Lcom/google/android/youtube/core/async/UserAuthorizer$OnSignedInChangedListener;->onSignOut()V

    .line 207
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    .line 208
    iget-object v0, p0, Lcom/google/android/youtube/core/async/UserAuthorizer;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
