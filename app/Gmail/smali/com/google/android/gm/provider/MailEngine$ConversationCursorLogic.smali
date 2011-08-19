.class Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
.super Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;
.source "MailEngine.java"

# interfaces
.implements Lcom/google/android/gm/provider/MailSync$ConversationSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConversationCursorLogic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;
    }
.end annotation


# instance fields
.field private mFetchThreshold:I

.field private final mLabel:Lcom/google/android/gm/provider/MailCore$Label;

.field private final mMaxResults:I

.field mMaxUnsyncedMessageId:J

.field private volatile mNextHighestMessageId:J

.field private final mQuery:Ljava/lang/String;

.field final mQueryId:J

.field private final mSql:Ljava/lang/String;

.field private final mThresholdMax:I

.field private final mThresholdStep:I

.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter "query"
    .parameter "becomeActiveNetworkCursor"

    .prologue
    const/4 v4, 0x0

    .line 5381
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 5366
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$2000(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_live_max_results"

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxResults:I

    .line 5368
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$2000(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_live_threshold_step"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mThresholdStep:I

    .line 5370
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$2000(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_live_threshold_max"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mThresholdMax:I

    .line 5372
    iput v4, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mFetchThreshold:I

    .line 5382
    sget-wide v0, Lcom/google/android/gm/provider/MailEngine;->sNextQueryId:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gm/provider/MailEngine;->sNextQueryId:J

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mQueryId:J

    .line 5384
    if-eqz p3, :cond_1

    .line 5389
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    if-eqz v0, :cond_0

    .line 5390
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    invoke-virtual {v0, v4}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;->cancel(Z)Z

    .line 5392
    :cond_0
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    iget-wide v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mQueryId:J

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;-><init>(Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;J)V

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    .line 5393
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5399
    iget-object v0, p1, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const-string v1, "^i"

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5400
    invoke-static {p1, p2}, Lcom/google/android/gm/provider/MailEngine;->access$3102(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 5401
    invoke-static {p1, p0}, Lcom/google/android/gm/provider/MailEngine;->access$3302(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    .line 5404
    :cond_1
    iput-object p2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mQuery:Ljava/lang/String;

    .line 5405
    iget-object v0, p1, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mQuery:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$3400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    .line 5407
    iget-object v0, p1, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getMaxUnsyncedMessageIdForLabel(Lcom/google/android/gm/provider/MailCore$Label;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxUnsyncedMessageId:J

    .line 5408
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxUnsyncedMessageId:J

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mNextHighestMessageId:J

    .line 5445
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    if-eqz v0, :cond_2

    .line 5446
    const-string v7, "conversation_labels.conversation_id IN\n(SELECT conversation_labels.conversation_id\n   FROM conversation_labels\n   LEFT OUTER JOIN conversations\n     ON conversation_labels.conversation_id = conversations._id\n     AND conversation_labels.queryId = conversations.queryId\n WHERE conversation_labels.labels_id = ?)\n   AND conversation_labels.labels_id = ? \n   AND ((conversations.maxMessageId >= ?\n        AND conversation_labels.queryId == 0)\n     OR (conversations.maxMessageId < ?\n        AND conversation_labels.queryId == ?))"

    .line 5458
    .local v7, wherePart:Ljava/lang/String;
    const-string v6, "ORDER BY conversation_labels.sortMessageId DESC\n"

    .line 5464
    .local v6, groupOrderBy:Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Lcom/google/android/gm/provider/MailEngine;->access$2000(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    iget-wide v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxUnsyncedMessageId:J

    iget-wide v4, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mQueryId:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine;->access$3500(Landroid/content/Context;Lcom/google/android/gm/provider/MailCore$Label;JJ)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->setSelectionArguments([Ljava/lang/String;)V

    .line 5467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT conversation_labels.*, conversations.*, (SELECT group_concat((labels._id || \'^*^\' || labels.canonicalName || \'^*^\' || \n(CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    ELSE labels.name END)  || \'^*^\' || labels.color || \'^*^\' || labels.hidden),    \'^**^\') FROM labels JOIN conversation_labels  ON conversation_labels.labels_id = labels._id  AND conversation_labels.conversation_id = conversations._id) AS conversationLabels,    (SELECT SUM(CASE labels.canonicalName WHEN \'^r \' THEN 1 ELSE 0 END) FROM labels JOIN conversation_labels  ON conversation_labels.labels_id = labels._id  AND conversation_labels.conversation_id = conversations._id )   AS hasDraftMessage,\n (SELECT SUM(CASE labels.canonicalName WHEN \'^^out \' THEN 1 ELSE 0 END) FROM labels JOIN conversation_labels  ON conversation_labels.labels_id = labels._id  AND conversation_labels.conversation_id = conversations._id )   AS hasOutboxMessage\n  FROM conversation_labels\n  LEFT OUTER JOIN conversations\n  ON conversation_labels.conversation_id = conversations._id\n  AND conversation_labels.queryId = conversations.queryId\nWHERE\n  ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  AND isZombie = 0\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mSql:Ljava/lang/String;

    .line 5480
    return-void

    .line 5460
    .end local v6           #groupOrderBy:Ljava/lang/String;
    .end local v7           #wherePart:Ljava/lang/String;
    :cond_2
    const-string v7, "conversation_labels.queryId = ?"

    .line 5461
    .restart local v7       #wherePart:Ljava/lang/String;
    const-string v6, "GROUP BY conversations._id\nORDER BY conversation_labels.sortMessageId DESC\n"

    .restart local v6       #groupOrderBy:Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic access$3200(Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5343
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->clearMatchingNotifications()V

    return-void
.end method

.method private clearMatchingNotifications()V
    .locals 6

    .prologue
    .line 5704
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const-string v3, "^i"

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 5705
    .local v0, labelInbox:Lcom/google/android/gm/provider/MailCore$Label;
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const-string v3, "^iim"

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    .line 5710
    .local v1, labelPriorityInbox:Lcom/google/android/gm/provider/MailCore$Label;
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    if-eqz v2, :cond_3

    .line 5713
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    iget-wide v4, v4, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v1, :cond_3

    iget-wide v2, v1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    iget-wide v4, v4, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 5715
    :cond_1
    if-eqz v0, :cond_2

    .line 5716
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2, v0}, Lcom/google/android/gm/provider/MailEngine;->access$4000(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailCore$Label;)V

    .line 5718
    :cond_2
    if-eqz v1, :cond_3

    .line 5719
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v2, v1}, Lcom/google/android/gm/provider/MailEngine;->access$4000(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailCore$Label;)V

    .line 5723
    :cond_3
    return-void
.end method

.method private maybeFetchMoreResults(ILcom/google/android/gm/provider/MailEngine$NetworkCursor;)V
    .locals 5
    .parameter "position"
    .parameter "cursor"

    .prologue
    .line 5508
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->isActiveNetworkCursor()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5538
    :cond_0
    :goto_0
    return-void

    .line 5520
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->getCount()I

    move-result v0

    .line 5521
    .local v0, count:I
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getIsInErrorState()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mFetchThreshold:I

    sub-int v2, v0, v2

    if-lt v1, v2, :cond_0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mNextHighestMessageId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 5526
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mFetcherThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 5527
    const-string v1, "Gmail"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mThresholdMax:I

    if-lez v1, :cond_2

    .line 5529
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prefetching live mail: maxResults: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxResults:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mFetchThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5533
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->startThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5534
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/MailEngine;->access$3000(Lcom/google/android/gm/provider/MailEngine;Z)V

    goto :goto_0
.end method


# virtual methods
.method public configure(Lcom/google/android/gm/provider/MailEngine$NetworkCursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 5483
    invoke-virtual {p1}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->getPosition()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->maybeFetchMoreResults(ILcom/google/android/gm/provider/MailEngine$NetworkCursor;)V

    .line 5484
    return-void
.end method

.method public finalizeSink()V
    .locals 1

    .prologue
    .line 5641
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 5642
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5643
    return-void
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5487
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public getSql()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5491
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mSql:Ljava/lang/String;

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 5731
    const/4 v0, 0x1

    return v0
.end method

.method public handleConversation(Lcom/google/android/gm/provider/MailSync$Conversation;)V
    .locals 13
    .parameter "conversation"

    .prologue
    const-wide/16 v11, -0x1

    .line 5541
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 5544
    .local v7, values:Landroid/content/ContentValues;
    iget-object v8, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v8, v8, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 5546
    :try_start_0
    const-string v8, "_id"

    iget-wide v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->conversationId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5547
    const-string v8, "queryId"

    iget-wide v9, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mQueryId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5548
    const-string v8, "subject"

    iget-object v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->subject:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5549
    const-string v8, "snippet"

    iget-object v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->snippet:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5550
    const-string v8, "fromAddress"

    iget-object v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->fromAddress:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5551
    const-string v8, "personalLevel"

    iget-object v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->toInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5554
    const-string v8, "forceAllUnread"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5555
    iget-object v8, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    iget-object v9, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v9}, Lcom/google/android/gm/provider/MailEngine;->access$900(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdCached()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5558
    iget-object v8, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    if-eqz v8, :cond_0

    .line 5559
    iget-object v8, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    iget-object v9, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    iget-wide v9, v9, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5562
    :cond_0
    iget-object v8, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    invoke-static {v8}, Lcom/google/android/gm/provider/Gmail;->getLabelIdsStringFromLabelIds(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    .line 5563
    .local v3, labelIdsString:Ljava/lang/String;
    const-string v8, "labelIds"

    invoke-virtual {v7, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5564
    const-string v8, "numMessages"

    iget v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->numMessages:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5565
    const-string v8, "maxMessageId"

    iget-wide v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->maxMessageId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5566
    const-string v8, "hasAttachments"

    iget-boolean v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->hasAttachments:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5567
    iget-object v8, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v8}, Lcom/google/android/gm/provider/MailEngine;->access$3600(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 5568
    .local v5, rowId:J
    cmp-long v8, v5, v11

    if-nez v8, :cond_1

    .line 5572
    const-string v8, "Gmail"

    const-string v9, "Failed to insert conversation"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5575
    :cond_1
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 5577
    iget-object v8, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    if-eqz v8, :cond_3

    .line 5578
    const-string v8, "labels_id"

    iget-object v9, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    iget-wide v9, v9, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5587
    :goto_0
    const-string v8, "queryId"

    iget-wide v9, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mQueryId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5588
    const-string v8, "isZombie"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5601
    const-string v8, "sortMessageId"

    iget-wide v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->sortMessageId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5602
    const-string v8, "date"

    iget-wide v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->date:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5603
    const-string v8, "conversation_id"

    iget-wide v9, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->conversationId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5605
    iget-object v8, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Long;

    invoke-interface {v8, v9}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Long;

    .line 5606
    .local v2, labelIds:[Ljava/lang/Long;
    array-length v4, v2

    .line 5607
    .local v4, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 5608
    aget-object v1, v2, v0

    .line 5609
    .local v1, labelId:Ljava/lang/Long;
    const-string v8, "labels_id"

    invoke-virtual {v7, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5610
    iget-object v8, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v8}, Lcom/google/android/gm/provider/MailEngine;->access$3700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 5611
    cmp-long v8, v5, v11

    if-nez v8, :cond_2

    .line 5615
    const-string v8, "Gmail"

    const-string v9, "Failed to insert conversation label"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5607
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5584
    .end local v0           #i:I
    .end local v1           #labelId:Ljava/lang/Long;
    .end local v2           #labelIds:[Ljava/lang/Long;
    .end local v4           #numLabels:I
    :cond_3
    const-string v8, "labels_id"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5626
    .end local v3           #labelIdsString:Ljava/lang/String;
    .end local v5           #rowId:J
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v9, v9, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8

    .line 5622
    .restart local v0       #i:I
    .restart local v2       #labelIds:[Ljava/lang/Long;
    .restart local v3       #labelIdsString:Ljava/lang/String;
    .restart local v4       #numLabels:I
    .restart local v5       #rowId:J
    :cond_4
    :try_start_1
    iget-wide v8, p1, Lcom/google/android/gm/provider/MailSync$Conversation;->sortMessageId:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mNextHighestMessageId:J

    .line 5624
    iget-object v8, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v8, v8, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5626
    iget-object v8, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v8, v8, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5628
    return-void
.end method

.method public isActiveNetworkCursor()Z
    .locals 2

    .prologue
    .line 5498
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getQuery()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1}, Lcom/google/android/gm/provider/MailEngine;->access$3100(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isCursorComplete()Z
    .locals 4

    .prologue
    .line 5504
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mNextHighestMessageId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(IILcom/google/android/gm/provider/MailEngine$NetworkCursor;)V
    .locals 0
    .parameter "oldPosition"
    .parameter "newPosition"
    .parameter "cursor"

    .prologue
    .line 5726
    invoke-direct {p0, p2, p3}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->maybeFetchMoreResults(ILcom/google/android/gm/provider/MailEngine$NetworkCursor;)V

    .line 5727
    return-void
.end method

.method public prepareSink()V
    .locals 1

    .prologue
    .line 5634
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 5635
    return-void
.end method

.method public requery(Lcom/google/android/gm/provider/MailEngine$NetworkCursor;Z)V
    .locals 8
    .parameter "cursor"
    .parameter "contentsVisible"

    .prologue
    .line 5670
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getMaxUnsyncedMessageIdForLabel(Lcom/google/android/gm/provider/MailCore$Label;)J

    move-result-wide v6

    .line 5671
    .local v6, maxUnsyncedMessageId:J
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxUnsyncedMessageId:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_1

    .line 5693
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxUnsyncedMessageId:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_0

    .line 5694
    iget-wide v6, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxUnsyncedMessageId:J

    .line 5696
    :cond_0
    iput-wide v6, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxUnsyncedMessageId:J

    .line 5697
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailEngine;->access$2000(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mLabel:Lcom/google/android/gm/provider/MailCore$Label;

    iget-wide v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxUnsyncedMessageId:J

    iget-wide v4, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mQueryId:J

    invoke-static/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine;->access$3500(Landroid/content/Context;Lcom/google/android/gm/provider/MailCore$Label;JJ)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->setSelectionArguments([Ljava/lang/String;)V

    .line 5700
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->clearMatchingNotifications()V

    .line 5701
    :cond_2
    return-void
.end method

.method protected runInternal()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 5650
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->access$3800(Lcom/google/android/gm/provider/MailEngine;IZ)V

    .line 5652
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mQuery:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mNextHighestMessageId:J

    iget v4, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mMaxResults:I

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailSync;->newQueryRequest(Ljava/lang/String;JII)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v7

    .line 5654
    .local v7, request:Lorg/apache/http/client/methods/HttpUriRequest;
    iget v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mFetchThreshold:I

    iget v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mThresholdStep:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mThresholdMax:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mFetchThreshold:I

    .line 5655
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v7}, Lcom/google/android/gm/provider/MailEngine;->access$3900(Lcom/google/android/gm/provider/MailEngine;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v8

    .line 5657
    .local v8, response:Lorg/apache/http/HttpResponse;
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5658
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0, v8, p0}, Lcom/google/android/gm/provider/MailSync;->handleQueryResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->mNextHighestMessageId:J

    .line 5659
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5661
    :try_start_3
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 5662
    .local v6, entity:Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 5665
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v0, v9, v10}, Lcom/google/android/gm/provider/MailEngine;->access$3800(Lcom/google/android/gm/provider/MailEngine;IZ)V

    .line 5667
    return-void

    .line 5659
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 5661
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 5662
    .restart local v6       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 5663
    :cond_1
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 5665
    .end local v6           #entity:Lorg/apache/http/HttpEntity;
    .end local v7           #request:Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->this$0:Lcom/google/android/gm/provider/MailEngine;

    invoke-static {v1, v9, v10}, Lcom/google/android/gm/provider/MailEngine;->access$3800(Lcom/google/android/gm/provider/MailEngine;IZ)V

    throw v0
.end method
