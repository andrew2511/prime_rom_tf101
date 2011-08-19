.class public Lcom/google/android/music/tutorial/SignupStatus;
.super Ljava/lang/Object;
.source "SignupStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;
    }
.end annotation


# static fields
.field private static final EXTRA_CLEAR_HOLDOFF:Ljava/lang/String; = "com.google.android.music.tutorial.CLEAR_HOLDOFF"

.field private static final KEY_HOLDOFF_UNTIL:Ljava/lang/String; = "holdoffUntil"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final KEY_VERIFIED_ACCOUNTS_NAME:Ljava/lang/String; = "verifiedAccountsName"

.field private static final KEY_VERIFIED_ACCOUNTS_TYPE:Ljava/lang/String; = "verifiedAccountsType"

.field private static final MIN_TIME_BETWEEN_INVITE_CHECKS_MS:J = 0x1499700L

.field private static final PREF_NAME:Ljava/lang/String; = "signup.pref"

.field private static final STATUS_NOTVERIFIED:I = -0x1

.field private static final STATUS_UNKNOWN:I = 0x0

.field private static final STATUS_VERIFIED:I = 0x1

.field private static final STATUS_VERIFIED_VIA_GSERVICES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MusicStreaming"

.field private static sInstance:Lcom/google/android/music/tutorial/SignupStatus;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/music/tutorial/SignupStatus;->sInstance:Lcom/google/android/music/tutorial/SignupStatus;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/tutorial/SignupStatus;->mContext:Landroid/content/Context;

    .line 64
    iget-object v1, p0, Lcom/google/android/music/tutorial/SignupStatus;->mContext:Landroid/content/Context;

    const-string v2, "signup.pref"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/tutorial/SignupStatus;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 65
    iget-object v1, p0, Lcom/google/android/music/tutorial/SignupStatus;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/google/android/music/tutorial/SignupStatus;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sj_streaming"

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "status"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/music/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 73
    return-void

    .line 69
    :cond_1
    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedStatus()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 70
    const-string v1, "status"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->isBackgroundDataEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-static {p0, p1}, Lcom/google/android/music/tutorial/SignupStatus;->putVerifiedAccountIntoPreferences(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V

    return-void
.end method

.method private getAccountsFromPreferences()[Landroid/accounts/Account;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 90
    const/4 v1, 0x1

    .line 93
    .local v1, i:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :goto_0
    iget-object v4, p0, Lcom/google/android/music/tutorial/SignupStatus;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifiedAccountsName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    iget-object v4, p0, Lcom/google/android/music/tutorial/SignupStatus;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifiedAccountsName"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/music/tutorial/SignupStatus;->mSharedPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verifiedAccountsType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, type:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 99
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v7

    .line 106
    .end local p0
    :goto_1
    return-object v4

    .restart local p0
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/accounts/Account;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/accounts/Account;

    move-object v4, p0

    goto :goto_1
.end method

.method private static getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 3
    .parameter "context"

    .prologue
    .line 119
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 120
    .local v0, accountManager:Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 121
    .local v1, accounts:[Landroid/accounts/Account;
    return-object v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/music/tutorial/SignupStatus;
    .locals 2
    .parameter "context"

    .prologue
    .line 56
    const-class v0, Lcom/google/android/music/tutorial/SignupStatus;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/music/tutorial/SignupStatus;->sInstance:Lcom/google/android/music/tutorial/SignupStatus;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/google/android/music/tutorial/SignupStatus;

    invoke-direct {v1, p0}, Lcom/google/android/music/tutorial/SignupStatus;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/music/tutorial/SignupStatus;->sInstance:Lcom/google/android/music/tutorial/SignupStatus;

    .line 59
    :cond_0
    sget-object v1, Lcom/google/android/music/tutorial/SignupStatus;->sInstance:Lcom/google/android/music/tutorial/SignupStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 56
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getVerifiedStatus()I
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/music/tutorial/SignupStatus;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static isBackgroundDataEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 148
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 150
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v1

    .line 153
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static launchVerificationCheck(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    return-void
.end method

.method public static launchVerificationCheckClearHoldoff(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/music/tutorial/SignupStatus$SignupCheckService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.google.android.music.tutorial.CLEAR_HOLDOFF"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    return-void
.end method

.method private static putVerifiedAccountIntoPreferences(Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V
    .locals 5
    .parameter "editor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, accounts:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    const/4 v1, 0x1

    .line 112
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 113
    .local v0, account:Landroid/accounts/Account;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifiedAccountsName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifiedAccountsType"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    return-void
.end method


# virtual methods
.method public getVerifiedAccounts()[Landroid/accounts/Account;
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedStatus()I

    move-result v0

    .line 80
    .local v0, status:I
    if-gtz v0, :cond_0

    .line 81
    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    .line 82
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/google/android/music/tutorial/SignupStatus;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/music/tutorial/SignupStatus;->getAllAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    .line 85
    :cond_1
    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getAccountsFromPreferences()[Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0
.end method

.method public hasVerifiedAccounts()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 133
    invoke-direct {p0}, Lcom/google/android/music/tutorial/SignupStatus;->getVerifiedStatus()I

    move-result v0

    if-lt v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
