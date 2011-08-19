.class Lcom/android/contacts/model/AccountTypeManagerImpl;
.super Lcom/android/contacts/model/AccountTypeManager;
.source "AccountTypeManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Landroid/content/SyncStatusObserver;


# static fields
.field private static final ACCOUNT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/model/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private mAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFallbackAccountType:Lcom/android/contacts/model/AccountType;

.field private volatile mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

.field private mListenerHandler:Landroid/os/Handler;

.field private mListenerThread:Landroid/os/HandlerThread;

.field private mWritableAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 125
    new-instance v0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;

    invoke-direct {v0}, Lcom/android/contacts/model/AccountTypeManagerImpl$2;-><init>()V

    sput-object v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 140
    invoke-direct {p0}, Lcom/android/contacts/model/AccountTypeManager;-><init>()V

    .line 102
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/ArrayList;

    .line 103
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mWritableAccounts:Ljava/util/ArrayList;

    .line 104
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypes:Ljava/util/HashMap;

    .line 112
    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/model/AccountTypeManagerImpl$1;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 123
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 141
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    .line 142
    new-instance v2, Lcom/android/contacts/model/FallbackAccountType;

    invoke-direct {v2, p1}, Lcom/android/contacts/model/FallbackAccountType;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    .line 144
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    .line 146
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "AccountChangeListener"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    .line 147
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v2, Lcom/android/contacts/model/AccountTypeManagerImpl$3;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/model/AccountTypeManagerImpl$3;-><init>(Lcom/android/contacts/model/AccountTypeManagerImpl;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v1, sdFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v0       #filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 178
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v3, v4}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 180
    invoke-static {v5, p0}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    .line 182
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected static findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;
    .locals 5
    .parameter "auths"
    .parameter "accountType"

    .prologue
    .line 355
    move-object v0, p0

    .local v0, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 356
    .local v1, auth:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    .line 360
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :goto_1
    return-object v4

    .line 355
    .restart local v1       #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v1           #auth:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isPCSyncAccount(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountType"

    .prologue
    .line 342
    const-string v0, "com.asus.pcsync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    .line 345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method ensureAccountsLoaded()V
    .locals 3

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 206
    .local v1, latch:Ljava/util/concurrent/CountDownLatch;
    if-nez v1, :cond_0

    .line 212
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 211
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;
    .locals 2
    .parameter "accountType"

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 406
    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType;

    .line 408
    .local v0, type:Lcom/android/contacts/model/AccountType;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    goto :goto_0

    .line 409
    .end local v0           #type:Lcom/android/contacts/model/AccountType;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccounts(Z)Ljava/util/ArrayList;
    .locals 1
    .parameter "writableOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 369
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mWritableAccounts:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getKindOrFallback(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;
    .locals 5
    .parameter "accountType"
    .parameter "mimeType"

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->ensureAccountsLoaded()V

    .line 380
    const/4 v0, 0x0

    .line 383
    .local v0, kind:Lcom/android/contacts/model/AccountType$DataKind;
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypes:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType;

    .line 384
    .local v1, type:Lcom/android/contacts/model/AccountType;
    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v1, p2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 388
    :cond_0
    if-nez v0, :cond_1

    .line 390
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mFallbackAccountType:Lcom/android/contacts/model/AccountType;

    invoke-virtual {v2, p2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$DataKind;

    move-result-object v0

    .line 393
    :cond_1
    if-nez v0, :cond_2

    .line 394
    const-string v2, "AccountTypeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    return-object v0
.end method

.method protected loadAccountsInBackground()V
    .locals 30

    .prologue
    .line 224
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v19

    .line 226
    .local v19, startTime:J
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    .line 227
    .local v5, accountTypes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/contacts/model/AccountType;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 228
    .local v7, allAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v25

    .line 230
    .local v25, writableAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v8, v0

    .line 231
    .local v8, am:Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v12

    .line 234
    .local v12, cs:Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v12}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v23

    .line 235
    .local v23, syncs:[Landroid/content/SyncAdapterType;
    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v11

    .line 237
    .local v11, auths:[Landroid/accounts/AuthenticatorDescription;
    move-object/from16 v9, v23

    .local v9, arr$:[Landroid/content/SyncAdapterType;
    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v21, v9, v16

    .line 238
    .local v21, sync:Landroid/content/SyncAdapterType;
    const-string v26, "com.android.contacts"

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 237
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 245
    :cond_0
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 246
    .local v24, type:Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v10

    .line 247
    .local v10, auth:Landroid/accounts/AuthenticatorDescription;
    if-nez v10, :cond_3

    .line 248
    const-string v26, "AccountTypeManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No authenticator found for type="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", ignoring it."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 271
    .end local v9           #arr$:[Landroid/content/SyncAdapterType;
    .end local v10           #auth:Landroid/accounts/AuthenticatorDescription;
    .end local v11           #auths:[Landroid/accounts/AuthenticatorDescription;
    .end local v16           #i$:I
    .end local v18           #len$:I
    .end local v21           #sync:Landroid/content/SyncAdapterType;
    .end local v23           #syncs:[Landroid/content/SyncAdapterType;
    .end local v24           #type:Ljava/lang/String;
    :catch_0
    move-exception v26

    move-object/from16 v13, v26

    .line 272
    .local v13, e:Landroid/os/RemoteException;
    const-string v26, "AccountTypeManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Problem loading accounts: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v13           #e:Landroid/os/RemoteException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v6

    .line 276
    .local v6, accounts:[Landroid/accounts/Account;
    move-object v9, v6

    .local v9, arr$:[Landroid/accounts/Account;
    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/16 v16, 0x0

    .restart local v16       #i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_b

    aget-object v3, v9, v16

    .line 280
    .local v3, account:Landroid/accounts/Account;
    move-object v0, v3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->isPCSyncAccount(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 281
    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v11

    .line 282
    .restart local v11       #auths:[Landroid/accounts/AuthenticatorDescription;
    move-object v0, v3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object v0, v11

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->findAuthenticator([Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v10

    .line 283
    .restart local v10       #auth:Landroid/accounts/AuthenticatorDescription;
    if-nez v10, :cond_7

    .line 284
    const-string v26, "AccountTypeManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "No authenticator found for type="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object v0, v3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", ignoring it."

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v10           #auth:Landroid/accounts/AuthenticatorDescription;
    .end local v11           #auths:[Landroid/accounts/AuthenticatorDescription;
    :cond_2
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 253
    .end local v3           #account:Landroid/accounts/Account;
    .end local v6           #accounts:[Landroid/accounts/Account;
    .local v9, arr$:[Landroid/content/SyncAdapterType;
    .restart local v10       #auth:Landroid/accounts/AuthenticatorDescription;
    .restart local v11       #auths:[Landroid/accounts/AuthenticatorDescription;
    .restart local v21       #sync:Landroid/content/SyncAdapterType;
    .restart local v23       #syncs:[Landroid/content/SyncAdapterType;
    .restart local v24       #type:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v26, "com.google"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_4

    .line 254
    new-instance v4, Lcom/android/contacts/model/GoogleAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object v0, v10

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/GoogleAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 265
    .local v4, accountType:Lcom/android/contacts/model/AccountType;
    :goto_4
    move-object v0, v10

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v4

    iput-object v0, v1, Lcom/android/contacts/model/BaseAccountType;->accountType:Ljava/lang/String;

    .line 266
    move-object v0, v10

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object v1, v4

    iput v0, v1, Lcom/android/contacts/model/BaseAccountType;->titleRes:I

    .line 267
    move-object v0, v10

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object v1, v4

    iput v0, v1, Lcom/android/contacts/model/BaseAccountType;->iconRes:I

    .line 269
    move-object v0, v4

    iget-object v0, v0, Lcom/android/contacts/model/BaseAccountType;->accountType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object v0, v5

    move-object/from16 v1, v26

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 255
    .end local v4           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_4
    const-string v26, "com.android.exchange"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 256
    new-instance v4, Lcom/android/contacts/model/ExchangeAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object v0, v10

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/ExchangeAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v4       #accountType:Lcom/android/contacts/model/AccountType;
    goto :goto_4

    .line 259
    .end local v4           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_5
    const-string v26, "AccountTypeManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Registering external account type="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", packageName="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object v0, v10

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v4, Lcom/android/contacts/model/ExternalAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object v0, v10

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/ExternalAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    .restart local v4       #accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual/range {v21 .. v21}, Landroid/content/SyncAdapterType;->supportsUploading()Z

    move-result v26

    if-nez v26, :cond_6

    const/16 v26, 0x1

    :goto_5
    move/from16 v0, v26

    move-object v1, v4

    iput-boolean v0, v1, Lcom/android/contacts/model/AccountType;->readOnly:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :cond_6
    const/16 v26, 0x0

    goto :goto_5

    .line 287
    .end local v4           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v21           #sync:Landroid/content/SyncAdapterType;
    .end local v23           #syncs:[Landroid/content/SyncAdapterType;
    .end local v24           #type:Ljava/lang/String;
    .restart local v3       #account:Landroid/accounts/Account;
    .restart local v6       #accounts:[Landroid/accounts/Account;
    .local v9, arr$:[Landroid/accounts/Account;
    :cond_7
    new-instance v4, Lcom/android/contacts/model/PCSyncAccountType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object v0, v10

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object v0, v4

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/model/PCSyncAccountType;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 288
    .restart local v4       #accountType:Lcom/android/contacts/model/AccountType;
    move-object v0, v10

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v4

    iput-object v0, v1, Lcom/android/contacts/model/PCSyncAccountType;->accountType:Ljava/lang/String;

    .line 289
    move-object v0, v10

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object v1, v4

    iput v0, v1, Lcom/android/contacts/model/BaseAccountType;->titleRes:I

    .line 290
    move-object v0, v10

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object v1, v4

    iput v0, v1, Lcom/android/contacts/model/BaseAccountType;->iconRes:I

    .line 291
    move-object v0, v4

    iget-object v0, v0, Lcom/android/contacts/model/PCSyncAccountType;->accountType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object v0, v5

    move-object/from16 v1, v26

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .end local v4           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v10           #auth:Landroid/accounts/AuthenticatorDescription;
    .end local v11           #auths:[Landroid/accounts/AuthenticatorDescription;
    :cond_8
    const/16 v22, 0x0

    .line 296
    .local v22, syncable:Z
    :try_start_2
    const-string v26, "com.android.contacts"

    move-object v0, v12

    move-object v1, v3

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v17

    .line 297
    .local v17, isSyncable:I
    if-lez v17, :cond_9

    .line 298
    const/16 v22, 0x1

    .line 304
    .end local v17           #isSyncable:I
    :cond_9
    :goto_6
    if-nez v22, :cond_a

    move-object v0, v3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/contacts/model/AccountTypeManagerImpl;->isPCSyncAccount(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 306
    :cond_a
    move-object v0, v3

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountType;

    .line 307
    .restart local v4       #accountType:Lcom/android/contacts/model/AccountType;
    if-eqz v4, :cond_2

    .line 308
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    move-object v0, v4

    iget-boolean v0, v0, Lcom/android/contacts/model/AccountType;->readOnly:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    .line 310
    move-object/from16 v0, v25

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 300
    .end local v4           #accountType:Lcom/android/contacts/model/AccountType;
    :catch_1
    move-exception v26

    move-object/from16 v13, v26

    .line 301
    .restart local v13       #e:Landroid/os/RemoteException;
    const-string v26, "AccountTypeManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cannot obtain sync flag for account: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 316
    .end local v3           #account:Landroid/accounts/Account;
    .end local v13           #e:Landroid/os/RemoteException;
    .end local v22           #syncable:Z
    :cond_b
    sget-object v26, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 317
    sget-object v26, Lcom/android/contacts/model/AccountTypeManagerImpl;->ACCOUNT_COMPARATOR:Ljava/util/Comparator;

    invoke-static/range {v25 .. v26}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 321
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v26

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getAsYouTypeFormatter(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/AsYouTypeFormatter;

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v14

    .line 325
    .local v14, endTime:J
    monitor-enter p0

    .line 326
    :try_start_3
    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypes:Ljava/util/HashMap;

    .line 327
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/ArrayList;

    .line 328
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mWritableAccounts:Ljava/util/ArrayList;

    .line 329
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    const-string v26, "AccountTypeManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Loaded meta-data for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccountTypes:Ljava/util/HashMap;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/HashMap;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " account types, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mAccounts:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " accounts in "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sub-long v28, v14, v19

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "ms"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 336
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/model/AccountTypeManagerImpl;->mInitializationLatch:Ljava/util/concurrent/CountDownLatch;

    .line 338
    :cond_c
    return-void

    .line 329
    :catchall_0
    move-exception v26

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v26
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/contacts/model/AccountTypeManagerImpl;->loadAccountsInBackground()V

    .line 198
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    return-void
.end method

.method public processBroadcastIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 192
    return-void
.end method
