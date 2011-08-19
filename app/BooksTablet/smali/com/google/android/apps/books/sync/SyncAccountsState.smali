.class public Lcom/google/android/apps/books/sync/SyncAccountsState;
.super Ljava/lang/Object;
.source "SyncAccountsState.java"


# static fields
.field private static final EBOOKS_FETCH_TIME_PREFIX:Ljava/lang/String; = "myEbooksTime:"

.field public static final NEVER:J = 0x0L

.field static final SYNC_ACCOUNTS:Ljava/lang/String; = "SyncAccounts"

.field private static final SYNC_NAG_KEY_PREFIX:Ljava/lang/String; = "syncNag:"

.field private static final SYNC_TIME_KEY_PREFIX:Ljava/lang/String; = "syncTime:"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPrefFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const-string v0, "SyncAccounts"

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/books/sync/SyncAccountsState;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "prefFile"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "missing context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "missing prefFile"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/google/android/apps/books/sync/SyncAccountsState;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/google/android/apps/books/sync/SyncAccountsState;->mPrefFile:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private getMyEbooksTimeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "accountName"

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myEbooksTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrefs()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/apps/books/sync/SyncAccountsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/books/sync/SyncAccountsState;->mPrefFile:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getSyncNagKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "accountName"

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncNag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSyncTimeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "accountName"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 140
    return-void
.end method

.method public getLastMyEbooksFetchTime(Ljava/lang/String;)J
    .locals 4
    .parameter "accountName"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getMyEbooksTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSyncTime(Ljava/lang/String;)J
    .locals 4
    .parameter "accountName"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getSyncTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public haveNagged(Ljava/lang/String;)Z
    .locals 3
    .parameter "accountName"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getSyncNagKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setHaveNagged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "accountName"
    .parameter "value"

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getSyncNagKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    return-void
.end method

.method public setLastMyEbooksFetchTime(Ljava/lang/String;J)V
    .locals 2
    .parameter "accountName"
    .parameter "fetchTime"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getMyEbooksTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method

.method public setLastSyncTime(Ljava/lang/String;J)V
    .locals 2
    .parameter "accountName"
    .parameter "syncTime"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/android/apps/books/sync/SyncAccountsState;->getSyncTimeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 113
    return-void
.end method
