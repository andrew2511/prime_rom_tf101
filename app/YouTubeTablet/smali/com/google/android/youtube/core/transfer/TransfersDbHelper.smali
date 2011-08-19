.class Lcom/google/android/youtube/core/transfer/TransfersDbHelper;
.super Ljava/lang/Object;
.source "TransfersDbHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/transfer/TransfersDbHelper$TransfersSQLiteOpenHelper;,
        Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private final databaseName:Ljava/lang/String;

.field private handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private restoreListener:Landroid/os/Handler;

.field private restoreMessage:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "name"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->context:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->databaseName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restoreListener:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restoreMessage:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;Lcom/google/android/youtube/core/transfer/Transfer;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toContentValues(Lcom/google/android/youtube/core/transfer/Transfer;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/os/Bundle;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toBytes(Landroid/os/Bundle;)[B

    move-result-object v0

    return-object v0
.end method

.method private query()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/transfer/Transfer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v14, downloads:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/youtube/core/transfer/Transfer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->database:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const-string v3, "transfers"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 170
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v19, "file_path"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 171
    .local v16, filePathCol:I
    const-string v19, "network_uri"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 172
    .local v17, networkUriCol:I
    const-string v19, "status"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 173
    .local v18, statusCol:I
    const-string v19, "bytes_transferred"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 174
    .local v11, bytesDownloadedCol:I
    const-string v19, "bytes_total"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 175
    .local v12, bytesTotalCol:I
    const-string v19, "extras"

    move-object v0, v13

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 177
    .local v15, extrasCol:I
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 178
    move-object v0, v13

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, filePath:Ljava/lang/String;
    move-object v0, v13

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, networkUri:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->values()[Lcom/google/android/youtube/core/transfer/Transfer$Status;

    move-result-object v19

    move-object v0, v13

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    aget-object v5, v19, v20

    .line 181
    .local v5, status:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 182
    .local v6, bytesDownloaded:J
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 183
    .local v8, bytesTotal:J
    invoke-interface {v13, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toBundle([B)Landroid/os/Bundle;

    move-result-object v10

    .line 185
    .local v10, extras:Landroid/os/Bundle;
    new-instance v2, Lcom/google/android/youtube/core/transfer/Transfer;

    invoke-direct/range {v2 .. v10}, Lcom/google/android/youtube/core/transfer/Transfer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/core/transfer/Transfer$Status;JJLandroid/os/Bundle;)V

    .line 187
    .local v2, download:Lcom/google/android/youtube/core/transfer/Transfer;
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    .end local v2           #download:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #networkUri:Ljava/lang/String;
    .end local v5           #status:Lcom/google/android/youtube/core/transfer/Transfer$Status;
    .end local v6           #bytesDownloaded:J
    .end local v8           #bytesTotal:J
    .end local v10           #extras:Landroid/os/Bundle;
    .end local v11           #bytesDownloadedCol:I
    .end local v12           #bytesTotalCol:I
    .end local v15           #extrasCol:I
    .end local v16           #filePathCol:I
    .end local v17           #networkUriCol:I
    .end local v18           #statusCol:I
    :catchall_0
    move-exception v19

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v19

    .restart local v11       #bytesDownloadedCol:I
    .restart local v12       #bytesTotalCol:I
    .restart local v15       #extrasCol:I
    .restart local v16       #filePathCol:I
    .restart local v17       #networkUriCol:I
    .restart local v18       #statusCol:I
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 192
    return-object v14
.end method

.method private static toBundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "bytes"

    .prologue
    const/4 v3, 0x0

    .line 232
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 234
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 235
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 236
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 238
    return-object v0
.end method

.method private static toBytes(Landroid/os/Bundle;)[B
    .locals 3
    .parameter "bundle"

    .prologue
    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 225
    .local v1, parcel:Landroid/os/Parcel;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 227
    .local v0, bytes:[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 228
    return-object v0
.end method

.method private toContentValues(Lcom/google/android/youtube/core/transfer/Transfer;)Landroid/content/ContentValues;
    .locals 4
    .parameter "transfer"

    .prologue
    .line 196
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "file_path"

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "network_uri"

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->networkUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "status"

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->status:Lcom/google/android/youtube/core/transfer/Transfer$Status;

    invoke-virtual {v2}, Lcom/google/android/youtube/core/transfer/Transfer$Status;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v1, "bytes_transferred"

    iget-wide v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTransfered:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 201
    const-string v1, "bytes_total"

    iget-wide v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->bytesTotal:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    const-string v1, "extras"

    iget-object v2, p1, Lcom/google/android/youtube/core/transfer/Transfer;->extras:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->toBytes(Landroid/os/Bundle;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 204
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->sendEmptyMessage(I)Z

    .line 221
    return-void
.end method

.method public remove(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 3
    .parameter "transfer"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    const/4 v2, 0x4

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 217
    return-void
.end method

.method public restore(Landroid/os/Handler;I)V
    .locals 3
    .parameter "listener"
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restoreListener:Landroid/os/Handler;

    .line 60
    iput p2, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->restoreMessage:I

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handlerThread:Landroid/os/HandlerThread;

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0, v2}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;-><init>(Lcom/google/android/youtube/core/transfer/TransfersDbHelper;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->sendEmptyMessage(I)Z

    .line 68
    return-void
.end method

.method public update(Lcom/google/android/youtube/core/transfer/Transfer;)V
    .locals 3
    .parameter "transfer"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    iget-object v1, p0, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->handler:Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;

    const/4 v2, 0x3

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper$DbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 213
    return-void
.end method
