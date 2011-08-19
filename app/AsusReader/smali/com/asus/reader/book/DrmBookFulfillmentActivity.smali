.class public Lcom/asus/reader/book/DrmBookFulfillmentActivity;
.super Landroid/app/Activity;
.source "DrmBookFulfillmentActivity.java"


# static fields
.field public static final ACSM_COLUMNS:[Ljava/lang/String;

.field public static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final MediaFileTable:Landroid/net/Uri;

.field private static final ReaderTableAcsm:Landroid/net/Uri;


# instance fields
.field private isFirstTimeCheck:Z

.field private latestProgress:I

.field private mAcsmId:I

.field private mAcsmName:Ljava/lang/String;

.field private mAcsmState:I

.field private mBookFormat:Ljava/lang/String;

.field private mBookPath:Ljava/lang/String;

.field private mBookTitle:Ljava/lang/String;

.field private mDownloadProgress:I

.field private mErrorMsg:Ljava/lang/String;

.field private mFinishHandlerFlag:Z

.field mHandler:Landroid/os/Handler;

.field private mMessageDialog:Landroid/app/AlertDialog;

.field private mPollingSecs:J

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceviveAcsmPath:Ljava/lang/String;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 30
    const-string v0, "content://reader/acsm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->ReaderTableAcsm:Landroid/net/Uri;

    .line 31
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->MediaFileTable:Landroid/net/Uri;

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "download_progress"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "book_path"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "error_msg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "book_title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "book_format"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->ACSM_COLUMNS:[Ljava/lang/String;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mBookTitle:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 73
    iput-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mMessageDialog:Landroid/app/AlertDialog;

    .line 98
    iput-boolean v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->isFirstTimeCheck:Z

    .line 100
    iput-boolean v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mFinishHandlerFlag:Z

    .line 104
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mPollingSecs:J

    .line 106
    new-instance v0, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity$1;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    .line 278
    iput v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->latestProgress:I

    .line 279
    const/16 v0, 0x28

    iput v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->timeout:I

    return-void
.end method

.method static synthetic access$000(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mFinishHandlerFlag:Z

    return v0
.end method

.method static synthetic access$100(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->isFirstTimeCheck:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mBookFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->updateAcsmStateToStop()V

    return-void
.end method

.method static synthetic access$200(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->checkAcsmFileExistAndSendScan()V

    return-void
.end method

.method static synthetic access$300(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->checkAcsmDataFromDb()V

    return-void
.end method

.method static synthetic access$500(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mBookTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mDownloadProgress:I

    return v0
.end method

.method static synthetic access$700(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mMessageDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/asus/reader/book/DrmBookFulfillmentActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mMessageDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mBookPath:Ljava/lang/String;

    return-object v0
.end method

.method private checkAcsm(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "acsmId"
    .parameter "acsmName"
    .parameter "acsmState"
    .parameter "downloadProgress"
    .parameter "bookPath"
    .parameter "errorMsg"
    .parameter "bookTitle"
    .parameter "bookFormat"

    .prologue
    .line 308
    const-string v0, "DrmBookFullfillActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAcsm("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iput p1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mAcsmId:I

    .line 310
    iput-object p2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mAcsmName:Ljava/lang/String;

    .line 311
    iput p3, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mAcsmState:I

    .line 312
    iput p4, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mDownloadProgress:I

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mBookPath:Ljava/lang/String;

    .line 314
    iput-object p6, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mErrorMsg:Ljava/lang/String;

    .line 315
    iput-object p7, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mBookTitle:Ljava/lang/String;

    .line 316
    iput-object p8, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mBookFormat:Ljava/lang/String;

    .line 317
    packed-switch p3, :pswitch_data_0

    .line 340
    const-string v0, "DrmBookFullfillActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acsmState is unknown ( is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 344
    :goto_0
    return-void

    .line 320
    :pswitch_0
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mPollingSecs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 326
    :pswitch_1
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mPollingSecs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 330
    :pswitch_2
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 334
    :pswitch_3
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 337
    :pswitch_4
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 317
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private checkAcsmDataFromDb()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x7

    .line 234
    const/4 v9, 0x0

    .line 236
    .local v9, acsmDocId:I
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->MediaFileTable:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->MEDIA_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_data = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mReceviveAcsmPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 238
    .local v11, mediaAcsmCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 239
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 241
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->ReaderTableAcsm:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->ACSM_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_id_doc = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 250
    .local v12, readerAcsmCursor:Landroid/database/Cursor;
    if-nez v12, :cond_2

    .line 251
    const-string v0, "DrmBookFullfillActivity"

    const-string v1, "ACSM table cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    :goto_0
    return-void

    .line 254
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 255
    .local v10, cursorCount:I
    if-nez v10, :cond_3

    .line 256
    const-string v0, "DrmBookFullfillActivity"

    const-string v1, "acsm data not yet inset to acsm table."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mPollingSecs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 274
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 258
    :cond_3
    if-ne v10, v8, :cond_4

    .line 259
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 260
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x6

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x8

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->checkAcsm(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 263
    :cond_4
    if-le v10, v8, :cond_5

    .line 265
    const-string v0, "DrmBookFullfillActivity"

    const-string v1, "cursorCount > 1 , user delete the acsm and get the same path acsm."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 267
    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v12, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x6

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v0, 0x8

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->checkAcsm(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :cond_5
    const-string v0, "DrmBookFullfillActivity"

    const-string v1, "ACSM table cursor count < 0 "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private checkAcsmFileExistAndSendScan()V
    .locals 5

    .prologue
    .line 210
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->isFirstTimeCheck:Z

    .line 211
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mReceviveAcsmPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mReceviveAcsmPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private isActivateDevice()Z
    .locals 1

    .prologue
    .line 518
    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->getActivationStatusNative()I

    move-result v0

    if-nez v0, :cond_0

    .line 519
    const/4 v0, 0x0

    .line 521
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startActivationCheckingFulfillService()V
    .locals 3

    .prologue
    .line 542
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/reader/book/DrmBookFulfillmentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 545
    return-void
.end method

.method private updateAcsmStateToStop()V
    .locals 5

    .prologue
    .line 535
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 536
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_state"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mAcsmId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, updateWhere:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->ReaderTableAcsm:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 539
    return-void
.end method

.method private updateStateToInit(Ljava/lang/String;)V
    .locals 5
    .parameter "acsmPath"

    .prologue
    .line 525
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 526
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_state"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, updateWhere:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->ReaderTableAcsm:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 531
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 532
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const v12, 0x7f080003

    const v11, 0x7f070098

    const v10, 0x7f02000c

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 370
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 375
    iput-boolean v9, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mFinishHandlerFlag:Z

    .line 376
    const/16 v5, 0x28

    iput v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->timeout:I

    .line 378
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 379
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 381
    iput-boolean v8, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->isFirstTimeCheck:Z

    .line 383
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 385
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 387
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mReceviveAcsmPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    const-string v5, "DrmBookFullfillActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "acsm path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mReceviveAcsmPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mReceviveAcsmPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".acsm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 398
    new-instance v5, Lcom/asus/reader/book/DrmBookFulfillmentActivity$2;

    invoke-direct {v5, p0, p0, v12}, Lcom/asus/reader/book/DrmBookFulfillmentActivity$2;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 405
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 406
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v11}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f07009d

    invoke-virtual {p0, v7}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f0700bb

    invoke-virtual {p0, v7}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 410
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 411
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 412
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 448
    .end local v2           #f:Ljava/io/File;
    .end local v4           #path:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 388
    .restart local v2       #f:Ljava/io/File;
    .restart local v4       #path:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 389
    .local v1, e:Ljava/io/IOException;
    iput-object v4, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mReceviveAcsmPath:Ljava/lang/String;

    goto :goto_0

    .line 393
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    iput-object v4, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mReceviveAcsmPath:Ljava/lang/String;

    goto :goto_0

    .line 415
    :cond_2
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mReceviveAcsmPath:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->updateStateToInit(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->checkAcsmDataFromDb()V

    .line 420
    new-instance v5, Lcom/asus/reader/book/DrmBookFulfillmentActivity$3;

    invoke-direct {v5, p0, p0, v12}, Lcom/asus/reader/book/DrmBookFulfillmentActivity$3;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 428
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 429
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v11}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v6, 0x7f070099

    invoke-virtual {p0, v6}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 432
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v8}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 433
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v10}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 434
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 435
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v9}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 436
    iget-object v5, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->show()V

    .line 439
    invoke-direct {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->isActivateDevice()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 440
    invoke-direct {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->startActivationCheckingFulfillService()V

    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual {p0, v8}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->showDialog(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 475
    packed-switch p1, :pswitch_data_0

    .line 512
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 477
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0700b5

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b6

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b7

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity$7;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity$7;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b8

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity$6;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity$6;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b9

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/asus/reader/book/DrmBookFulfillmentActivity$5;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity$5;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/asus/reader/book/DrmBookFulfillmentActivity$4;

    invoke-direct {v1, p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity$4;-><init>(Lcom/asus/reader/book/DrmBookFulfillmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 469
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 471
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 453
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->mFinishHandlerFlag:Z

    .line 455
    invoke-virtual {p0}, Lcom/asus/reader/book/DrmBookFulfillmentActivity;->finish()V

    .line 456
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 461
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 462
    return-void
.end method
