.class public Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;
.super Ljava/util/ArrayList;
.source "CalendarSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/CalendarSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CalendarOperations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Landroid/content/ContentProviderOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mCount:I

.field private mEventStart:I

.field private mResults:[Landroid/content/ContentProviderResult;

.field final synthetic this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;


# direct methods
.method protected constructor <init>(Lcom/android/exchange/adapter/CalendarSyncAdapter;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1269
    iput-object p1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    iput v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;

    .line 1273
    iput v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    return-void
.end method

.method static synthetic access$900(Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;)[Landroid/content/ContentProviderResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/content/ContentProviderOperation;)Z
    .locals 1
    .parameter "op"

    .prologue
    .line 1277
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1279
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1269
    check-cast p1, Landroid/content/ContentProviderOperation;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    move-result v0

    return v0
.end method

.method public delete(JLjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "syncId"

    .prologue
    .line 1366
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1369
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "originalEvent=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1372
    return-void
.end method

.method public execute()V
    .locals 6

    .prologue
    .line 1375
    iget-object v1, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v1, v1, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v1}, Lcom/android/exchange/EasSyncService;->getSynchronizer()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1376
    :try_start_0
    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    invoke-virtual {v2}, Lcom/android/exchange/EasSyncService;->isStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1378
    :try_start_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1379
    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Executing "

    invoke-virtual {p0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->size()I

    move-result v4

    const-string v5, " CPO\'s"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 1380
    iget-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v2, v2, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.calendar"

    invoke-virtual {v2, v3, p0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    iput-object v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mResults:[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1391
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 1392
    return-void

    .line 1383
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1385
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "EasCalendarSyncAdapter"

    const-string v3, "problem inserting event during server update"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1391
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1386
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1388
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_3
    const-string v2, "EasCalendarSyncAdapter"

    const-string v3, "problem inserting event during server update"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public newAttendee(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "cv"

    .prologue
    .line 1295
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newAttendee(Landroid/content/ContentValues;I)V

    .line 1296
    return-void
.end method

.method public newAttendee(Landroid/content/ContentValues;I)V
    .locals 2
    .parameter "cv"
    .parameter "eventStart"

    .prologue
    .line 1299
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1304
    return-void
.end method

.method public newDelete(JLjava/lang/String;)I
    .locals 1
    .parameter "id"
    .parameter "serverId"

    .prologue
    .line 1289
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    .line 1290
    .local v0, offset:I
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->delete(JLjava/lang/String;)V

    .line 1291
    return v0
.end method

.method public newEvent(Landroid/content/ContentProviderOperation;)I
    .locals 1
    .parameter "op"

    .prologue
    .line 1283
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mCount:I

    iput v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    .line 1284
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1285
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    return v0
.end method

.method public newException(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "cv"

    .prologue
    .line 1312
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$500()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1313
    return-void
.end method

.method public newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1316
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1300()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_id"

    iget v2, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1322
    return-void
.end method

.method public newReminder(I)V
    .locals 1
    .parameter "mins"

    .prologue
    .line 1362
    iget v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->mEventStart:I

    invoke-virtual {p0, p1, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newReminder(II)V

    .line 1363
    return-void
.end method

.method public newReminder(II)V
    .locals 3
    .parameter "mins"
    .parameter "eventStart"

    .prologue
    .line 1353
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1500()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "minutes"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "event_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1359
    return-void
.end method

.method public updatedAttendee(Landroid/content/ContentValues;J)V
    .locals 2
    .parameter "cv"
    .parameter "id"

    .prologue
    .line 1307
    const-string v0, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1308
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$300()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1309
    return-void
.end method

.method public updatedExtendedProperty(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "name"
    .parameter "value"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    .line 1326
    iget-object v0, p0, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->this$0:Lcom/android/exchange/adapter/CalendarSyncAdapter;

    iget-object v0, v0, Lcom/android/exchange/adapter/CalendarSyncAdapter;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Calendar$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1400()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "event_id=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1329
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v7, -0x1

    .line 1331
    .local v7, extendedPropertyId:J
    if-eqz v6, :cond_1

    .line 1333
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 1337
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1341
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_2

    .line 1342
    invoke-static {}, Lcom/android/exchange/adapter/CalendarSyncAdapter;->access$1300()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1350
    :goto_0
    return-void

    .line 1337
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1348
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/exchange/adapter/CalendarSyncAdapter$CalendarOperations;->newExtendedProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
