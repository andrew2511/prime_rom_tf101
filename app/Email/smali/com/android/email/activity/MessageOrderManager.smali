.class public Lcom/android/email/activity/MessageOrderManager;
.super Ljava/lang/Object;
.source "MessageOrderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;,
        Lcom/android/email/activity/MessageOrderManager$Callback;
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

.field private mClosed:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMessageId:J

.field private mCurrentPosition:I

.field private mCursor:Landroid/database/Cursor;

.field private mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

.field private final mMailboxId:J

.field private final mObserver:Landroid/database/ContentObserver;

.field private mTotalMessageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLcom/android/email/activity/MessageOrderManager$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "mailboxId"
    .parameter "callback"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 84
    iput-wide p2, p0, Lcom/android/email/activity/MessageOrderManager;->mMailboxId:J

    .line 85
    iput-object p4, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    .line 86
    new-instance v0, Lcom/android/email/activity/MessageOrderManager$1;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->getHandlerForContentObserver()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageOrderManager$1;-><init>(Lcom/android/email/activity/MessageOrderManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mObserver:Landroid/database/ContentObserver;

    .line 94
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageOrderManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageOrderManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->onContentChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageOrderManager;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->openNewCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private adjustCursorPosition()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    iput v4, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 193
    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 203
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 204
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    goto :goto_1

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 207
    iput v4, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 208
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessageNotFound()V

    goto :goto_0

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    goto :goto_0
.end method

.method private cancelTask()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    invoke-static {v0}, Lcom/android/emailcommon/utility/Utility;->cancelTaskInterrupt(Landroid/os/AsyncTask;)V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    .line 146
    return-void
.end method

.method private closeCursor()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    .line 153
    :cond_0
    return-void
.end method

.method private isTaskRunning()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContentChanged()V
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->isTaskRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->startTask()V

    .line 165
    :cond_0
    return-void
.end method

.method private openNewCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->getQuerySelection()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "timeStamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .local v6, cursor:Landroid/database/Cursor;
    return-object v6
.end method

.method private setCurrentMessageIdFromCursor()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    .line 159
    :cond_0
    return-void
.end method

.method private startTask()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->cancelTask()V

    .line 131
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->startQuery()V

    .line 132
    return-void
.end method


# virtual methods
.method public canMoveToNewer()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canMoveToOlder()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageOrderManager;->mClosed:Z

    .line 172
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->cancelTask()V

    .line 173
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->closeCursor()V

    .line 174
    return-void
.end method

.method public getCurrentMessageId()J
    .locals 2

    .prologue
    .line 177
    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    return-wide v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    return v0
.end method

.method getHandlerForContentObserver()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method public getMailboxId()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mMailboxId:J

    return-wide v0
.end method

.method getQuerySelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/email/activity/MessageOrderManager;->mMailboxId:J

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/utility/Utility;->buildMailboxIdSelection(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTotalMessageCount()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    return v0
.end method

.method public moveTo(J)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 185
    iget-wide v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 186
    iput-wide p1, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentMessageId:J

    .line 187
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->adjustCursorPosition()V

    .line 189
    :cond_0
    return-void
.end method

.method public moveToNewer()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 253
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 255
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->setCurrentMessageIdFromCursor()V

    .line 256
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    move v0, v1

    .line 259
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToOlder()Z
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/email/activity/MessageOrderManager;->canMoveToOlder()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I

    .line 239
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->setCurrentMessageIdFromCursor()V

    .line 240
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCallback:Lcom/android/email/activity/MessageOrderManager$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/MessageOrderManager$Callback;->onMessagesChanged()V

    .line 241
    const/4 v0, 0x1

    .line 243
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onCursorOpenDone(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 318
    :try_start_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->closeCursor()V

    .line 319
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCurrentPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    .line 331
    :goto_0
    return-void

    .line 324
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    .line 325
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/email/activity/MessageOrderManager;->mTotalMessageCount:I

    .line 326
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/email/activity/MessageOrderManager;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 327
    invoke-direct {p0}, Lcom/android/email/activity/MessageOrderManager;->adjustCursorPosition()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    throw v0
.end method

.method startQuery()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;-><init>(Lcom/android/email/activity/MessageOrderManager;Lcom/android/email/activity/MessageOrderManager$1;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    .line 140
    iget-object v0, p0, Lcom/android/email/activity/MessageOrderManager;->mLoadMessageListTask:Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/email/activity/MessageOrderManager$LoadMessageListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 141
    return-void
.end method
