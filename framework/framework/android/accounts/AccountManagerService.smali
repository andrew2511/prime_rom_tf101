.class public Landroid/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManagerService$DatabaseHelper;,
        Landroid/accounts/AccountManagerService$MessageHandler;,
        Landroid/accounts/AccountManagerService$Session;,
        Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Landroid/accounts/AccountManagerService$RemoveAccountSession;,
        Landroid/accounts/AccountManagerService$TestFeaturesSession;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent; = null

.field private static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String; = null

.field private static final COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String; = null

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account; = null

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field private static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final SELECTION_AUTHTOKENS_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final SELECTION_USERDATA_BY_ACCOUNT:Ljava/lang/String; = "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static final TIMEOUT_DELAY_MS:I = 0xea60

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccountCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mAuthTokenCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

.field private final mCacheLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private final mCredentialsPermissionNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

.field private mMessageThread:Landroid/os/HandlerThread;

.field private final mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mSigninRequiredNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUserDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    const-string v1, "count(type)"

    aput-object v1, v0, v3

    sput-object v0, Landroid/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 144
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v1, v0, v2

    const-string v1, "authtoken"

    aput-object v1, v0, v3

    sput-object v0, Landroid/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    .line 149
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Landroid/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 162
    new-array v0, v2, [Landroid/accounts/Account;

    sput-object v0, Landroid/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 165
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 166
    sget-object v0, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/accounts/AccountAuthenticatorCache;

    invoke-direct {v1, p1}, Landroid/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/accounts/IAccountAuthenticatorCache;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/accounts/IAccountAuthenticatorCache;)V
    .registers 8
    .parameter "context"
    .parameter "packageManager"
    .parameter "authenticatorCache"

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 151
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 152
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/accounts/AccountManagerService;->mSigninRequiredNotificationIds:Ljava/util/HashMap;

    .line 169
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    .line 171
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/accounts/AccountManagerService;->mUserDataCache:Ljava/util/HashMap;

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/accounts/AccountManagerService;->mAuthTokenCache:Ljava/util/HashMap;

    .line 195
    iput-object p1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 196
    iput-object p2, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 198
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 199
    :try_start_43
    new-instance v2, Landroid/accounts/AccountManagerService$DatabaseHelper;

    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;-><init>(Landroid/accounts/AccountManagerService;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    .line 200
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_95

    .line 202
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AccountManagerService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    .line 203
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 204
    new-instance v1, Landroid/accounts/AccountManagerService$MessageHandler;

    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/accounts/AccountManagerService$MessageHandler;-><init>(Landroid/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

    .line 206
    iput-object p3, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    .line 207
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 209
    sget-object v1, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/accounts/AccountManagerService$1;

    invoke-direct {v2, p0}, Landroid/accounts/AccountManagerService$1;-><init>(Landroid/accounts/AccountManagerService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->purgeOldGrants()V

    .line 222
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->validateAccountsAndPopulateCache()V

    .line 223
    return-void

    .line 200
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :catchall_95
    move-exception v2

    :try_start_96
    monitor-exit v1
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw v2
.end method

.method static synthetic access$000(Landroid/accounts/AccountManagerService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->purgeOldGrants()V

    return-void
.end method

.method static synthetic access$100(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 80
    invoke-direct/range {p0 .. p5}, Landroid/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 80
    invoke-static {}, Landroid/accounts/AccountManagerService;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->saveAuthTokenToDatabase(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->doNotification(Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Landroid/accounts/AccountManagerService;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$600(Landroid/accounts/AccountManagerService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$MessageHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$800(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;)Ljava/lang/Integer;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/accounts/AccountManagerService;)Landroid/accounts/IAccountAuthenticatorCache;
    .registers 2
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    return-object v0
.end method

.method private addAccountInternal(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 22
    .parameter "account"
    .parameter "password"
    .parameter "extras"

    .prologue
    .line 406
    if-nez p1, :cond_4

    .line 407
    const/4 v3, 0x0

    .line 448
    :goto_3
    return v3

    .line 409
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    move-object v13, v0

    monitor-enter v13

    .line 410
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 411
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_5d

    .line 413
    :try_start_16
    const-string/jumbo v3, "select count(*) from accounts WHERE name=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v4, v3, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v10

    .line 417
    .local v10, numMatches:J
    const-wide/16 v14, 0x0

    cmp-long v3, v10, v14

    if-lez v3, :cond_60

    .line 418
    const-string v3, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertAccountIntoDatabase: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skipping since the account already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_16 .. :try_end_57} :catchall_11e

    .line 420
    const/4 v3, 0x0

    .line 445
    :try_start_58
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 420
    monitor-exit v13

    goto :goto_3

    .line 449
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #numMatches:J
    :catchall_5d
    move-exception v3

    monitor-exit v13
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_5d

    throw v3

    .line 422
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10       #numMatches:J
    :cond_60
    :try_start_60
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 423
    .local v12, values:Landroid/content/ContentValues;
    const-string v3, "name"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v12, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v12, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v3, "password"

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v3, "accounts"

    const-string v5, "name"

    invoke-virtual {v4, v3, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 427
    .local v5, accountId:J
    const-wide/16 v14, 0x0

    cmp-long v3, v5, v14

    if-gez v3, :cond_b9

    .line 428
    const-string v3, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #accountId:J
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertAccountIntoDatabase: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skipping the DB insert failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b2
    .catchall {:try_start_60 .. :try_end_b2} :catchall_11e

    .line 430
    const/4 v3, 0x0

    .line 445
    :try_start_b3
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 430
    monitor-exit v13
    :try_end_b7
    .catchall {:try_start_b3 .. :try_end_b7} :catchall_5d

    goto/16 :goto_3

    .line 432
    .restart local v5       #accountId:J
    :cond_b9
    if-eqz p3, :cond_10e

    .line 433
    :try_start_bb
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_c3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 434
    .local v7, key:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, value:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 435
    invoke-direct/range {v3 .. v8}, Landroid/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-gez v3, :cond_c3

    .line 436
    const-string v3, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #accountId:J
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertAccountIntoDatabase: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skipping since insertExtra failed for key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107
    .catchall {:try_start_bb .. :try_end_107} :catchall_11e

    .line 438
    const/4 v3, 0x0

    .line 445
    :try_start_108
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 438
    monitor-exit v13
    :try_end_10c
    .catchall {:try_start_108 .. :try_end_10c} :catchall_5d

    goto/16 :goto_3

    .line 442
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .restart local v5       #accountId:J
    :cond_10e
    :try_start_10e
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 443
    invoke-direct/range {p0 .. p1}, Landroid/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Landroid/accounts/Account;)V
    :try_end_114
    .catchall {:try_start_10e .. :try_end_114} :catchall_11e

    .line 445
    :try_start_114
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 447
    invoke-direct/range {p0 .. p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    .line 448
    const/4 v3, 0x1

    monitor-exit v13

    goto/16 :goto_3

    .line 445
    .end local v5           #accountId:J
    .end local v10           #numMatches:J
    .end local v12           #values:Landroid/content/ContentValues;
    :catchall_11e
    move-exception v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_123
    .catchall {:try_start_114 .. :try_end_123} :catchall_5d
.end method

.method private checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V
    .registers 5
    .parameter "account"

    .prologue
    .line 2008
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.AUTHENTICATE_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2009
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkCallingUidAgainstAuthenticator(Landroid/accounts/Account;)V

    .line 2010
    return-void
.end method

.method private varargs checkBinderPermission([Ljava/lang/String;)V
    .registers 11
    .parameter "permissions"

    .prologue
    .line 1914
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1916
    .local v5, uid:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_7
    if-ge v1, v2, :cond_42

    aget-object v4, v0, v1

    .line 1917
    .local v4, perm:Ljava/lang/String;
    iget-object v6, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3f

    .line 1918
    const-string v6, "AccountManagerService"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 1919
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  caller uid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    :cond_3e
    return-void

    .line 1916
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1925
    .end local v4           #perm:Ljava/lang/String;
    :cond_42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caller uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lacks any of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1926
    .local v3, msg:Ljava/lang/String;
    const-string v6, "AccountManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private checkCallingUidAgainstAuthenticator(Landroid/accounts/Account;)V
    .registers 7
    .parameter "account"

    .prologue
    .line 1996
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1997
    .local v1, uid:I
    if-eqz p1, :cond_e

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroid/accounts/AccountManagerService;->hasAuthenticatorUid(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_32

    .line 1998
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different than the authenticator\'s uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1999
    .local v0, msg:Ljava/lang/String;
    const-string v2, "AccountManagerService"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2002
    .end local v0           #msg:Ljava/lang/String;
    :cond_32
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 2003
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caller uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is the same as the authenticator\'s uid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    :cond_59
    return-void
.end method

.method private checkManageAccountsOrUseCredentialsPermissions()V
    .registers 4

    .prologue
    .line 2021
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.USE_CREDENTIALS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2023
    return-void
.end method

.method private checkManageAccountsPermission()V
    .registers 4

    .prologue
    .line 2017
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2018
    return-void
.end method

.method private checkReadAccountsPermission()V
    .registers 4

    .prologue
    .line 2013
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 2014
    return-void
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;)V
    .registers 16
    .parameter "account"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 1031
    const-string/jumbo v8, "uid"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1033
    .local v7, uid:I
    const-string v8, "authTokenType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1035
    .local v1, authTokenType:Ljava/lang/String;
    const-string v8, "authTokenLabel"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, authTokenLabel:Ljava/lang/String;
    new-instance v3, Landroid/app/Notification;

    const v8, 0x108008a

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1040
    .local v3, n:Landroid/app/Notification;
    iget-object v8, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const v9, 0x10403bc

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1043
    .local v6, titleAndSubtitle:Ljava/lang/String;
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1044
    .local v2, index:I
    invoke-virtual {v6, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1045
    .local v5, title:Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1046
    .local v4, subtitle:Ljava/lang/String;
    iget-object v8, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/high16 v10, 0x1000

    invoke-static {v9, v12, p2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v8, v5, v4, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1049
    invoke-direct {p0, p1, v1, v7}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p0, v8, v3}, Landroid/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;)V

    .line 1050
    return-void
.end method

.method private doNotification(Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .registers 14
    .parameter "account"
    .parameter "message"
    .parameter "intent"

    .prologue
    .line 1869
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1871
    .local v0, identityToken:J
    :try_start_4
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1872
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doNotification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :cond_2f
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_50

    const-class v5, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 1878
    invoke-direct {p0, p1, p3}, Landroid/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;)V
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_95

    .line 1893
    :goto_4c
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1895
    return-void

    .line 1880
    :cond_50
    :try_start_50
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v3

    .line 1881
    .local v3, notificationId:Ljava/lang/Integer;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1882
    new-instance v2, Landroid/app/Notification;

    const v5, 0x108008a

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1884
    .local v2, n:Landroid/app/Notification;
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104010c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1886
    .local v4, notificationTitleFormat:Ljava/lang/String;
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x1000

    invoke-static {v7, v8, p3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v2, v5, v6, p2, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1890
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v2}, Landroid/accounts/AccountManagerService;->installNotification(ILandroid/app/Notification;)V
    :try_end_94
    .catchall {:try_start_50 .. :try_end_94} :catchall_95

    goto :goto_4c

    .line 1893
    .end local v2           #n:Landroid/app/Notification;
    .end local v3           #notificationId:Ljava/lang/Integer;
    .end local v4           #notificationTitleFormat:Ljava/lang/String;
    :catchall_95
    move-exception v5

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .registers 12
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1389
    const-string v1, "accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1392
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_1f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 1393
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_31

    move-result-wide v0

    .line 1397
    :goto_2a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1395
    return-wide v0

    :cond_2e
    const-wide/16 v0, -0x1

    goto :goto_2a

    .line 1397
    :catchall_31
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 9
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 1092
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    monitor-enter v2

    .line 1093
    :try_start_3
    new-instance v1, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1096
    .local v1, key:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1097
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_2a

    .line 1098
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1099
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    :cond_2a
    monitor-exit v2

    .line 1102
    return-object v0

    .line 1101
    .end local v0           #id:Ljava/lang/Integer;
    .end local v1           #key:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_2c
    move-exception v3

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v3
.end method

.method private static getDatabaseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1676
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accounts.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1681
    :goto_27
    return-object v0

    :cond_28
    const-string v0, "accounts.db"

    goto :goto_27
.end method

.method private getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J
    .registers 14
    .parameter "db"
    .parameter "accountId"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1402
    const-string v1, "extras"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accounts_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p4, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1406
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_3b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 1407
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_45
    .catchall {:try_start_3b .. :try_end_45} :catchall_4d

    move-result-wide v0

    .line 1411
    :goto_46
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1409
    return-wide v0

    :cond_4a
    const-wide/16 v0, -0x1

    goto :goto_46

    .line 1411
    :catchall_4d
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMetaValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "key"

    .prologue
    const/4 v10, 0x0

    .line 1790
    iget-object v9, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1791
    :try_start_4
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1792
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "meta"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const-string v3, "key=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_3f

    move-result-object v8

    .line 1795
    .local v8, c:Landroid/database/Cursor;
    :try_start_24
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 1796
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_3a

    move-result-object v1

    .line 1800
    :try_start_2f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1796
    monitor-exit v9

    .line 1798
    :goto_33
    return-object v1

    .line 1800
    :cond_34
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1798
    monitor-exit v9

    move-object v1, v10

    goto :goto_33

    .line 1800
    :catchall_3a
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1802
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_3f
    move-exception v1

    monitor-exit v9
    :try_end_41
    .catchall {:try_start_2f .. :try_end_41} :catchall_3f

    throw v1
.end method

.method private getSigninRequiredNotificationId(Landroid/accounts/Account;)Ljava/lang/Integer;
    .registers 5
    .parameter "account"

    .prologue
    .line 1107
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mSigninRequiredNotificationIds:Ljava/util/HashMap;

    monitor-enter v1

    .line 1108
    :try_start_3
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mSigninRequiredNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1109
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_1c

    .line 1110
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1111
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mSigninRequiredNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    :cond_1c
    monitor-exit v1

    .line 1114
    return-object v0

    .line 1113
    .end local v0           #id:Ljava/lang/Integer;
    :catchall_1e
    move-exception v2

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v2
.end method

.method public static getSingleton()Landroid/accounts/AccountManagerService;
    .registers 1

    .prologue
    .line 186
    sget-object v0, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerService;

    return-object v0
.end method

.method private hasAuthenticatorUid(Ljava/lang/String;I)Z
    .registers 8
    .parameter "accountType"
    .parameter "callingUid"

    .prologue
    const/4 v4, 0x0

    .line 1963
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    invoke-interface {v2}, Landroid/accounts/IAccountAuthenticatorCache;->getAllServices()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1964
    .local v1, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1965
    iget v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-eq v2, p2, :cond_31

    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v3, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v2

    if-nez v2, :cond_33

    :cond_31
    const/4 v2, 0x1

    .line 1970
    .end local v1           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :goto_32
    return v2

    .restart local v1       #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_33
    move v2, v4

    .line 1965
    goto :goto_32

    .end local v1           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_35
    move v2, v4

    .line 1970
    goto :goto_32
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 13
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1974
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_c

    move v3, v8

    .line 1991
    :goto_b
    return v3

    .line 1977
    :cond_c
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1978
    :try_start_f
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1979
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object p2, v0, v4

    const/4 v4, 0x2

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v0, v4

    const/4 v4, 0x3

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v0, v4

    .line 1981
    .local v0, args:[Ljava/lang/String;
    const-string v4, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    invoke-static {v1, v4, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_7e

    move v2, v8

    .line 1983
    .local v2, permissionGranted:Z
    :goto_3d
    if-nez v2, :cond_80

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1986
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no credentials permission for usage of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " by uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but ignoring since device is in test harness."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    monitor-exit v3

    move v3, v8

    goto :goto_b

    .end local v2           #permissionGranted:Z
    :cond_7e
    move v2, v9

    .line 1981
    goto :goto_3d

    .line 1991
    .restart local v2       #permissionGranted:Z
    :cond_80
    monitor-exit v3

    move v3, v2

    goto :goto_b

    .line 1992
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #permissionGranted:Z
    :catchall_83
    move-exception v4

    monitor-exit v3
    :try_end_85
    .catchall {:try_start_f .. :try_end_85} :catchall_83

    throw v4
.end method

.method private inSystemImage(I)Z
    .registers 12
    .parameter "callerUid"

    .prologue
    const/4 v9, 0x0

    .line 1931
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 1932
    .local v6, packages:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_a
    if-ge v2, v3, :cond_28

    aget-object v4, v0, v2

    .line 1934
    .local v4, name:Ljava/lang/String;
    :try_start_e
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1935
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_25

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_1b} :catch_21

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_25

    .line 1937
    const/4 v7, 0x1

    .line 1943
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_20
    return v7

    .line 1939
    .restart local v4       #name:Ljava/lang/String;
    :catch_21
    move-exception v7

    move-object v1, v7

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v7, v9

    .line 1940
    goto :goto_20

    .line 1932
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .end local v4           #name:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_28
    move v7, v9

    .line 1943
    goto :goto_20
.end method

.method private insertAccountIntoCacheLocked(Landroid/accounts/Account;)V
    .registers 8
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    .line 2119
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2120
    .local v0, accountsForType:[Landroid/accounts/Account;
    if-eqz v0, :cond_22

    array-length v3, v0

    move v2, v3

    .line 2121
    .local v2, oldLength:I
    :goto_f
    add-int/lit8 v3, v2, 0x1

    new-array v1, v3, [Landroid/accounts/Account;

    .line 2122
    .local v1, newAccountsForType:[Landroid/accounts/Account;
    if-eqz v0, :cond_18

    .line 2123
    invoke-static {v0, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2125
    :cond_18
    aput-object p1, v1, v2

    .line 2126
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    return-void

    .end local v1           #newAccountsForType:[Landroid/accounts/Account;
    .end local v2           #oldLength:I
    :cond_22
    move v2, v5

    .line 2120
    goto :goto_f
.end method

.method private insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .registers 9
    .parameter "db"
    .parameter "accountId"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 453
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 454
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "accounts_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 456
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-string v1, "extras"

    const-string v2, "key"

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private invalidateAuthTokenLocked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "db"
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 643
    if-eqz p3, :cond_7

    if-nez p2, :cond_8

    .line 669
    :cond_7
    :goto_7
    return-void

    .line 646
    :cond_8
    const-string v5, "SELECT authtokens._id, accounts.name, authtokens.type FROM accounts JOIN authtokens ON accounts._id = accounts_id WHERE authtoken = ? AND accounts.type = ?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object p3, v6, v7

    aput-object p2, v6, v8

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 658
    .local v4, cursor:Landroid/database/Cursor;
    :goto_14
    :try_start_14
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 659
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 660
    .local v1, authTokenId:J
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, accountName:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, authTokenType:Ljava/lang/String;
    const-string v5, "authtokens"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 663
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v0, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v5, v3, v6}, Landroid/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_4c

    goto :goto_14

    .line 667
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #authTokenId:J
    .end local v3           #authTokenType:Ljava/lang/String;
    :catchall_4c
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_51
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_7
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .parameter "account"
    .parameter "uid"
    .parameter "response"
    .parameter "authTokenType"
    .parameter "authTokenLabel"

    .prologue
    .line 1073
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1077
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1078
    invoke-direct {p0, p1, p4, p2}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1082
    const-string v1, "authTokenType"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1083
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1084
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1086
    return-object v0
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 8
    .parameter "response"
    .parameter "result"

    .prologue
    const/4 v4, 0x2

    .line 855
    if-nez p2, :cond_10

    .line 856
    const-string v1, "AccountManagerService"

    const-string/jumbo v2, "the result is unexpectedly null"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    :cond_10
    const-string v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 859
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calling onResult() on response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_3c
    :try_start_3c
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40

    .line 871
    :cond_3f
    :goto_3f
    return-void

    .line 864
    :catch_40
    move-exception v0

    .line 867
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AccountManagerService"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 868
    const-string v1, "AccountManagerService"

    const-string v2, "failure while notifying response"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 12
    .parameter "account"
    .parameter "authTokenType"
    .parameter "callerUid"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1947
    invoke-direct {p0, p3}, Landroid/accounts/AccountManagerService;->inSystemImage(I)Z

    move-result v2

    .line 1948
    .local v2, inSystemImage:Z
    if-eqz p1, :cond_61

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, p3}, Landroid/accounts/AccountManagerService;->hasAuthenticatorUid(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_61

    move v0, v7

    .line 1950
    .local v0, fromAuthenticator:Z
    :goto_11
    if-eqz p1, :cond_63

    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    move v1, v7

    .line 1952
    .local v1, hasExplicitGrants:Z
    :goto_1a
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1953
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkGrantsOrCallingUidAgainstAuthenticator: caller uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": is authenticator? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", has explicit permission? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    :cond_59
    if-nez v0, :cond_5f

    if-nez v1, :cond_5f

    if-eqz v2, :cond_65

    :cond_5f
    move v3, v7

    :goto_60
    return v3

    .end local v0           #fromAuthenticator:Z
    .end local v1           #hasExplicitGrants:Z
    :cond_61
    move v0, v6

    .line 1948
    goto :goto_11

    .restart local v0       #fromAuthenticator:Z
    :cond_63
    move v1, v6

    .line 1950
    goto :goto_1a

    .restart local v1       #hasExplicitGrants:Z
    :cond_65
    move v3, v6

    .line 1958
    goto :goto_60
.end method

.method private purgeOldGrants()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 226
    iget-object v11, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v11

    .line 227
    :try_start_5
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 228
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "grants"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "uid"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v5, "uid"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_6d

    move-result-object v8

    .line 232
    .local v8, cursor:Landroid/database/Cursor;
    :cond_21
    :goto_21
    :try_start_21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_72

    .line 233
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 234
    .local v10, uid:I
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_70

    move v9, v13

    .line 235
    .local v9, packageExists:Z
    :goto_35
    if-nez v9, :cond_21

    .line 238
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting grants for UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because its package is no longer installed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v1, "grants"

    const-string/jumbo v2, "uid=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_21 .. :try_end_67} :catchall_68

    goto :goto_21

    .line 244
    .end local v9           #packageExists:Z
    .end local v10           #uid:I
    :catchall_68
    move-exception v1

    :try_start_69
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    .line 246
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_6d
    move-exception v1

    monitor-exit v11
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_6d

    throw v1

    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #uid:I
    :cond_70
    move v9, v12

    .line 234
    goto :goto_35

    .line 244
    .end local v10           #uid:I
    :cond_72
    :try_start_72
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 246
    monitor-exit v11
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_6d

    .line 247
    return-void
.end method

.method private readPasswordInternal(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 13
    .parameter "account"

    .prologue
    const/4 v10, 0x0

    .line 325
    if-nez p1, :cond_5

    move-object v1, v10

    .line 338
    :goto_4
    return-object v1

    .line 329
    :cond_5
    iget-object v9, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 330
    :try_start_8
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 331
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "password"

    aput-object v4, v2, v3

    const-string v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3e

    move-result-object v8

    .line 335
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_2e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 336
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_2e .. :try_end_38} :catchall_47

    move-result-object v1

    .line 340
    :try_start_39
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 336
    monitor-exit v9

    goto :goto_4

    .line 342
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_3e
    move-exception v1

    monitor-exit v9
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_3e

    throw v1

    .line 340
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_41
    :try_start_41
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    monitor-exit v9

    move-object v1, v10

    goto :goto_4

    .line 340
    :catchall_47
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_4c
    .catchall {:try_start_41 .. :try_end_4c} :catchall_3e
.end method

.method private removeAccountFromCacheLocked(Landroid/accounts/Account;)V
    .registers 11
    .parameter "account"

    .prologue
    .line 2095
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/accounts/Account;

    .line 2096
    .local v6, oldAccountsForType:[Landroid/accounts/Account;
    if-eqz v6, :cond_31

    .line 2097
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2098
    .local v5, newAccountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object v0, v6

    .local v0, arr$:[Landroid/accounts/Account;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_14
    if-ge v2, v3, :cond_24

    aget-object v1, v0, v2

    .line 2099
    .local v1, curAccount:Landroid/accounts/Account;
    invoke-virtual {v1, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_21

    .line 2100
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2098
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 2103
    .end local v1           #curAccount:Landroid/accounts/Account;
    :cond_24
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 2104
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    .end local v0           #arr$:[Landroid/accounts/Account;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #newAccountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_31
    :goto_31
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mUserDataCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mAuthTokenCache:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    return-void

    .line 2106
    .restart local v0       #arr$:[Landroid/accounts/Account;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #newAccountsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    :cond_3c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Landroid/accounts/Account;

    .line 2107
    .local v4, newAccountsForType:[Landroid/accounts/Account;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #newAccountsForType:[Landroid/accounts/Account;
    check-cast v4, [Landroid/accounts/Account;

    .line 2108
    .restart local v4       #newAccountsForType:[Landroid/accounts/Account;
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    iget-object v8, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31
.end method

.method private saveAuthTokenToDatabase(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter "account"
    .parameter "type"
    .parameter "authToken"

    .prologue
    .line 672
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 673
    :cond_4
    const/4 v4, 0x0

    .line 696
    :goto_5
    return v4

    .line 675
    :cond_6
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    .line 676
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 677
    :try_start_14
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 678
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_a1

    .line 680
    :try_start_1d
    invoke-direct {p0, v2, p1}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_9c

    move-result-wide v0

    .line 681
    .local v0, accountId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gez v5, :cond_2e

    .line 682
    const/4 v5, 0x0

    .line 698
    :try_start_28
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 682
    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_a1

    move v4, v5

    goto :goto_5

    .line 684
    :cond_2e
    :try_start_2e
    const-string v5, "authtokens"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "accounts_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 687
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 688
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "accounts_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 689
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string v5, "authtoken"

    invoke-virtual {v3, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v5, "authtokens"

    const-string v6, "authtoken"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_94

    .line 692
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 693
    invoke-virtual {p0, v2, p1, p2, p3}, Landroid/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8c
    .catchall {:try_start_2e .. :try_end_8c} :catchall_9c

    .line 694
    const/4 v5, 0x1

    .line 698
    :try_start_8d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 694
    monitor-exit v4

    move v4, v5

    goto/16 :goto_5

    .line 696
    :cond_94
    const/4 v5, 0x0

    .line 698
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 696
    monitor-exit v4

    move v4, v5

    goto/16 :goto_5

    .line 698
    .end local v0           #accountId:J
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_9c
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 700
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_a1
    move-exception v5

    monitor-exit v4
    :try_end_a3
    .catchall {:try_start_8d .. :try_end_a3} :catchall_a1

    throw v5
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "args"
    .parameter "value"

    .prologue
    .line 1816
    if-eqz p0, :cond_14

    .line 1817
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_14

    aget-object v0, v1, v2

    .line 1818
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1819
    const/4 v4, 0x1

    .line 1823
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_10
    return v4

    .line 1817
    .restart local v0       #arg:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1823
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_14
    const/4 v4, 0x0

    goto :goto_10
.end method

.method private sendAccountsChangedBroadcast()V
    .registers 4

    .prologue
    .line 781
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the accounts changed, sending broadcast of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 784
    return-void
.end method

.method private setMetaValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1781
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1782
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1785
    :try_start_13
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "meta"

    const-string v4, "key"

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1786
    monitor-exit v1

    .line 1787
    return-void

    .line 1786
    :catchall_22
    move-exception v2

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw v2
.end method

.method private setPasswordInternal(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 11
    .parameter "account"
    .parameter "password"

    .prologue
    .line 756
    if-nez p1, :cond_3

    .line 778
    :goto_2
    return-void

    .line 759
    :cond_3
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 760
    :try_start_6
    iget-object v6, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v6}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 761
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_4b

    .line 763
    :try_start_f
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 764
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "password"

    invoke-virtual {v4, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    invoke-direct {p0, v3, p1}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 766
    .local v0, accountId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_43

    .line 767
    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    .line 768
    .local v2, argsAccountId:[Ljava/lang/String;
    const-string v6, "accounts"

    const-string v7, "_id=?"

    invoke-virtual {v3, v6, v4, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 769
    const-string v6, "authtokens"

    const-string v7, "accounts_id=?"

    invoke-virtual {v3, v6, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 770
    iget-object v6, p0, Landroid/accounts/AccountManagerService;->mAuthTokenCache:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_43
    .catchall {:try_start_f .. :try_end_43} :catchall_4e

    .line 774
    .end local v2           #argsAccountId:[Ljava/lang/String;
    :cond_43
    :try_start_43
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 776
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    .line 777
    monitor-exit v5

    goto :goto_2

    .end local v0           #accountId:J
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_4b
    move-exception v6

    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_43 .. :try_end_4d} :catchall_4b

    throw v6

    .line 774
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4e
    move-exception v6

    :try_start_4f
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_4b
.end method

.method private setUserdataInternal(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    const-wide/16 v10, 0x0

    .line 821
    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 852
    :cond_6
    :goto_6
    return-void

    .line 824
    :cond_7
    iget-object v9, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 825
    :try_start_a
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 826
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_20

    .line 828
    :try_start_13
    invoke-direct {p0, v1, p1}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_73

    move-result-wide v2

    .line 829
    .local v2, accountId:J
    cmp-long v0, v2, v10

    if-gez v0, :cond_23

    .line 849
    :try_start_1b
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 830
    monitor-exit v9

    goto :goto_6

    .line 851
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #accountId:J
    :catchall_20
    move-exception v0

    monitor-exit v9
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    throw v0

    .line 832
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #accountId:J
    :cond_23
    :try_start_23
    invoke-direct {p0, v1, v2, v3, p2}, Landroid/accounts/AccountManagerService;->getExtrasIdLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    move-result-wide v6

    .line 833
    .local v6, extrasId:J
    cmp-long v0, v6, v10

    if-gez v0, :cond_3b

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    .line 834
    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService;->insertExtraLocked(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_73

    move-result-wide v6

    .line 835
    cmp-long v0, v6, v10

    if-gez v0, :cond_68

    .line 849
    :try_start_36
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 836
    monitor-exit v9
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_20

    goto :goto_6

    .line 839
    :cond_3b
    :try_start_3b
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 840
    .local v8, values:Landroid/content/ContentValues;
    const-string/jumbo v0, "value"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const/4 v0, 0x1

    const-string v4, "extras"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    invoke-virtual {v1, v4, v8, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_3b .. :try_end_60} :catchall_73

    move-result v4

    if-eq v0, v4, :cond_68

    .line 849
    :try_start_63
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 842
    monitor-exit v9
    :try_end_67
    .catchall {:try_start_63 .. :try_end_67} :catchall_20

    goto :goto_6

    .line 846
    .end local v8           #values:Landroid/content/ContentValues;
    :cond_68
    :try_start_68
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6e
    .catchall {:try_start_68 .. :try_end_6e} :catchall_73

    .line 849
    :try_start_6e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 851
    monitor-exit v9

    goto :goto_6

    .line 849
    .end local v2           #accountId:J
    .end local v6           #extrasId:J
    :catchall_73
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_20
.end method

.method private static final stringArrayToString([Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "value"

    .prologue
    .line 2091
    if-eqz p0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private validateAccountsAndPopulateCache()V
    .registers 27

    .prologue
    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 251
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 252
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v12, 0x0

    .line 253
    .local v12, accountDeleted:Z
    const-string v4, "accounts"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "name"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_d3

    move-result-object v21

    .line 257
    .local v21, cursor:Landroid/database/Cursor;
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 258
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 260
    .local v17, accountNamesByType:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :goto_3c
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 261
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 262
    .local v13, accountId:J
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 263
    .local v18, accountType:Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v21

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 264
    .local v15, accountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    move-object v4, v0

    invoke-static/range {v18 .. v18}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v4

    if-nez v4, :cond_d6

    .line 266
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " because type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " no longer has a registered authenticator"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v4, "accounts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 269
    const/4 v12, 0x1

    .line 270
    new-instance v11, Landroid/accounts/Account;

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v11, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mUserDataCache:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mAuthTokenCache:Ljava/util/HashMap;

    move-object v4, v0

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c7
    .catchall {:try_start_2f .. :try_end_c7} :catchall_c9

    goto/16 :goto_3c

    .line 295
    .end local v11           #account:Landroid/accounts/Account;
    .end local v13           #accountId:J
    .end local v15           #accountName:Ljava/lang/String;
    .end local v17           #accountNamesByType:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v18           #accountType:Ljava/lang/String;
    :catchall_c9
    move-exception v4

    :try_start_ca
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 296
    if-eqz v12, :cond_d2

    .line 297
    invoke-direct/range {p0 .. p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    .line 295
    :cond_d2
    throw v4

    .line 300
    .end local v3           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v12           #accountDeleted:Z
    .end local v21           #cursor:Landroid/database/Cursor;
    :catchall_d3
    move-exception v4

    monitor-exit v25
    :try_end_d5
    .catchall {:try_start_ca .. :try_end_d5} :catchall_d3

    throw v4

    .line 274
    .restart local v3       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12       #accountDeleted:Z
    .restart local v13       #accountId:J
    .restart local v15       #accountName:Ljava/lang/String;
    .restart local v17       #accountNamesByType:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v18       #accountType:Ljava/lang/String;
    .restart local v21       #cursor:Landroid/database/Cursor;
    :cond_d6
    :try_start_d6
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 275
    .local v16, accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v16, :cond_ec

    .line 276
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .restart local v16       #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_ec
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3c

    .line 283
    .end local v13           #accountId:J
    .end local v15           #accountName:Ljava/lang/String;
    .end local v16           #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18           #accountType:Ljava/lang/String;
    :cond_f4
    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_fc
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 284
    .local v20, cur:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 285
    .restart local v18       #accountType:Ljava/lang/String;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 286
    .restart local v16       #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    new-array v0, v0, [Landroid/accounts/Account;

    move-object/from16 v19, v0

    .line 287
    .local v19, accountsForType:[Landroid/accounts/Account;
    const/16 v22, 0x0

    .line 288
    .local v22, i:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :goto_123
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13d

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 289
    .restart local v15       #accountName:Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    move-object v0, v4

    move-object v1, v15

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v19, v22

    .line 290
    add-int/lit8 v22, v22, 0x1

    goto :goto_123

    .line 292
    .end local v15           #accountName:Ljava/lang/String;
    :cond_13d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14a
    .catchall {:try_start_d6 .. :try_end_14a} :catchall_c9

    goto :goto_fc

    .line 295
    .end local v16           #accountNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18           #accountType:Ljava/lang/String;
    .end local v19           #accountsForType:[Landroid/accounts/Account;
    .end local v20           #cur:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v22           #i:I
    .end local v24           #i$:Ljava/util/Iterator;
    :cond_14b
    :try_start_14b
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 296
    if-eqz v12, :cond_153

    .line 297
    invoke-direct/range {p0 .. p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    .line 300
    :cond_153
    monitor-exit v25
    :try_end_154
    .catchall {:try_start_14b .. :try_end_154} :catchall_d3

    .line 301
    return-void
.end method


# virtual methods
.method public addAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .parameter "account"
    .parameter "password"
    .parameter "extras"

    .prologue
    .line 388
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 389
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_3d
    if-nez p1, :cond_47

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 394
    :cond_47
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 397
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 399
    .local v0, identityToken:J
    :try_start_4e
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->addAccountInternal(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_56

    move-result v2

    .line 401
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 399
    return v2

    .line 401
    :catchall_56
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public addAcount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 21
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "expectActivityLaunch"
    .parameter "options"

    .prologue
    .line 1120
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1121
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount: accountType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", requiredFeatures "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Landroid/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expectActivityLaunch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_72
    if-nez p1, :cond_7d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1130
    :cond_7d
    if-nez p2, :cond_87

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "accountType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1131
    :cond_87
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1132
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v12

    .line 1134
    .local v12, identityToken:J
    :try_start_8e
    new-instance v2, Landroid/accounts/AccountManagerService$4;

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    invoke-direct/range {v2 .. v11}, Landroid/accounts/AccountManagerService$4;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService$4;->bind()V
    :try_end_a5
    .catchall {:try_start_8e .. :try_end_a5} :catchall_a9

    .line 1151
    invoke-static {v12, v13}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1153
    return-void

    .line 1151
    :catchall_a9
    move-exception v2

    invoke-static {v12, v13}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected cancelNotification(I)V
    .registers 6
    .parameter "id"

    .prologue
    .line 1903
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1905
    .local v0, identityToken:J
    :try_start_4
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 1908
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1910
    return-void

    .line 1908
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .registers 7
    .parameter "account"

    .prologue
    .line 787
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 788
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_3d
    if-nez p1, :cond_47

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 793
    :cond_47
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 794
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 796
    .local v0, identityToken:J
    const/4 v2, 0x0

    :try_start_4f
    invoke-direct {p0, p1, v2}, Landroid/accounts/AccountManagerService;->setPasswordInternal(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_56

    .line 798
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 800
    return-void

    .line 798
    :catchall_56
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public confirmCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V
    .registers 15
    .parameter "response"
    .parameter "account"
    .parameter "options"
    .parameter "expectActivityLaunch"

    .prologue
    .line 1157
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1158
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmCredentials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_51
    if-nez p1, :cond_5c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1165
    :cond_5c
    if-nez p2, :cond_66

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1166
    :cond_66
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1167
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 1169
    .local v8, identityToken:J
    :try_start_6d
    new-instance v0, Landroid/accounts/AccountManagerService$5;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManagerService$5;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$5;->bind()V
    :try_end_7d
    .catchall {:try_start_6d .. :try_end_7d} :catchall_81

    .line 1180
    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1182
    return-void

    .line 1180
    :catchall_81
    move-exception v0

    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 27
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 1828
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1830
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "--checkin"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    const-string v5, "-c"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    :cond_26
    const/4 v5, 0x1

    move/from16 v17, v5

    .line 1832
    .local v17, isCheckinRequest:Z
    :goto_29
    if-eqz v17, :cond_76

    .line 1834
    const-string v5, "accounts"

    sget-object v6, Landroid/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "type"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_6f

    move-result-object v15

    .line 1837
    .local v15, cursor:Landroid/database/Cursor;
    :goto_3a
    :try_start_3a
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_145

    .line 1839
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_3a .. :try_end_67} :catchall_68

    goto :goto_3a

    .line 1842
    :catchall_68
    move-exception v5

    if-eqz v15, :cond_6e

    .line 1843
    :try_start_6b
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1842
    :cond_6e
    throw v5

    .line 1865
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #isCheckinRequest:Z
    :catchall_6f
    move-exception v5

    monitor-exit v22
    :try_end_71
    .catchall {:try_start_6b .. :try_end_71} :catchall_6f

    throw v5

    .line 1830
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_72
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_29

    .line 1847
    .restart local v17       #isCheckinRequest:Z
    :cond_76
    const/4 v5, 0x0

    :try_start_77
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v13

    .line 1848
    .local v13, accounts:[Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Accounts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    move-object v14, v13

    .local v14, arr$:[Landroid/accounts/Account;
    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_9f
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_c3

    aget-object v12, v14, v16

    .line 1850
    .local v12, account:Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1849
    add-int/lit8 v16, v16, 0x1

    goto :goto_9f

    .line 1853
    .end local v12           #account:Landroid/accounts/Account;
    :cond_c3
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    move-object v5, v0

    monitor-enter v5
    :try_end_cc
    .catchall {:try_start_77 .. :try_end_cc} :catchall_6f

    .line 1855
    :try_start_cc
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 1856
    .local v19, now:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Active Sessions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_ff
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_130

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/accounts/AccountManagerService$Session;

    .line 1858
    .local v21, session:Landroid/accounts/AccountManagerService$Session;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ff

    .line 1860
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #now:J
    .end local v21           #session:Landroid/accounts/AccountManagerService$Session;
    :catchall_12d
    move-exception v6

    monitor-exit v5
    :try_end_12f
    .catchall {:try_start_cc .. :try_end_12f} :catchall_12d

    :try_start_12f
    throw v6
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_6f

    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v19       #now:J
    :cond_130
    :try_start_130
    monitor-exit v5
    :try_end_131
    .catchall {:try_start_130 .. :try_end_131} :catchall_12d

    .line 1862
    :try_start_131
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1863
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Landroid/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1865
    .end local v13           #accounts:[Landroid/accounts/Account;
    .end local v14           #arr$:[Landroid/accounts/Account;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #len$:I
    .end local v19           #now:J
    :cond_143
    :goto_143
    monitor-exit v22

    .line 1866
    return-void

    .line 1842
    .restart local v15       #cursor:Landroid/database/Cursor;
    :cond_145
    if-eqz v15, :cond_143

    .line 1843
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_14a
    .catchall {:try_start_131 .. :try_end_14a} :catchall_6f

    goto :goto_143
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .registers 13
    .parameter "response"
    .parameter "accountType"
    .parameter "expectActivityLaunch"

    .prologue
    .line 1221
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1222
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "editProperties: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_51
    if-nez p1, :cond_5c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1229
    :cond_5c
    if-nez p2, :cond_66

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1230
    :cond_66
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1231
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v7

    .line 1233
    .local v7, identityToken:J
    :try_start_6d
    new-instance v0, Landroid/accounts/AccountManagerService$7;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManagerService$7;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$7;->bind()V
    :try_end_7b
    .catchall {:try_start_6d .. :try_end_7b} :catchall_7f

    .line 1244
    invoke-static {v7, v8}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1246
    return-void

    .line 1244
    :catchall_7f
    move-exception v0

    invoke-static {v7, v8}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method getAccountLabel(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "accountType"

    .prologue
    .line 1053
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 1056
    .local v2, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v2, :cond_26

    .line 1057
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1062
    :cond_26
    :try_start_26
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object p0, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/accounts/AuthenticatorDescription;

    iget-object v4, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_32} :catch_3e

    move-result-object v0

    .line 1067
    .local v0, authContext:Landroid/content/Context;
    iget-object p0, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p0, Landroid/accounts/AuthenticatorDescription;

    iget v3, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1064
    .end local v0           #authContext:Landroid/content/Context;
    :catch_3e
    move-exception v3

    move-object v1, v3

    .line 1065
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown account type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 7
    .parameter "type"

    .prologue
    .line 1342
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1343
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccounts: accountType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1347
    :cond_3d
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 1348
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1350
    .local v0, identityToken:J
    :try_start_44
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_53

    .line 1351
    :try_start_47
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_50

    .line 1354
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1351
    return-object v3

    .line 1352
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 1354
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 11
    .parameter "response"
    .parameter "type"
    .parameter "features"

    .prologue
    .line 1360
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1361
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccounts: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", features "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p3}, Landroid/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caller\'s uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_55
    if-nez p1, :cond_60

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1368
    :cond_60
    if-nez p2, :cond_6a

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1369
    :cond_6a
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 1370
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1372
    .local v1, identityToken:J
    if-eqz p3, :cond_76

    :try_start_73
    array-length v4, p3

    if-nez v4, :cond_97

    .line 1374
    :cond_76
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_92

    .line 1375
    :try_start_79
    invoke-virtual {p0, p2}, Landroid/accounts/AccountManagerService;->getAccountsFromCacheLocked(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1376
    .local v0, accounts:[Landroid/accounts/Account;
    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_79 .. :try_end_7e} :catchall_8f

    .line 1377
    :try_start_7e
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1378
    .local v3, result:Landroid/os/Bundle;
    const-string v4, "accounts"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1379
    invoke-direct {p0, p1, v3}, Landroid/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_8b
    .catchall {:try_start_7e .. :try_end_8b} :catchall_92

    .line 1384
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v3           #result:Landroid/os/Bundle;
    :goto_8b
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1386
    return-void

    .line 1376
    :catchall_8f
    move-exception v5

    :try_start_90
    monitor-exit v4
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    :try_start_91
    throw v5
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    .line 1384
    :catchall_92
    move-exception v4

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4

    .line 1382
    :cond_97
    :try_start_97
    new-instance v4, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    invoke-direct {v4, p0, p1, p2, p3}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_9f
    .catchall {:try_start_97 .. :try_end_9f} :catchall_92

    goto :goto_8b
.end method

.method protected getAccountsFromCacheLocked(Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 8
    .parameter "accountType"

    .prologue
    .line 2130
    if-eqz p1, :cond_18

    .line 2131
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2132
    .local v0, accounts:[Landroid/accounts/Account;
    if-nez v0, :cond_f

    .line 2133
    sget-object v4, Landroid/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 2152
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local p0
    :goto_e
    return-object v4

    .line 2135
    .restart local v0       #accounts:[Landroid/accounts/Account;
    .restart local p0
    :cond_f
    array-length v4, v0

    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/accounts/Account;

    move-object v4, p0

    goto :goto_e

    .line 2138
    .end local v0           #accounts:[Landroid/accounts/Account;
    .restart local p0
    :cond_18
    const/4 v3, 0x0

    .line 2139
    .local v3, totalLength:I
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2140
    .restart local v0       #accounts:[Landroid/accounts/Account;
    array-length v4, v0

    add-int/2addr v3, v4

    goto :goto_23

    .line 2142
    .end local v0           #accounts:[Landroid/accounts/Account;
    :cond_32
    if-nez v3, :cond_37

    .line 2143
    sget-object v4, Landroid/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    goto :goto_e

    .line 2145
    :cond_37
    new-array v0, v3, [Landroid/accounts/Account;

    .line 2146
    .restart local v0       #accounts:[Landroid/accounts/Account;
    const/4 v3, 0x0

    .line 2147
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mAccountCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    .line 2148
    .local v1, accountsOfType:[Landroid/accounts/Account;
    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2150
    array-length v4, v1

    add-int/2addr v3, v4

    goto :goto_44

    .end local v1           #accountsOfType:[Landroid/accounts/Account;
    :cond_58
    move-object v4, v0

    .line 2152
    goto :goto_e
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .registers 30
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "notifyOnAuthFailure"
    .parameter "expectActivityLaunch"
    .parameter "loginOptionsIn"

    .prologue
    .line 914
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 915
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAuthToken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", authTokenType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", notifyOnAuthFailure "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caller\'s uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    :cond_74
    if-nez p1, :cond_7f

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 924
    :cond_7f
    if-nez p2, :cond_89

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "account is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 925
    :cond_89
    if-nez p3, :cond_93

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "authTokenType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 926
    :cond_93
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.USE_CREDENTIALS"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 927
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 928
    .local v15, callerUid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 930
    .local v19, callerPid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    move-object v4, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v18

    .line 933
    .local v18, authenticatorInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-eqz v18, :cond_148

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v4, v4, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v4, :cond_148

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 937
    .local v16, customTokens:Z
    :goto_cb
    if-nez v16, :cond_da

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_14c

    :cond_da
    const/4 v4, 0x1

    move v14, v4

    .line 940
    .local v14, permissionGranted:Z
    :goto_dc
    if-nez p6, :cond_14f

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v10, v4

    .line 942
    .local v10, loginOptions:Landroid/os/Bundle;
    :goto_e4
    if-eqz v16, :cond_fc

    .line 944
    const-string v4, "callerUid"

    invoke-virtual {v10, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 945
    const-string v4, "callerPid"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 946
    if-eqz p4, :cond_fc

    .line 947
    const-string v4, "notifyOnAuthFailure"

    const/4 v5, 0x1

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 951
    :cond_fc
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 955
    .local v20, identityToken:J
    if-nez v16, :cond_152

    if-eqz v14, :cond_152

    .line 956
    :try_start_104
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManagerService;->readAuthTokenInternal(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 957
    .local v17, authToken:Ljava/lang/String;
    if-eqz v17, :cond_152

    .line 958
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 959
    .local v22, result:Landroid/os/Bundle;
    const-string v4, "authtoken"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const-string v4, "authAccount"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v4, "accountType"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_144
    .catchall {:try_start_104 .. :try_end_144} :catchall_16d

    .line 1026
    .end local v17           #authToken:Ljava/lang/String;
    .end local v22           #result:Landroid/os/Bundle;
    :goto_144
    invoke-static/range {v20 .. v21}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1028
    return-void

    .line 933
    .end local v10           #loginOptions:Landroid/os/Bundle;
    .end local v14           #permissionGranted:Z
    .end local v16           #customTokens:Z
    .end local v20           #identityToken:J
    :cond_148
    const/4 v4, 0x0

    move/from16 v16, v4

    goto :goto_cb

    .line 937
    .restart local v16       #customTokens:Z
    :cond_14c
    const/4 v4, 0x0

    move v14, v4

    goto :goto_dc

    .restart local v14       #permissionGranted:Z
    :cond_14f
    move-object/from16 v10, p6

    .line 940
    goto :goto_e4

    .line 967
    .restart local v10       #loginOptions:Landroid/os/Bundle;
    .restart local v20       #identityToken:J
    :cond_152
    :try_start_152
    new-instance v4, Landroid/accounts/AccountManagerService$3;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v7, v0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p5

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-direct/range {v4 .. v16}, Landroid/accounts/AccountManagerService$3;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZ)V

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$3;->bind()V
    :try_end_16c
    .catchall {:try_start_152 .. :try_end_16c} :catchall_16d

    goto :goto_144

    .line 1026
    :catchall_16d
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 14
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    const/4 v2, 0x0

    .line 875
    if-nez p2, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_b
    if-nez p3, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_15
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.USE_CREDENTIALS"

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 880
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 882
    .local v8, identityToken:J
    :try_start_23
    new-instance v0, Landroid/accounts/AccountManagerService$2;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManagerService$2;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$2;->bind()V
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_37

    .line 907
    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 909
    return-void

    .line 907
    :catchall_37
    move-exception v0

    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .registers 11

    .prologue
    .line 364
    const-string v7, "AccountManagerService"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_33

    .line 365
    const-string v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAuthenticatorTypes: caller\'s uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_33
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 372
    .local v4, identityToken:J
    :try_start_37
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/IAccountAuthenticatorCache;

    invoke-interface {v7}, Landroid/accounts/IAccountAuthenticatorCache;->getAllServices()Ljava/util/Collection;

    move-result-object v1

    .line 373
    .local v1, authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v6, v7, [Landroid/accounts/AuthenticatorDescription;

    .line 375
    .local v6, types:[Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .line 377
    .local v2, i:I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, i$:Ljava/util/Iterator;
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 378
    .local v0, authenticator:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object p0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p0, Landroid/accounts/AuthenticatorDescription;

    aput-object p0, v6, v2
    :try_end_5a
    .catchall {:try_start_37 .. :try_end_5a} :catchall_5d

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 383
    .end local v0           #authenticator:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v1           #authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #types:[Landroid/accounts/AuthenticatorDescription;
    :catchall_5d
    move-exception v7

    invoke-static {v4, v5}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v7

    .restart local v1       #authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #types:[Landroid/accounts/AuthenticatorDescription;
    :cond_62
    invoke-static {v4, v5}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 381
    return-object v6
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 7
    .parameter "account"

    .prologue
    .line 308
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 309
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_3d
    if-nez p1, :cond_47

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_47
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 316
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 318
    .local v0, identityToken:J
    :try_start_4e
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->readPasswordInternal(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_56

    move-result-object v2

    .line 320
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 318
    return-object v2

    .line 320
    :catchall_56
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "account"
    .parameter "key"

    .prologue
    .line 346
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 347
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_47
    if-nez p1, :cond_51

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_51
    if-nez p2, :cond_5b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 354
    :cond_5b
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 355
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 357
    .local v0, identityToken:J
    :try_start_62
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerService;->readUserDataInternal(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6a

    move-result-object v2

    .line 359
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 357
    return-object v2

    .line 359
    :catchall_6a
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 11
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 2033
    if-eqz p1, :cond_4

    if-nez p2, :cond_11

    .line 2034
    :cond_4
    const-string v4, "AccountManagerService"

    const-string v5, "grantAppPermission: called with invalid arguments"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2055
    :goto_10
    return-void

    .line 2037
    :cond_11
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2038
    :try_start_14
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2039
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_5e

    .line 2041
    :try_start_1d
    invoke-direct {p0, v2, p1}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 2042
    .local v0, accountId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-ltz v5, :cond_4e

    .line 2043
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2044
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "accounts_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2045
    const-string v5, "auth_token_type"

    invoke-virtual {v3, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    const-string/jumbo v5, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2047
    const-string v5, "grants"

    const-string v6, "accounts_id"

    invoke-virtual {v2, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2048
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4e
    .catchall {:try_start_1d .. :try_end_4e} :catchall_61

    .line 2051
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_4e
    :try_start_4e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2053
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    .line 2054
    monitor-exit v4

    goto :goto_10

    .end local v0           #accountId:J
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_5e
    move-exception v5

    monitor-exit v4
    :try_end_60
    .catchall {:try_start_4e .. :try_end_60} :catchall_5e

    throw v5

    .line 2051
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_61
    move-exception v5

    :try_start_62
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_5e
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .registers 9
    .parameter "response"
    .parameter "account"
    .parameter "features"

    .prologue
    .line 462
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 463
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasFeatures: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", response "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", features "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/accounts/AccountManagerService;->stringArrayToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_55
    if-nez p1, :cond_60

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 470
    :cond_60
    if-nez p2, :cond_6a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_6a
    if-nez p3, :cond_74

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "features is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 472
    :cond_74
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 473
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 475
    .local v0, identityToken:J
    :try_start_7b
    new-instance v2, Landroid/accounts/AccountManagerService$TestFeaturesSession;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/accounts/AccountManagerService$TestFeaturesSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_83
    .catchall {:try_start_7b .. :try_end_83} :catchall_87

    .line 477
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 479
    return-void

    .line 477
    :catchall_87
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected installNotification(ILandroid/app/Notification;)V
    .registers 5
    .parameter "notificationId"
    .parameter "n"

    .prologue
    .line 1898
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1900
    return-void
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    .line 617
    const-string v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 618
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalidateAuthToken: accountType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    :cond_3d
    if-nez p1, :cond_47

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "accountType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 623
    :cond_47
    if-nez p2, :cond_51

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authToken is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 624
    :cond_51
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsOrUseCredentialsPermissions()V

    .line 625
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 627
    .local v1, identityToken:J
    :try_start_58
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_7a

    .line 628
    :try_start_5b
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 629
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_77

    .line 631
    :try_start_64
    invoke-direct {p0, v0, p1, p2}, Landroid/accounts/AccountManagerService;->invalidateAuthTokenLocked(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_72

    .line 634
    :try_start_6a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 636
    monitor-exit v3
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_77

    .line 638
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 640
    return-void

    .line 634
    :catchall_72
    move-exception v4

    :try_start_73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 636
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_77
    move-exception v4

    monitor-exit v3
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_77

    :try_start_79
    throw v4
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 638
    :catchall_7a
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "intent"

    .prologue
    .line 1806
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V
    .registers 3
    .parameter "desc"
    .parameter "removed"

    .prologue
    .line 304
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->validateAccountsAndPopulateCache()V

    .line 305
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    .end local p1
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 704
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 705
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "peekAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_47
    if-nez p1, :cond_51

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 711
    :cond_51
    if-nez p2, :cond_5b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "authTokenType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 712
    :cond_5b
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 713
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 715
    .local v0, identityToken:J
    :try_start_62
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerService;->readAuthTokenInternal(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_6a

    move-result-object v2

    .line 717
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 715
    return-object v2

    .line 717
    :catchall_6a
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected readAuthTokenInternal(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 2185
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2186
    :try_start_3
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mAuthTokenCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2187
    .local v0, authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_1c

    .line 2189
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2190
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v1, p1}, Landroid/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 2191
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mAuthTokenCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2193
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1c
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    monitor-exit v2

    return-object p0

    .line 2194
    .end local v0           #authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v3
.end method

.method protected readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .registers 15
    .parameter "db"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2232
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 2233
    .local v9, authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "authtokens"

    sget-object v2, Landroid/accounts/AccountManagerService;->COLUMNS_AUTHTOKENS_TYPE_AND_AUTHTOKEN:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2239
    .local v10, cursor:Landroid/database/Cursor;
    :goto_20
    :try_start_20
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2240
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2241
    .local v11, type:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2242
    .local v8, authToken:Ljava/lang/String;
    invoke-virtual {v9, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_34

    goto :goto_20

    .line 2245
    .end local v8           #authToken:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :catchall_34
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_39
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2247
    return-object v9
.end method

.method protected readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;
    .registers 15
    .parameter "db"
    .parameter "account"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2212
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 2213
    .local v10, userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "extras"

    sget-object v2, Landroid/accounts/AccountManagerService;->COLUMNS_EXTRAS_KEY_AND_VALUE:[Ljava/lang/String;

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?)"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2219
    .local v8, cursor:Landroid/database/Cursor;
    :goto_20
    :try_start_20
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2220
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2221
    .local v9, tmpkey:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2222
    .local v11, value:Ljava/lang/String;
    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_34

    goto :goto_20

    .line 2225
    .end local v9           #tmpkey:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :catchall_34
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_39
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2227
    return-object v10
.end method

.method protected readUserDataInternal(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "account"
    .parameter "key"

    .prologue
    .line 2198
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2199
    :try_start_3
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mUserDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2200
    .local v1, userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_1c

    .line 2202
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2203
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p0, v0, p1}, Landroid/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v1

    .line 2204
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mUserDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_1c
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    monitor-exit v2

    return-object p0

    .line 2207
    .end local v1           #userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_24
    move-exception v3

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v3
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V
    .registers 11
    .parameter "response"
    .parameter "account"

    .prologue
    .line 534
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 535
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeAccount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", caller\'s uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_48
    if-nez p1, :cond_53

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "response is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 541
    :cond_53
    if-nez p2, :cond_5d

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "account is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 542
    :cond_5d
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 543
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 545
    .local v2, identityToken:J
    invoke-direct {p0, p2}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    .line 546
    iget-object v6, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    monitor-enter v6

    .line 548
    :try_start_72
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7c
    :goto_7c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 549
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 550
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 551
    .local v1, id:I
    invoke-virtual {p0, v1}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    goto :goto_7c

    .line 554
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:I
    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_a4
    move-exception v5

    monitor-exit v6
    :try_end_a6
    .catchall {:try_start_72 .. :try_end_a6} :catchall_a4

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_a7
    :try_start_a7
    monitor-exit v6
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a4

    .line 557
    :try_start_a8
    new-instance v5, Landroid/accounts/AccountManagerService$RemoveAccountSession;

    invoke-direct {v5, p0, p1, p2}, Landroid/accounts/AccountManagerService$RemoveAccountSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_b0
    .catchall {:try_start_a8 .. :try_end_b0} :catchall_b4

    .line 559
    invoke-static {v2, v3}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 561
    return-void

    .line 559
    :catchall_b4
    move-exception v5

    invoke-static {v2, v3}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v5
.end method

.method protected removeAccountInternal(Landroid/accounts/Account;)V
    .registers 9
    .parameter "account"

    .prologue
    .line 607
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 608
    :try_start_3
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 609
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "accounts"

    const-string v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 611
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->removeAccountFromCacheLocked(Landroid/accounts/Account;)V

    .line 612
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    .line 613
    monitor-exit v1

    .line 614
    return-void

    .line 613
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 13
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 2066
    if-eqz p1, :cond_4

    if-nez p2, :cond_12

    .line 2067
    :cond_4
    const-string v3, "AccountManagerService"

    const-string/jumbo v4, "revokeAppPermission: called with invalid arguments"

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2088
    :goto_11
    return-void

    .line 2070
    :cond_12
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2071
    :try_start_15
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2072
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_56

    .line 2074
    :try_start_1e
    invoke-direct {p0, v2, p1}, Landroid/accounts/AccountManagerService;->getAccountIdLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 2075
    .local v0, accountId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_46

    .line 2076
    const-string v4, "grants"

    const-string v5, "accounts_id=? AND auth_token_type=? AND uid=?"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2081
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_46
    .catchall {:try_start_1e .. :try_end_46} :catchall_59

    .line 2084
    :cond_46
    :try_start_46
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2086
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    .line 2087
    monitor-exit v3

    goto :goto_11

    .end local v0           #accountId:J
    .end local v2           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_56
    move-exception v4

    monitor-exit v3
    :try_end_58
    .catchall {:try_start_46 .. :try_end_58} :catchall_56

    throw v4

    .line 2084
    .restart local v2       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_59
    move-exception v4

    :try_start_5a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_56
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "account"
    .parameter "authTokenType"
    .parameter "authToken"

    .prologue
    .line 722
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 723
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_48
    if-nez p1, :cond_52

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 729
    :cond_52
    if-nez p2, :cond_5c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "authTokenType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 730
    :cond_5c
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 731
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 733
    .local v0, identityToken:J
    :try_start_63
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->saveAuthTokenToDatabase(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_6a

    .line 735
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 737
    return-void

    .line 735
    :catchall_6a
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 8
    .parameter "account"
    .parameter "password"

    .prologue
    .line 740
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 741
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_3e
    if-nez p1, :cond_48

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 746
    :cond_48
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 747
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 749
    .local v0, identityToken:J
    :try_start_4f
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->setPasswordInternal(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_56

    .line 751
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 753
    return-void

    .line 751
    :catchall_56
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 803
    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 804
    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUserData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_48
    if-nez p2, :cond_52

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 810
    :cond_52
    if-nez p1, :cond_5c

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 811
    :cond_5c
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 812
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 814
    .local v0, identityToken:J
    :try_start_63
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->setUserdataInternal(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_6a

    .line 816
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 818
    return-void

    .line 816
    :catchall_6a
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 17
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "expectActivityLaunch"
    .parameter "loginOptions"

    .prologue
    .line 1187
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1188
    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCredentials: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_5c
    if-nez p1, :cond_67

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1196
    :cond_67
    if-nez p2, :cond_71

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_71
    if-nez p3, :cond_7b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_7b
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1199
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v9

    .line 1201
    .local v9, identityToken:J
    :try_start_82
    new-instance v0, Landroid/accounts/AccountManagerService$6;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManagerService$6;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$6;->bind()V
    :try_end_94
    .catchall {:try_start_82 .. :try_end_94} :catchall_98

    .line 1215
    invoke-static {v9, v10}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1217
    return-void

    .line 1215
    :catchall_98
    move-exception v0

    invoke-static {v9, v10}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected writeAuthTokenIntoCacheLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2172
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mAuthTokenCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2173
    .local v0, authTokensForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_13

    .line 2174
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerService;->readAuthTokensForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 2175
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mAuthTokenCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    :cond_13
    if-nez p4, :cond_19

    .line 2178
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2182
    :goto_18
    return-void

    .line 2180
    :cond_19
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method

.method protected writeUserDataIntoCacheLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2158
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUserDataCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2159
    .local v0, userDataForAccount:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_13

    .line 2160
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerService;->readUserDataForAccountFromDatabaseLocked(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    .line 2161
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mUserDataCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2163
    :cond_13
    if-nez p4, :cond_19

    .line 2164
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2168
    :goto_18
    return-void

    .line 2166
    :cond_19
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method
