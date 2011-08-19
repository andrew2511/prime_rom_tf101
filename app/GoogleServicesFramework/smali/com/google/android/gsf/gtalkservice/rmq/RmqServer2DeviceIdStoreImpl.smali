.class public Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;
.super Ljava/lang/Object;
.source "RmqServer2DeviceIdStoreImpl.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStore;


# instance fields
.field private SETTING_PROJECTION:[Ljava/lang/String;

.field private SETTING_SELECTION:Ljava/lang/String;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "resolver"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "value"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;->SETTING_PROJECTION:[Ljava/lang/String;

    .line 41
    const-string v0, "name = \'last_rmq_rec\'"

    iput-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;->SETTING_SELECTION:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    .line 48
    return-void
.end method

.method private logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 93
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RmqServer2DeviceIdStoreImpl] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method


# virtual methods
.method public getLastReceivedRmqIdFromServer()J
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;->SETTING_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;->SETTING_SELECTION:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 58
    .local v6, cursor:Landroid/database/Cursor;
    const-wide/16 v8, 0x0

    .line 60
    .local v8, retVal:J
    if-eqz v6, :cond_1

    .line 62
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 67
    .local v10, strVal:Ljava/lang/String;
    :try_start_1
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v8

    .line 73
    .end local v10           #strVal:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 79
    :goto_1
    return-wide v8

    .line 68
    .restart local v10       #strVal:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 69
    .local v7, ex:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastReceivedRmqIdFromServer caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 73
    .end local v7           #ex:Ljava/lang/NumberFormatException;
    .end local v10           #strVal:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 76
    :cond_1
    const-string v0, "getLastReceivedRmqIdFromServer"

    invoke-direct {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setLastReceivedRmqIdFromServer(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "last_rmq_rec"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "value"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqServer2DeviceIdStoreImpl;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/google/android/gsf/TalkContract$AccountSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 90
    return-void
.end method
