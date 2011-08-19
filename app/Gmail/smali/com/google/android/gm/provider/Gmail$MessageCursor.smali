.class public Lcom/google/android/gm/provider/Gmail$MessageCursor;
.super Lcom/google/android/gm/provider/Gmail$MailCursor;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageCursor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBccIndex:I

.field private mBodyEmbedsExternalResourcesIndex:I

.field private mBodyIndex:I

.field private mCcIndex:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mConversationIdIndex:I

.field private mCustomFromIndex:I

.field private mDateReceivedMsIndex:I

.field private mDateSentMsIndex:I

.field private mErrorIndex:I

.field private mForwardIndex:I

.field private mFromIndex:I

.field private mIdIndex:I

.field mInReplyToLocalMessageId:J

.field private mIsDraftIndex:I

.field private mIsInOutboxIndex:I

.field private mIsStarredIndex:I

.field private mIsUnreadIndex:I

.field private mJoinedAttachmentInfosIndex:I

.field private mLabelCountIndex:I

.field private mLabelIdsIndex:I

.field private final mLabelIdsSplitter:Landroid/text/TextUtils$StringSplitter;

.field private mLabelsIndex:I

.field private mListInfoIndex:I

.field private mPersonalLevelIndex:I

.field mPreserveAttachments:Z

.field private mRefMessageIdIndex:I

.field private mReplyToIndex:I

.field private mServerMessageIdIndex:I

.field private mSnippetIndex:I

.field private mSubjectIndex:I

