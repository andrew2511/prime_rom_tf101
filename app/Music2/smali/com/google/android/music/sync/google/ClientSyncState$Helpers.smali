.class public Lcom/google/android/music/sync/google/ClientSyncState$Helpers;
.super Ljava/lang/Object;
.source "ClientSyncState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/sync/google/ClientSyncState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helpers"
.end annotation


# static fields
.field private static final TABLE_SYNC_STATE:Ljava/lang/String; = "_sync_state"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/database/sqlite/SQLiteDatabase;I)Landroid/accounts/Account;
    .locals 11
    .parameter "db"
    .parameter "accountHash"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/ProviderException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 159
    const-string v1, "_sync_state"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v4

    const-string v0, "account_name"

    aput-object v0, v2, v5

    const-string v0, "account_type"

    aput-object v0, v2, v6

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 173
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 174
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 176
    .local v8, blob:[B
    invoke-static {v8}, Lcom/google/android/music/sync/google/ClientSyncState;->parseFrom([B)Lcom/google/android/music/sync/google/ClientSyncState;

    move-result-object v10

    .line 177
    .local v10, state:Lcom/google/android/music/sync/google/ClientSyncState;
    invoke-virtual {v10}, Lcom/google/android/music/sync/google/ClientSyncState;->getRemoteAccount()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 178
    new-instance v0, Landroid/accounts/Account;

    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    if-eqz v9, :cond_1

    .line 188
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    .line 183
    .end local v8           #blob:[B
    .end local v10           #state:Lcom/google/android/music/sync/google/ClientSyncState;
    :cond_2
    :try_start_1
    new-instance v0, Lcom/google/android/music/sync/common/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync state for account hash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/common/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 188
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static get(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)Lcom/google/android/music/sync/google/ClientSyncState;
    .locals 11
    .parameter "db"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/ProviderException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 130
    const-string v1, "_sync_state"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "data"

    aput-object v0, v2, v6

    const-string v3, "account_name=? AND account_type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v10

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 140
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 150
    if-eqz v9, :cond_0

    .line 151
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v5

    :cond_1
    :goto_0
    return-object v0

    .line 143
    :cond_2
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-le v0, v10, :cond_4

    .line 144
    new-instance v0, Lcom/google/android/music/sync/common/ProviderException;

    const-string v1, "There are multiple sync state entries for this account."

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/common/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 151
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 147
    :cond_4
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 148
    .local v8, blob:[B
    invoke-static {v8}, Lcom/google/android/music/sync/google/ClientSyncState;->parseFrom([B)Lcom/google/android/music/sync/google/ClientSyncState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 150
    if-eqz v9, :cond_1

    .line 151
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static set(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Lcom/google/android/music/sync/google/ClientSyncState;)V
    .locals 4
    .parameter "db"
    .parameter "account"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/ProviderException;
        }
    .end annotation

    .prologue
    .line 195
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 196
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "data"

    invoke-virtual {p2}, Lcom/google/android/music/sync/google/ClientSyncState;->toBytes()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 199
    const-string v1, "_sync_state"

    const-string v2, "data"

    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 200
    const-string v1, "MusicSyncAdapter"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "MusicSyncAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting sync state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/music/sync/google/ClientSyncState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    return-void
.end method
