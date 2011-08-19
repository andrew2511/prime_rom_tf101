.class public Lcom/google/android/gm/provider/Gmail$ConversationCursor;
.super Lcom/google/android/gm/provider/Gmail$MailCursor;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationCursor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mConversationIdIndex:I

.field private final mDateIndex:I

.field private final mForceAllUnreadIndex:I

.field private final mFromIndex:I

.field private final mHasAttachmentsIndex:I

.field private final mHasMessagesWithErrorsIndex:I

.field private final mIsDraftIndex:I

.field private final mIsInOutboxIndex:I

.field private final mLabelsIndex:I

.field private final mMaxMessageIdIndex:I

.field private final mNumMessagesIndex:I

.field private final mParsedLabels:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPersonalLevelIndex:I

.field private final mSnippetIndex:I

.field private final mSubjectIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3200
    const-class v0, Lcom/google/android/gm/provider/Gmail;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Handler;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 2
    .parameter "handler"
    .parameter "gmail"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 3225
    invoke-direct {p0, p1, p3, p4}, Lcom/google/android/gm/provider/Gmail$MailCursor;-><init>(Landroid/os/Handler;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 3215
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mParsedLabels:Landroid/util/LruCache;

    .line 3227
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mConversationIdIndex:I

    .line 3229
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "subject"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mSubjectIndex:I

    .line 3230
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "snippet"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mSnippetIndex:I

    .line 3231
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "fromAddress"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mFromIndex:I

    .line 3232
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "date"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mDateIndex:I

    .line 3233
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "personalLevel"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mPersonalLevelIndex:I

    .line 3235
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "numMessages"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mNumMessagesIndex:I

    .line 3236
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "maxMessageId"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mMaxMessageIdIndex:I

    .line 3237
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "hasAttachments"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mHasAttachmentsIndex:I

    .line 3239
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "hasMessagesWithErrors"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mHasMessagesWithErrorsIndex:I

    .line 3241
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "forceAllUnread"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mForceAllUnreadIndex:I

    .line 3243
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "conversationLabels"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mLabelsIndex:I

    .line 3245
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "hasDraftMessage"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mIsDraftIndex:I

    .line 3247
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    const-string v1, "hasOutboxMessage"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mIsInOutboxIndex:I

    .line 3249
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 3200
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;-><init>(Landroid/os/Handler;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter "gmail"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 3220
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;-><init>(Landroid/os/Handler;Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 3221
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;Lcom/google/android/gm/provider/Gmail$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3200
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;-><init>(Lcom/google/android/gm/provider/Gmail;Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getConversationId()J
    .locals 2

    .prologue
    .line 3306
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mConversationIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateMs()J
    .locals 2

    .prologue
    .line 3377
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mDateIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getForceAllUnread()Z
    .locals 2

    .prologue
    .line 3390
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mForceAllUnreadIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mForceAllUnreadIndex:I

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

.method public getFromSnippetInstructions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3315
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mFromIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHasDraftMessage()Z
    .locals 4

    .prologue
    .line 3411
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mIsDraftIndex:I

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

.method public getHasOutboxMessage()Z
    .locals 4

    .prologue
    .line 3418
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mIsInOutboxIndex:I

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

.method getLabelIds()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3355
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 3356
    .local v1, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getLabels()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/provider/Label;

    .line 3357
    .local v2, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3359
    .end local v2           #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    return-object v1
.end method

.method public getLabels()Ljava/util/Map;
    .locals 7
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
    .line 3395
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v0

    .line 3397
    .local v0, id:J
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mParsedLabels:Landroid/util/LruCache;

    monitor-enter v3

    .line 3398
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mParsedLabels:Landroid/util/LruCache;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getConversationId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 3399
    .local v2, parsedLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    if-nez v2, :cond_0

    .line 3400
    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getRawLabels()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/LabelManager;->parseLabelQueryResult(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 3401
    iget-object v4, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mParsedLabels:Landroid/util/LruCache;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3403
    :cond_0
    monitor-exit v3

    .line 3404
    return-object v2

    .line 3403
    .end local v2           #parsedLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getLogic()Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    .locals 0

    .prologue
    .line 3431
    iget-object p0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    .end local p0
    check-cast p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;

    iget-object p0, p0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->mLogic:Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;

    check-cast p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    return-object p0
.end method

.method public getMaxServerMessageId()J
    .locals 2

    .prologue
    .line 3373
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mMaxMessageIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumMessages()I
    .locals 2

    .prologue
    .line 3366
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mNumMessagesIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getPersonalLevel()Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    .locals 3

    .prologue
    .line 3342
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mPersonalLevelIndex:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 3343
    .local v0, personalLevelInt:I
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v1

    return-object v1
.end method

.method public getRawLabels()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3426
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mLabelsIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3333
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mSnippetIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3324
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mSubjectIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->getStringInColumn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAttachments()Z
    .locals 2

    .prologue
    .line 3381
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mHasAttachmentsIndex:I

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

.method protected onCursorPositionChanged()V
    .locals 0

    .prologue
    .line 3253
    invoke-super {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->onCursorPositionChanged()V

    .line 3254
    return-void
.end method

.method public retry()V
    .locals 5

    .prologue
    .line 3258
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3259
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "retry"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3261
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3262
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3263
    :cond_0
    return-void
.end method

.method public setContentsVisibleToUser(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    .line 3291
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3292
    .local v0, input:Landroid/os/Bundle;
    const-string v3, "command"

    const-string v4, "setVisible"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3293
    const-string v3, "visible"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3294
    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 3295
    .local v1, output:Landroid/os/Bundle;
    const-string v3, "commandResponse"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3296
    .local v2, response:Ljava/lang/String;
    sget-boolean v3, Lcom/google/android/gm/provider/Gmail$ConversationCursor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 3297
    :cond_0
    return-void
.end method