.field private mToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2496
    const-class v0, Lcom/google/android/gm/provider/Gmail;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter "resolver"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 2541
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 2542
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2496
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail$MessageCursor;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 2
    .parameter "handler"
    .parameter "resolver"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 2546
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gm/provider/Gmail$MailCursor;-><init>(Landroid/os/Handler;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 2537
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->newMessageLabelIdsSplitter()Landroid/text/TextUtils$StringSplitter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelIdsSplitter:Landroid/text/TextUtils$StringSplitter;

    .line 2548
    if-nez p4, :cond_0

    .line 2549
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null cursor passed to MessageCursor()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2553
    :cond_0
    iput-object p2, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 2555
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIdIndex:I

    .line 2556
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "messageId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mServerMessageIdIndex:I

    .line 2557
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "conversation"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mConversationIdIndex:I

    .line 2559
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "subject"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mSubjectIndex:I

    .line 2560
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "snippet"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mSnippetIndex:I

    .line 2561
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "fromAddress"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mFromIndex:I

    .line 2562
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "customFromAddress"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCustomFromIndex:I

    .line 2563
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "toAddresses"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mToIndex:I

    .line 2564
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "ccAddresses"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCcIndex:I

    .line 2565
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "bccAddresses"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBccIndex:I

    .line 2566
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "replyToAddresses"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mReplyToIndex:I

    .line 2567
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "dateSentMs"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mDateSentMsIndex:I

    .line 2569
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "dateReceivedMs"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mDateReceivedMsIndex:I

    .line 2571
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "listInfo"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mListInfoIndex:I

    .line 2572
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "personalLevel"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mPersonalLevelIndex:I

    .line 2574
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "body"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBodyIndex:I

    .line 2575
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "bodyEmbedsExternalResources"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBodyEmbedsExternalResourcesIndex:I

    .line 2577
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "labelIds"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelIdsIndex:I

    .line 2578
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "joinedAttachmentInfos"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mJoinedAttachmentInfosIndex:I

    .line 2580
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "error"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mErrorIndex:I

    .line 2581
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "refMessageId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mRefMessageIdIndex:I

    .line 2582
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "forward"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mForwardIndex:I

    .line 2583
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "labelCount"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelCountIndex:I

    .line 2585
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "messageLabels"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelsIndex:I

    .line 2587
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "isStarred"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsStarredIndex:I

    .line 2589
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "isDraft"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsDraftIndex:I

    .line 2591
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "isInOutbox"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsInOutboxIndex:I

    .line 2593
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "isUnread"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsUnreadIndex:I

    .line 2596
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mInReplyToLocalMessageId:J

    .line 2597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mPreserveAttachments:Z

    .line 2598
    return-void
.end method

.method private getAddresses(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "index"

    .prologue
    .line 2753
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getUpdateValues()Landroid/content/ContentValues;

    move-result-object v1

    .line 2755
    .local v1, updated:Landroid/content/ContentValues;
    invoke-virtual {v1, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2756
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getUpdateValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2761
    .local v0, addresses:Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2758
    .end local v0           #addresses:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #addresses:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public addOrRemoveLabel(Ljava/lang/String;Z)V
    .locals 8
    .parameter "label"
    .parameter "add"

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getConversationId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v4

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/gm/provider/Gmail;->addOrRemoveLabelOnMessage(Landroid/content/ContentResolver;Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 2924
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 2608
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 2609
    new-instance v3, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mAccount:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gm/provider/Gmail$MessageCursor;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 2650
    :goto_0
    return-object v3

    .line 2613
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v0, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 2614
    .local v0, cloned:Landroid/database/MatrixCursor;
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2615
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 2616
    .local v1, numColumns:I
    :goto_1
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2617
    new-array v2, v1, [Ljava/lang/Object;

    .line 2618
    .local v2, row:[Ljava/lang/Object;
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIdIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIdIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2619
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mServerMessageIdIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mServerMessageIdIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2620
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mConversationIdIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mConversationIdIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2621
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mSubjectIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mSubjectIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2622
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mSnippetIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mSnippetIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2623
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mFromIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mFromIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2624
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCustomFromIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCustomFromIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2625
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mToIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mToIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2626
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCcIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCcIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2627
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBccIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBccIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2628
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mReplyToIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mReplyToIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2629
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mDateSentMsIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mDateSentMsIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2630
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mDateReceivedMsIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mDateSentMsIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2631
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mListInfoIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mListInfoIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2632
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mPersonalLevelIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mPersonalLevelIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2633
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBodyIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBodyIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2634
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBodyEmbedsExternalResourcesIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBodyEmbedsExternalResourcesIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2636
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelIdsIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelIdsIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2637
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mJoinedAttachmentInfosIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mJoinedAttachmentInfosIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2639
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mErrorIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mErrorIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2640
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mRefMessageIdIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mRefMessageIdIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2641
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mForwardIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mForwardIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2642
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelCountIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelCountIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2643
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelsIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelsIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2644
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsStarredIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsStarredIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2645
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsDraftIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsDraftIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2646
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsInOutboxIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsInOutboxIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2647
    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsUnreadIndex:I

    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsUnreadIndex:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2648
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2650
    .end local v2           #row:[Ljava/lang/Object;
    :cond_1
    new-instance v3, Lcom/google/android/gm/provider/Gmail$MessageCursor;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iget-object v5, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mAccount:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;-><init>(Landroid/os/Handler;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/database/Cursor;)V

    goto/16 :goto_0
.end method

.method public getAttachmentInfos()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2927
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2929
    .local v0, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/Gmail$Attachment;>;"
    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mJoinedAttachmentInfosIndex:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2930
    .local v1, joinedAttachmentInfos:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->parseJoinedAttachmentString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2932
    return-object v0
.end method

.method public getBccAddresses()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2785
    const-string v0, "bccAddresses"

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBccIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAddresses(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2833
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBodyIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBodyEmbedsExternalResources()Z
    .locals 2

    .prologue
    .line 2842
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->checkCursor()V

    .line 2843
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mBodyEmbedsExternalResourcesIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCcAddresses()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2777
    const-string v0, "ccAddresses"

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCcIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAddresses(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConversationId()J
    .locals 2

    .prologue
    .line 2703
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->checkCursor()V

    .line 2704
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mConversationIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateReceivedMs()J
    .locals 2

    .prologue
    .line 2804
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->checkCursor()V

    .line 2805
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mDateReceivedMsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateSentMs()J
    .locals 2

    .prologue
    .line 2799
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->checkCursor()V

    .line 2800
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mDateSentMsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getErrorText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mErrorIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForward()Z
    .locals 4

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mForwardIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2737
    iget v2, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCustomFromIndex:I

    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    .line 2738
    .local v0, customFrom:Ljava/lang/String;
    iget v2, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mFromIndex:I

    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v1

    .line 2743
    .local v1, from:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 2746
    :goto_0
    return-object v2

    :cond_0
    iget v2, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mFromIndex:I

    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getIsDraft()Z
    .locals 4

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsDraftIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsInOutbox()Z
    .locals 4

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsInOutboxIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsStarred()Z
    .locals 4

    .prologue
    .line 2883
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsStarredIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsUnread()Z
    .locals 4

    .prologue
    .line 2904
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIsUnreadIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLabelCount()I
    .locals 2

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelCountIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLabelIds()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2850
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelIdsIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2851
    .local v0, labelNames:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelIdsSplitter:Landroid/text/TextUtils$StringSplitter;

    if-nez v0, :cond_0

    const-string v2, ""

    :goto_0
    invoke-interface {v1, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2852
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelIdsSplitter:Landroid/text/TextUtils$StringSplitter;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->getLabelIdsFromLabelIdsString(Landroid/text/TextUtils$StringSplitter;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v2, v0

    .line 2851
    goto :goto_0
.end method

.method public getLabels()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getRawLabels()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getListInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2810
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mListInfoIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalId()J
    .locals 2

    .prologue
    .line 2683
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->checkCursor()V

    .line 2684
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 2691
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->checkCursor()V

    .line 2692
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mServerMessageIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPersonalLevel()Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    .locals 3

    .prologue
    .line 2814
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->checkCursor()V

    .line 2815
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mPersonalLevelIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 2816
    .local v0, personalLevelInt:I
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v1

    return-object v1
.end method

.method public getRawLabels()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2876
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mLabelsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRefMessageId()J
    .locals 2

    .prologue
    .line 2942
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->checkCursor()V

    .line 2943
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mRefMessageIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getReplyToAddress()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2794
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mReplyToIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2723
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mSnippetIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2713
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mSubjectIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToAddresses()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 2769
    const-string v0, "toAddresses"

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mToIndex:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getAddresses(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public moveToMessage(J)V
    .locals 4
    .parameter "localId"

    .prologue
    .line 2957
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 2958
    .local v0, originalPosition:I
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2959
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2960
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 2961
    return-void

    .line 2967
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2969
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot move cursor to messageId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". The cursor does not contain a matching message."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onCursorPositionChanged()V
    .locals 0

    .prologue
    .line 2663
    invoke-super {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->onCursorPositionChanged()V

    .line 2664
    return-void
.end method

.method public retry()V
    .locals 5

    .prologue
    .line 2668
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2669
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "retry"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$MessageCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 2671
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2672
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/gm/provider/Gmail$MessageCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2673
    :cond_0
    return-void
.end method
