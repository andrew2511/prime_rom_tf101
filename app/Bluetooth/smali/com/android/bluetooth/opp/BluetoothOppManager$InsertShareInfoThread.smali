.class Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
.super Ljava/lang/Thread;
.source "BluetoothOppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertShareInfoThread"
.end annotation


# instance fields
.field private final mIsMultiple:Z

.field private final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mTypeOfMultipleFiles:Ljava/lang/String;

.field private final mTypeOfSingleFile:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppManager;Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "device"
    .parameter "multiple"
    .parameter "typeOfSingleFile"
    .parameter "uri"
    .parameter "typeOfMultipleFiles"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p7, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 329
    const-string v0, "Insert ShareInfo Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 330
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 331
    iput-boolean p3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsMultiple:Z

    .line 332
    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfSingleFile:Ljava/lang/String;

    .line 333
    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUri:Ljava/lang/String;

    .line 334
    iput-object p6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfMultipleFiles:Ljava/lang/String;

    .line 335
    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    .line 337
    monitor-enter p1

    .line 338
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->access$008(Lcom/android/bluetooth/opp/BluetoothOppManager;)I

    .line 339
    monitor-exit p1

    .line 342
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private insertMultipleShare()V
    .locals 9

    .prologue
    .line 365
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 366
    .local v2, count:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 367
    .local v5, ts:Ljava/lang/Long;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 368
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 369
    .local v3, fileUri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppManager;->access$100(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 370
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, contentType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfMultipleFiles:Ljava/lang/String;

    .line 376
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 377
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v7, "mimetype"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v7, "destination"

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v7, "timestamp"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppManager;->access$100(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 367
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #contentType:Ljava/lang/String;
    .end local v3           #fileUri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private insertSingleShare()V
    .locals 4

    .prologue
    .line 393
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "uri"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v2, "mimetype"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mTypeOfSingleFile:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v2, "destination"

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->access$100(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 402
    .local v0, contentUri:Landroid/net/Uri;
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 347
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    .line 348
    const-string v0, "BluetoothOppManager"

    const-string v1, "Target bt device is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->mIsMultiple:Z

    if-eqz v0, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->insertMultipleShare()V

    .line 356
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppManager;->access$010(Lcom/android/bluetooth/opp/BluetoothOppManager;)I

    .line 358
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->insertSingleShare()V

    goto :goto_1
.end method
