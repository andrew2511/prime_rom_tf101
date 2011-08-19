.class public Lcom/asus/vibe2/Act_DownloadPage;
.super Landroid/app/ListActivity;
.source "Act_DownloadPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;
    }
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentBytesColumnId:I

.field private mDescriptionColumnId:I

.field private mDlListCursor:Landroid/database/Cursor;

.field private mDownloadManager:Landroid/app/DownloadManager;

.field private mHandler:Landroid/os/Handler;

.field private mIdColumnId:I

.field private mLocalUriColumnId:I

.field private mMediaTypeColumnId:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mReasonColumndId:I

.field private mStatusColumnId:I

.field private mTitleColumnId:I

.field private mTotalBytesColumnId:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDownloadManager:Landroid/app/DownloadManager;

    .line 46
    iput-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDlListCursor:Landroid/database/Cursor;

    .line 58
    new-instance v0, Lcom/asus/vibe2/Act_DownloadPage$1;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Act_DownloadPage$1;-><init>(Lcom/asus/vibe2/Act_DownloadPage;)V

    iput-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/asus/vibe2/Act_DownloadPage$2;

    iget-object v1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/asus/vibe2/Act_DownloadPage$2;-><init>(Lcom/asus/vibe2/Act_DownloadPage;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    .line 77
    new-instance v0, Lcom/asus/vibe2/Act_DownloadPage$3;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Act_DownloadPage$3;-><init>(Lcom/asus/vibe2/Act_DownloadPage;)V

    iput-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 86
    new-instance v0, Lcom/asus/vibe2/Act_DownloadPage$4;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Act_DownloadPage$4;-><init>(Lcom/asus/vibe2/Act_DownloadPage;)V

    iput-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 97
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/app/DownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDownloadManager:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/asus/vibe2/Act_DownloadPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mMediaTypeColumnId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/asus/vibe2/Act_DownloadPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mMediaTypeColumnId:I

    return p1
.end method

.method static synthetic access$1102(Lcom/asus/vibe2/Act_DownloadPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mLocalUriColumnId:I

    return p1
.end method

.method static synthetic access$1202(Lcom/asus/vibe2/Act_DownloadPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mReasonColumndId:I

    return p1
.end method

.method static synthetic access$1300(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/vibe2/Act_DownloadPage;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDlListCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/asus/vibe2/Act_DownloadPage;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/asus/vibe2/Act_DownloadPage;->handleItemClick(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/asus/vibe2/Act_DownloadPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mIdColumnId:I

    return v0
.end method

.method static synthetic access$402(Lcom/asus/vibe2/Act_DownloadPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mIdColumnId:I

    return p1
.end method

.method static synthetic access$500(Lcom/asus/vibe2/Act_DownloadPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mTitleColumnId:I

    return v0
.end method

.method static synthetic access$502(Lcom/asus/vibe2/Act_DownloadPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mTitleColumnId:I

    return p1
.end method

.method static synthetic access$600(Lcom/asus/vibe2/Act_DownloadPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDescriptionColumnId:I

    return v0
.end method

.method static synthetic access$602(Lcom/asus/vibe2/Act_DownloadPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDescriptionColumnId:I

    return p1
.end method

.method static synthetic access$700(Lcom/asus/vibe2/Act_DownloadPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mStatusColumnId:I

    return v0
.end method

.method static synthetic access$702(Lcom/asus/vibe2/Act_DownloadPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mStatusColumnId:I

    return p1
.end method

.method static synthetic access$800(Lcom/asus/vibe2/Act_DownloadPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mCurrentBytesColumnId:I

    return v0
.end method

.method static synthetic access$802(Lcom/asus/vibe2/Act_DownloadPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mCurrentBytesColumnId:I

    return p1
.end method

.method static synthetic access$900(Lcom/asus/vibe2/Act_DownloadPage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mTotalBytesColumnId:I

    return v0
.end method

.method static synthetic access$902(Lcom/asus/vibe2/Act_DownloadPage;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mTotalBytesColumnId:I

    return p1
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 322
    iget v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mReasonColumndId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 346
    invoke-direct {p0}, Lcom/asus/vibe2/Act_DownloadPage;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 324
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/asus/vibe2/Act_DownloadPage;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const v0, 0x7f040034

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_DownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/asus/vibe2/Act_DownloadPage;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/asus/vibe2/Act_DownloadPage;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_DownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_1
    const v0, 0x7f040032

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_DownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 340
    :pswitch_2
    const v0, 0x7f040035

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_DownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 343
    :pswitch_3
    const v0, 0x7f040033

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_DownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Lcom/asus/vibe2/Act_DownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 243
    iget v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mStatusColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 252
    :goto_0
    return-void

    .line 245
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/asus/vibe2/Act_DownloadPage;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_0

    .line 249
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/asus/vibe2/Act_DownloadPage;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_0

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 351
    iget v4, p0, Lcom/asus/vibe2/Act_DownloadPage;->mLocalUriColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, localUriString:Ljava/lang/String;
    if-nez v2, :cond_0

    move v4, v6

    .line 361
    :goto_0
    return v4

    .line 355
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 356
    .local v1, localUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v6

    .line 357
    goto :goto_0

    .line 359
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, externalRoot:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .locals 18
    .parameter "cursor"

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/vibe2/Act_DownloadPage;->mLocalUriColumnId:I

    move v14, v0

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 257
    .local v10, localUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/asus/vibe2/Act_DownloadPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "r"

    invoke-virtual {v14, v10, v15}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 266
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/vibe2/Act_DownloadPage;->mMediaTypeColumnId:I

    move v14, v0

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, fileTypeFromServer:Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const v14, 0x10000001

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 288
    :try_start_1
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/asus/vibe2/Act_DownloadPage;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 319
    .end local v7           #fileTypeFromServer:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 258
    :catch_0
    move-exception v14

    move-object v5, v14

    .line 259
    .local v5, exc:Ljava/io/FileNotFoundException;
    const-string v14, "ASUS@Vibe"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Act_DownloadPage: Failed to open download "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/vibe2/Act_DownloadPage;->mIdColumnId:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 260
    const v14, 0x7f040030

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/asus/vibe2/Act_DownloadPage;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_1

    .line 289
    .end local v5           #exc:Ljava/io/FileNotFoundException;
    .restart local v7       #fileTypeFromServer:Ljava/lang/String;
    .restart local v9       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 291
    .local v4, ex:Landroid/content/ActivityNotFoundException;
    const-string v14, "ASUS@Vibe"

    const-string v15, "Act_DownloadPage: Try opening file again. This time, search for mime type using file extension."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :try_start_2
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v11

    .line 294
    .local v11, map:Landroid/webkit/MimeTypeMap;
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    .local v6, extension:Ljava/lang/String;
    const-string v14, ""

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 296
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "File extension not found in Uri."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 312
    .end local v6           #extension:Ljava/lang/String;
    .end local v11           #map:Landroid/webkit/MimeTypeMap;
    :catch_2
    move-exception v14

    move-object v3, v14

    .line 313
    .local v3, anfe:Landroid/content/ActivityNotFoundException;
    const v14, 0x7f040036

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 298
    .end local v3           #anfe:Landroid/content/ActivityNotFoundException;
    .restart local v6       #extension:Ljava/lang/String;
    .restart local v11       #map:Landroid/webkit/MimeTypeMap;
    :cond_0
    :try_start_3
    invoke-virtual {v11, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 299
    .local v13, type:Ljava/lang/String;
    if-nez v13, :cond_1

    .line 300
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Mime-type for extension "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not found."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    .line 314
    .end local v6           #extension:Ljava/lang/String;
    .end local v11           #map:Landroid/webkit/MimeTypeMap;
    .end local v13           #type:Ljava/lang/String;
    :catch_3
    move-exception v14

    move-object v8, v14

    .line 315
    .local v8, iae:Ljava/lang/IllegalArgumentException;
    const-string v14, "ASUS@Vibe"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Act_DownloadPage: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const v14, 0x7f040036

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 303
    .end local v8           #iae:Ljava/lang/IllegalArgumentException;
    .restart local v6       #extension:Ljava/lang/String;
    .restart local v11       #map:Landroid/webkit/MimeTypeMap;
    .restart local v13       #type:Ljava/lang/String;
    :cond_1
    :try_start_4
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 304
    const-string v14, "ASUS@Vibe"

    const-string v15, "Act_DownloadPage: Cannot find new mime type, retry skipped."

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const v14, 0x7f040036

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 307
    :cond_2
    new-instance v12, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v12, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v12, retry:Landroid/content/Intent;
    invoke-virtual {v12, v10, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const v14, 0x10000001

    invoke-virtual {v12, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 310
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/asus/vibe2/Act_DownloadPage;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 262
    .end local v4           #ex:Landroid/content/ActivityNotFoundException;
    .end local v6           #extension:Ljava/lang/String;
    .end local v7           #fileTypeFromServer:Ljava/lang/String;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v11           #map:Landroid/webkit/MimeTypeMap;
    .end local v12           #retry:Landroid/content/Intent;
    .end local v13           #type:Ljava/lang/String;
    :catch_4
    move-exception v14

    goto/16 :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 102
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 104
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_DownloadPage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_DownloadPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v1, 0x7f040023

    invoke-virtual {p0, v1}, Lcom/asus/vibe2/Act_DownloadPage;->setTitle(I)V

    .line 110
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/asus/vibe2/Act_DownloadPage;->setContentView(I)V

    .line 111
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_DownloadPage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_DownloadPage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/asus/vibe2/Act_DownloadPage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/asus/vibe2/Act_DownloadPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, emptyView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_DownloadPage;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 116
    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f040024

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const-string v1, "download"

    invoke-virtual {p0, v1}, Lcom/asus/vibe2/Act_DownloadPage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    iput-object v1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDownloadManager:Landroid/app/DownloadManager;

    .line 119
    iget-object v1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDownloadManager:Landroid/app/DownloadManager;

    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDlListCursor:Landroid/database/Cursor;

    .line 120
    iget-object v1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDlListCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;

    iget-object v2, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDlListCursor:Landroid/database/Cursor;

    invoke-direct {v1, p0, p0, v2}, Lcom/asus/vibe2/Act_DownloadPage$DlListAdapter;-><init>(Lcom/asus/vibe2/Act_DownloadPage;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-virtual {p0, v1}, Lcom/asus/vibe2/Act_DownloadPage;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_DownloadPage;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/vibe2/Act_DownloadPage;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 134
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/asus/vibe2/Act_DownloadPage;->finish()V

    .line 137
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 151
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDlListCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDlListCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 143
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDlListCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/asus/vibe2/Act_DownloadPage;->mDlListCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/asus/vibe2/Act_DownloadPage;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    :cond_0
    return-void
.end method
