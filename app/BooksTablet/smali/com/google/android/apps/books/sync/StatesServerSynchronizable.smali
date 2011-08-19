.class public Lcom/google/android/apps/books/sync/StatesServerSynchronizable;
.super Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;
.source "StatesServerSynchronizable.java"


# static fields
.field private static final UPDATE_SELECTION:Ljava/lang/String; = "last_access=? AND last_action IS NULL"

.field private static final sEmptyValues:Landroid/content/ContentValues;


# instance fields
.field private final mLocalSynchronizable:Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->sEmptyValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .parameter "resolver"
    .parameter "accountName"

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/apps/books/sync/BaseStatesSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 45
    new-instance v0, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->mLocalSynchronizable:Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;

    .line 46
    return-void
.end method


# virtual methods
.method public extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 9
    .parameter "oldValues"
    .parameter "newValues"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "last_access"

    .line 66
    invoke-virtual {p0, p2}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->checkValues(Landroid/content/ContentValues;)V

    .line 67
    const-string v3, "last_action"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, newAction:Ljava/lang/String;
    if-nez v0, :cond_0

    move v3, v7

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action not allowed in server-side update: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    const-string v3, "position"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 72
    const-string v3, "last_access"

    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 73
    .local v2, oldTime:Ljava/lang/Long;
    const-string v3, "last_access"

    invoke-virtual {p2, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 74
    .local v1, newTime:Ljava/lang/Long;
    if-eqz v2, :cond_1

    move v3, v7

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "oldValues missing last_access: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    if-eqz v1, :cond_2

    move v3, v7

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newValues missing last_access: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    invoke-static {p1, p2}, Lcom/google/android/apps/books/sync/SyncUtil;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 82
    .end local v1           #newTime:Ljava/lang/Long;
    .end local v2           #oldTime:Ljava/lang/Long;
    :goto_3
    return-object v3

    :cond_0
    move v3, v6

    .line 68
    goto :goto_0

    .restart local v1       #newTime:Ljava/lang/Long;
    .restart local v2       #oldTime:Ljava/lang/Long;
    :cond_1
    move v3, v6

    .line 74
    goto :goto_1

    :cond_2
    move v3, v6

    .line 76
    goto :goto_2

    .line 79
    :cond_3
    sget-object v3, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->sEmptyValues:Landroid/content/ContentValues;

    goto :goto_3

    .line 82
    .end local v1           #newTime:Ljava/lang/Long;
    .end local v2           #oldTime:Ljava/lang/Long;
    :cond_4
    invoke-static {p1, p2}, Lcom/google/android/apps/books/sync/SyncUtil;->extractUpdates(Landroid/content/ContentValues;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    goto :goto_3
.end method

.method public queryAllForUpsync()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 89
    const-string v6, "account_name=? AND last_action IS NOT NULL"

    .line 91
    .local v6, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getAccountName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 92
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getDirUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getProjection()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "account_name=? AND last_action IS NOT NULL"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I
    .locals 5
    .parameter "oldValues"
    .parameter "updateValues"

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getItemUri(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 51
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "last_access"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, oldTime:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 53
    .local v1, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->getResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "last_access=? AND last_action IS NULL"

    invoke-virtual {v3, v2, p2, v4, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public updateAfterUpsync(Landroid/content/ContentValues;)I
    .locals 2
    .parameter "oldValues"

    .prologue
    .line 100
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 101
    .local v0, updateValues:Landroid/content/ContentValues;
    const-string v1, "last_action"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/books/sync/StatesServerSynchronizable;->mLocalSynchronizable:Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/books/sync/StatesLocalSynchronizable;->update(Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    move-result v1

    return v1
.end method
