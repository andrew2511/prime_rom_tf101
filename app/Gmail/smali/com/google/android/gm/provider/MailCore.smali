.class Lcom/google/android/gm/provider/MailCore;
.super Ljava/lang/Object;
.source "MailCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MailCore$1;,
        Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;,
        Lcom/google/android/gm/provider/MailCore$LabelRecord;,
        Lcom/google/android/gm/provider/MailCore$Label;,
        Lcom/google/android/gm/provider/MailCore$NotificationRequest;,
        Lcom/google/android/gm/provider/MailCore$Listener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DUMMY_LABEL_RECORD:Lcom/google/android/gm/provider/MailCore$LabelRecord;

.field private static final FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCED_SYNCED_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORCED_UNSYNCED_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static NO_COUNT_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static TOTAL_COUNT_LABELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDefaultSystemLabelOrder:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddConversationLabelIdsForceUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mAddConversationLabelIdsStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mAddLabelToAllMessagesStmt:Landroid/database/sqlite/SQLiteStatement;

.field private final mCanonicalNameToLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            ">;"
        }
    .end annotation
.end field

.field private final mConversationLabelsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mConversationMaxMessageIdStmt:Landroid/database/sqlite/SQLiteStatement;

.field private final mConversationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mCountMessageLabelInConversationStmt:Landroid/database/sqlite/SQLiteStatement;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDeleteCachedConversationStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mDeleteConversationIdStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mDeleteLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mDeleteMessageLabelsOnConversationStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mDeleteMessageLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mDeleteMessageStmt:Landroid/database/sqlite/SQLiteStatement;

.field private final mIdToLabel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            ">;"
        }
    .end annotation
.end field

.field mLabelIdsIncludedOrPartial:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

.field mListener:Lcom/google/android/gm/provider/MailCore$Listener;

.field private mNextLocalLabelId:J

.field private mNextServerLabelId:J

.field mNotificationRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/MailCore$NotificationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperations:Lcom/google/android/gm/provider/Operations;

.field private mPurgeConversationConversationLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mPurgeConversationConversationsStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mPurgeConversationMessageLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

.field mServerVersion:J

.field private mSetLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateAddedLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateAddedLabelsUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateConversationLabelIdsForceUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateConversationLabelIdsStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateLabelsCountStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mUpdateOldUnreadLabelsCountStmt:Landroid/database/sqlite/SQLiteStatement;

.field mUserGmailPrefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const-class v0, Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/MailCore;->$assertionsDisabled:Z

    .line 587
    new-instance v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailCore$LabelRecord;-><init>(Lcom/google/android/gm/provider/MailCore$1;)V

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->DUMMY_LABEL_RECORD:Lcom/google/android/gm/provider/MailCore$LabelRecord;

    .line 589
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->DUMMY_LABEL_RECORD:Lcom/google/android/gm/provider/MailCore$LabelRecord;

    iput-boolean v3, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->isZombie:Z

    .line 590
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->DUMMY_LABEL_RECORD:Lcom/google/android/gm/provider/MailCore$LabelRecord;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    .line 591
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->DUMMY_LABEL_RECORD:Lcom/google/android/gm/provider/MailCore$LabelRecord;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->dateReceived:J

    .line 1633
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    .line 1653
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "^r"

    aput-object v1, v0, v3

    const-string v1, "^^out"

    aput-object v1, v0, v4

    const-string v1, "^s"

    aput-object v1, v0, v5

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->TOTAL_COUNT_LABELS:Ljava/util/Set;

    .line 1657
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^f"

    aput-object v1, v0, v3

    const-string v1, "^t"

    aput-object v1, v0, v4

    const-string v1, "^b"

    aput-object v1, v0, v5

    const-string v1, "^all"

    aput-object v1, v0, v6

    const-string v1, "^k"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "^io_im"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->NO_COUNT_LABELS:Ljava/util/Set;

    .line 1662
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^^out"

    aput-object v1, v0, v3

    const-string v1, "^r"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->FORCED_SYNCED_LABELS:Ljava/util/Set;

    .line 1665
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^i"

    aput-object v1, v0, v3

    const-string v1, "^f"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;

    .line 1668
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "^all"

    aput-object v1, v0, v3

    const-string v1, "^b"

    aput-object v1, v0, v4

    const-string v1, "^s"

    aput-object v1, v0, v5

    const-string v1, "^k"

    aput-object v1, v0, v6

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->FORCED_UNSYNCED_LABELS:Ljava/util/Set;

    return-void

    :cond_0
    move v0, v3

    .line 40
    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/Operations;Lcom/google/android/gm/provider/MailCore$Listener;)V
    .locals 10
    .parameter "context"
    .parameter "db"
    .parameter "operations"
    .parameter "listener"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    .line 1545
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mIdToLabel:Ljava/util/Map;

    .line 1546
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    .line 1547
    iput-wide v4, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    .line 1548
    iput-wide v4, p0, Lcom/google/android/gm/provider/MailCore;->mNextLocalLabelId:J

    .line 181
    iput-object p2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 182
    iput-object p3, p0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    .line 183
    iput-object v3, p0, Lcom/google/android/gm/provider/MailCore;->mNotificationRequests:Ljava/util/List;

    .line 184
    iput-object p4, p0, Lcom/google/android/gm/provider/MailCore;->mListener:Lcom/google/android/gm/provider/MailCore$Listener;

    .line 187
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailCore;->loadGmailPreferences()V

    .line 189
    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v9

    const/4 v0, 0x1

    const-string v1, "canonicalName"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "name"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "numConversations"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "numUnreadConversations"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "color"

    aput-object v1, v2, v0

    .line 197
    .local v2, labelsProjection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "labels"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 200
    .local v8, labelsCursor:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gm/provider/Gmail$LabelMap;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    .line 205
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "conversation_labels"

    invoke-direct {v0, v1, v3}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mConversationLabelsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 206
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "conversations"

    invoke-direct {v0, v1, v3}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mConversationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 207
    return-void
.end method

.method private addLabel(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1792
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1793
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1795
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1796
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onLabelsChanged not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1799
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1800
    const-string v1, "canonicalName"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const-string v1, "name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    const-string v1, "numConversations"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1803
    const-string v1, "numUnreadConversations"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1804
    const-string v1, "color"

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1805
    const-string v1, "visibility"

    const-string v2, "SHOW"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    const-string v1, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1807
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1808
    return-void
.end method

.method private addLabel(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x1

    const/4 v4, 0x0

    .line 1755
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1756
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1758
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1759
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onLabelsChanged not yet called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1762
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1763
    const-string v0, "canonicalName"

    invoke-virtual {v1, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1764
    const-string v0, "name"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    const-string v0, "numConversations"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1766
    const-string v0, "numUnreadConversations"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1767
    const-string v0, "color"

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1768
    const-string v0, "visibility"

    const-string v2, "SHOW"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    invoke-direct {p0, p1, v1}, Lcom/google/android/gm/provider/MailCore;->adjustContentValuesForSystemLabel(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1773
    invoke-static {p1}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1774
    iget-wide v2, p0, Lcom/google/android/gm/provider/MailCore;->mNextLocalLabelId:J

    sub-long v4, v2, v5

    iput-wide v4, p0, Lcom/google/android/gm/provider/MailCore;->mNextLocalLabelId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1780
    :goto_0
    const-string v2, "_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1781
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1782
    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1783
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to insert row for label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1775
    :cond_2
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->PRIORITY_MARKERS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1776
    sget-object v0, Lcom/google/android/gm/provider/Gmail;->LOCAL_PRIORITY_LABELS:Lcom/google/common/collect/BiMap;

    invoke-interface {v0}, Lcom/google/common/collect/BiMap;->inverse()Lcom/google/common/collect/BiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/BiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    .line 1778
    :cond_3
    iget-wide v2, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    add-long v4, v2, v5

    iput-wide v4, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 1785
    :cond_4
    return-void
.end method

.method private adjustContentValuesForSystemLabel(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1675
    const-string v0, "^"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1676
    const-string v0, "systemLabel"

    if-eqz v1, :cond_9

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1678
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailCore;->initSystemLabelMap()V

    .line 1680
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1681
    const-string v2, "systemLabelOrder"

    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1685
    :cond_0
    if-eqz v1, :cond_1

    .line 1687
    const-string v0, "hidden"

    invoke-static {}, Lcom/google/android/gm/provider/LabelManager;->getSortedUserMeaningfulSystemLabels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    move v1, v3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1691
    :cond_1
    const-string v0, "^io_im"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "^iim"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1695
    :cond_2
    const-string v0, "hidden"

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailCore;->getInfoOverloadEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    move v1, v3

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1699
    :cond_3
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->NO_COUNT_LABELS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1704
    const-string v0, "labelCountDisplayBehavior"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1708
    :cond_4
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->TOTAL_COUNT_LABELS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1713
    const-string v0, "labelCountDisplayBehavior"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1717
    :cond_5
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->FORCED_SYNCED_LABELS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1722
    const-string v0, "labelSyncPolicy"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1726
    :cond_6
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->FORCED_UNSYNCED_LABELS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1731
    const-string v0, "labelSyncPolicy"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1735
    :cond_7
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->FORCED_INCLUDED_OR_PARTIAL_LABELS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1741
    const-string v0, "labelSyncPolicy"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1744
    :cond_8
    return-void

    :cond_9
    move v2, v4

    .line 1676
    goto/16 :goto_0

    :cond_a
    move v1, v4

    .line 1687
    goto/16 :goto_1

    :cond_b
    move v1, v4

    .line 1695
    goto :goto_2
.end method

.method private static calculateSetIntersectionAndDifferences(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p0, one:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p1, two:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, onlyOne:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p3, onlyTwo:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p4, both:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p2, :cond_1

    .line 555
    sget-boolean v0, Lcom/google/android/gm/provider/MailCore;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 556
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 557
    invoke-interface {p2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 560
    :cond_1
    if-eqz p3, :cond_3

    .line 561
    sget-boolean v0, Lcom/google/android/gm/provider/MailCore;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 562
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 563
    invoke-interface {p3, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 566
    :cond_3
    if-eqz p4, :cond_5

    .line 567
    sget-boolean v0, Lcom/google/android/gm/provider/MailCore;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 568
    :cond_4
    invoke-interface {p4, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 569
    invoke-interface {p4, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 571
    :cond_5
    return-void
.end method

.method static changeLabelId(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2102
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2103
    const-string v1, "UPDATE labels SET _id = ? WHERE _id = ?"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2104
    const-string v1, "UPDATE message_labels SET labels_id = ? WHERE labels_id = ?"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2105
    const-string v1, "UPDATE conversation_labels SET labels_id = ? WHERE labels_id = ?"

    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2106
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gm/provider/Operations;->updateLabelId(Landroid/database/sqlite/SQLiteDatabase;JJ)V

    .line 2107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE conversations SET labelIds = REPLACE(labelIds, \',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\', \',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2110
    return-void
.end method

.method public static correctLocalLabelIds(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2066
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v0, "canonicalName"

    aput-object v0, v2, v4

    .line 2069
    .local v2, labelsProjection:[Ljava/lang/String;
    const-string v1, "labels"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2072
    .local v11, labelsCursor:Landroid/database/Cursor;
    const-wide/16 v12, -0x1

    .line 2073
    .local v12, lowestLocalLabelId:J
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2074
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2075
    .local v9, labelId:J
    invoke-static {v9, v10}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    goto :goto_0

    .line 2080
    .end local v9           #labelId:J
    :cond_1
    const/4 v0, -0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2082
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2083
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2084
    .restart local v9       #labelId:J
    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2085
    .local v8, canonicalLabelName:Ljava/lang/String;
    invoke-static {v8}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v9, v10}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2086
    const-wide/16 v0, 0x1

    sub-long/2addr v12, v0

    invoke-static {p0, v9, v10, v12, v13}, Lcom/google/android/gm/provider/MailCore;->changeLabelId(Landroid/database/sqlite/SQLiteDatabase;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2090
    .end local v8           #canonicalLabelName:Ljava/lang/String;
    .end local v9           #labelId:J
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2092
    return-void
.end method

.method private getMessageLabelRecordsFromConversationTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "queryIdString"
    .parameter "conversationIdString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 945
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 947
    .local v1, currentLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;>;"
    iget-object v6, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "SELECT   labelIds, \n  maxMessageId FROM   conversations WHERE   _id = ? AND queryId = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object p2, v8, v9

    aput-object p1, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 958
    .local v2, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 959
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 960
    .local v3, labels:Ljava/lang/String;
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 962
    .local v4, maxMessageId:J
    new-instance v0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v0, p0, v3, v6}, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;-><init>(Lcom/google/android/gm/provider/MailCore;Ljava/lang/String;Ljava/lang/Long;)V

    .line 963
    .local v0, conversationLabel:Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 966
    .end local v0           #conversationLabel:Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;
    .end local v3           #labels:Ljava/lang/String;
    .end local v4           #maxMessageId:J
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 968
    return-object v1

    .line 966
    :catchall_0
    move-exception v6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private getMessageLabelRecordsFromLiveMessageTable(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "conversationIdString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 979
    const/4 v7, 0x0

    .line 982
    .local v7, currentLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;>;"
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v9, "SELECT \n  messageId,\n  group_concat(labels_id, \',\'),\n  dateReceivedMs \nFROM\n  messages LEFT OUTER JOIN   message_labels ON messageId = message_messageId\nWHERE\n  synced = 0 AND conversation = ?\nGROUP BY messageId\nORDER BY messageId"

    new-array v10, v10, [Ljava/lang/String;

    aput-object p1, v10, v11

    invoke-virtual {v1, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 996
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 998
    const/4 v1, 0x0

    .line 1011
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1013
    :goto_0
    return-object v1

    .line 1000
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1001
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1002
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1003
    .local v3, messageId:J
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1004
    .local v2, labels:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1006
    .local v5, dateMessageReceived:J
    new-instance v0, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;-><init>(Lcom/google/android/gm/provider/MailCore;Ljava/lang/String;JJ)V

    .line 1008
    .local v0, conversationLabel:Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1011
    .end local v0           #conversationLabel:Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;
    .end local v2           #labels:Ljava/lang/String;
    .end local v3           #messageId:J
    .end local v5           #dateMessageReceived:J
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v1, v7

    .line 1013
    goto :goto_0
.end method

.method private initSystemLabelMap()V
    .locals 3

    .prologue
    .line 1636
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1637
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    .line 1638
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^i"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^iim"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1640
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^t"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1641
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^io_im"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^b"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^f"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^^out"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^r"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^all"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^s"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1648
    sget-object v0, Lcom/google/android/gm/provider/MailCore;->sDefaultSystemLabelOrder:Ljava/util/Map;

    const-string v1, "^k"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1650
    :cond_0
    return-void
.end method

.method private insertConversationLabels(JJLjava/util/Map;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1528
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1529
    const-string v0, "queryId"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1530
    const-string v0, "conversation_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1531
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1532
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1533
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    .line 1535
    const-string v1, "labels_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1536
    const-string v1, "isZombie"

    iget-boolean v4, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->isZombie:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1537
    const-string v1, "sortMessageId"

    iget-wide v4, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1538
    const-string v1, "date"

    iget-wide v4, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->dateReceived:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1539
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mConversationLabelsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    invoke-virtual {v0, v2}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    goto :goto_0

    .line 1541
    :cond_0
    return-void
.end method

.method public static isCanonicalLabelNameLocal(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2120
    const-string v0, "^^"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLabelIdLocal(J)Z
    .locals 2
    .parameter "labelId"

    .prologue
    .line 2113
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x3e8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadGmailPreferences()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 368
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "info_overload"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "enabled_pref"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 371
    .local v8, preferenceCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 372
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    const-string v1, "sx_ioe"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 378
    :cond_1
    return-void
.end method

.method private onConversationChanged(JJLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V
    .locals 36
    .parameter "conversationId"
    .parameter "queryId"
    .parameter "rationale"
    .parameter "messageLabelChange"

    .prologue
    .line 668
    new-instance v11, Landroid/util/TimingLogger;

    const-string v3, "Gmail"

    const-string v4, "onConversationChanged"

    invoke-direct {v11, v3, v4}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    .local v11, timings:Landroid/util/TimingLogger;
    :try_start_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v25

    .line 672
    .local v25, conversationIdString:Ljava/lang/String;
    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    .line 675
    .local v16, queryIdString:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v17

    .line 678
    .local v17, oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "conversation_labels"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "labels_id"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "isZombie"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "sortMessageId"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "date"

    aput-object v7, v5, v6

    const-string v6, "queryId = ? AND conversation_id = ?"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v16, v7, v8

    const/4 v8, 0x1

    aput-object v25, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v33

    .line 684
    .local v33, oldLabelsCursor:Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 685
    const/4 v3, 0x0

    move-object/from16 v0, v33

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    .line 686
    .local v29, labelId:J
    const/4 v3, 0x1

    move-object/from16 v0, v33

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v28, v3

    .line 687
    .local v28, isZombie:Z
    :goto_1
    const/4 v3, 0x2

    move-object/from16 v0, v33

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 688
    .local v34, sortMessageId:J
    const/4 v3, 0x3

    move-object/from16 v0, v33

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 689
    .local v26, date:J
    new-instance v31, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    const/4 v3, 0x0

    move-object/from16 v0, v31

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailCore$LabelRecord;-><init>(Lcom/google/android/gm/provider/MailCore$1;)V

    .line 690
    .local v31, labelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    move-wide/from16 v0, v26

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/google/android/gm/provider/MailCore$LabelRecord;->dateReceived:J

    .line 691
    move-wide/from16 v0, v34

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    .line 692
    move/from16 v0, v28

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/google/android/gm/provider/MailCore$LabelRecord;->isZombie:Z

    .line 693
    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 696
    .end local v26           #date:J
    .end local v28           #isZombie:Z
    .end local v29           #labelId:J
    .end local v31           #labelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    .end local v34           #sortMessageId:J
    :catchall_0
    move-exception v3

    :try_start_2
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 750
    .end local v16           #queryIdString:Ljava/lang/String;
    .end local v17           #oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    .end local v25           #conversationIdString:Ljava/lang/String;
    .end local v33           #oldLabelsCursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v3

    const-string v4, "Gmail"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 751
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updated tables for conversation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_0
    const-string v4, "finish"

    invoke-virtual {v11, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v11}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v3

    .line 686
    .restart local v16       #queryIdString:Ljava/lang/String;
    .restart local v17       #oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    .restart local v25       #conversationIdString:Ljava/lang/String;
    .restart local v29       #labelId:J
    .restart local v33       #oldLabelsCursor:Landroid/database/Cursor;
    :cond_1
    const/4 v3, 0x0

    move/from16 v28, v3

    goto :goto_1

    .line 696
    .end local v29           #labelId:J
    :cond_2
    :try_start_3
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 698
    const-string v3, "fetch old labels"

    invoke-virtual {v11, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 700
    const-wide/16 v8, 0x0

    .line 702
    .local v8, oldMaxMessageId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "SELECT maxMessageId FROM conversations WHERE _id = ? AND queryId = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v25, v5, v6

    const/4 v6, 0x1

    aput-object v16, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v32

    .line 706
    .local v32, oldConversationCursor:Landroid/database/Cursor;
    :try_start_4
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 707
    const/4 v3, 0x0

    move-object/from16 v0, v32

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-wide v8

    .line 710
    :cond_3
    :try_start_5
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    .line 712
    const-string v3, "read old conversation"

    invoke-virtual {v11, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteConversationIdStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    if-nez v3, :cond_4

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const-string v4, "DELETE FROM conversation_labels WHERE queryId = ? AND conversation_id = ?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mDeleteConversationIdStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 721
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteConversationIdStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v4, 0x1

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteConversationIdStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    const/4 v4, 0x2

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteConversationIdStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 725
    const-string v3, "delete old labels"

    invoke-virtual {v11, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 727
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v10

    .line 729
    .local v10, conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-nez v3, :cond_6

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-object/from16 v6, p5

    move-object/from16 v7, v17

    .line 731
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gm/provider/MailCore;->onSyncedConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;JLjava/util/Map;Landroid/util/TimingLogger;)Z

    move-result v24

    .line 734
    .local v24, conversationDeleted:Z
    const-string v3, "process messages"

    invoke-virtual {v11, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 736
    if-eqz v24, :cond_7

    .line 750
    const-string v3, "Gmail"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 751
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updated tables for conversation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_5
    const-string v3, "finish"

    invoke-virtual {v11, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v11}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 756
    .end local v24           #conversationDeleted:Z
    :goto_2
    return-void

    .line 710
    .end local v10           #conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    :catchall_2
    move-exception v3

    :try_start_6
    invoke-interface/range {v32 .. v32}, Landroid/database/Cursor;->close()V

    throw v3

    .restart local v10       #conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    :cond_6
    move-object/from16 v12, p0

    move-wide/from16 v13, p1

    move-object/from16 v15, p5

    move-object/from16 v18, v10

    move/from16 v19, p6

    move-object/from16 v20, v11

    .line 741
    invoke-direct/range {v12 .. v20}, Lcom/google/android/gm/provider/MailCore;->onLiveConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLandroid/util/TimingLogger;)V

    .line 743
    const-string v3, "process messages"

    invoke-virtual {v11, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v18, p0

    move-wide/from16 v19, p1

    move-wide/from16 v21, p3

    move-object/from16 v23, v10

    .line 747
    invoke-direct/range {v18 .. v23}, Lcom/google/android/gm/provider/MailCore;->insertConversationLabels(JJLjava/util/Map;)V

    .line 748
    const-string v3, "write labels"

    invoke-virtual {v11, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 750
    const-string v3, "Gmail"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 751
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updated tables for conversation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_8
    const-string v3, "finish"

    invoke-virtual {v11, v3}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 754
    invoke-virtual {v11}, Landroid/util/TimingLogger;->dumpToLog()V

    goto :goto_2
.end method

.method private onLiveConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLandroid/util/TimingLogger;)V
    .locals 37
    .parameter "conversationId"
    .parameter "rationale"
    .parameter "queryIdString"
    .parameter
    .parameter
    .parameter "messageLabelChange"
    .parameter "timings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;Z",
            "Landroid/util/TimingLogger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 778
    .local p5, oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    .local p6, conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 780
    .local v14, conversationIdString:Ljava/lang/String;
    const-wide/high16 v33, -0x8000

    .line 781
    .local v33, oldConversationDate:J
    const/4 v12, 0x0

    .line 785
    .local v12, newMessageLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    .line 786
    .local v36, record:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->dateReceived:J

    move-wide v4, v0

    move-wide/from16 v0, v33

    move-wide v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v33

    goto :goto_0

    .line 789
    .end local v36           #record:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    :cond_0
    const/16 v17, 0x0

    .line 790
    .local v17, currentLabels:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;>;"
    if-eqz p7, :cond_1

    .line 795
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailCore;->getMessageLabelRecordsFromLiveMessageTable(Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 798
    :cond_1
    if-nez v17, :cond_2

    .line 812
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailCore;->getMessageLabelRecordsFromConversationTable(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 816
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdSpam()J

    move-result-wide v25

    .line 817
    .local v25, labelIdSpam:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdTrash()J

    move-result-wide v28

    .line 819
    .local v28, labelIdTrash:J
    const-wide/high16 v10, -0x8000

    .line 820
    .local v10, maxMessageId:J
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v19           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;

    .line 821
    .local v21, labelEntry:Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->getMessageId()J

    move-result-wide v10

    .line 823
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->getLabelIds()[Ljava/lang/String;

    move-result-object v30

    .line 825
    .local v30, labelIds:[Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 829
    .local v24, labelIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v15, 0x0

    .line 830
    .local v15, conversationInTrash:Z
    const/16 v16, 0x0

    .line 831
    .local v16, conversationIsSpam:Z
    move-object/from16 v13, v30

    .local v13, arr$:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v32, v0

    .local v32, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    aget-object v27, v13, v20

    .line 832
    .local v27, labelIdString:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 833
    invoke-static/range {v27 .. v27}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 834
    .local v22, labelId:J
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    cmp-long v4, v25, v22

    if-nez v4, :cond_5

    .line 836
    const/16 v16, 0x1

    .line 831
    .end local v22           #labelId:J
    :cond_4
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 837
    .restart local v22       #labelId:J
    :cond_5
    cmp-long v4, v28, v22

    if-nez v4, :cond_4

    .line 838
    const/4 v15, 0x1

    goto :goto_2

    .line 844
    .end local v22           #labelId:J
    .end local v27           #labelIdString:Ljava/lang/String;
    :cond_6
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    .line 846
    .local v22, labelId:Ljava/lang/Long;
    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 847
    new-instance v31, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    const/4 v4, 0x0

    move-object/from16 v0, v31

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailCore$LabelRecord;-><init>(Lcom/google/android/gm/provider/MailCore$1;)V

    .line 848
    .local v31, labelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    move-object/from16 v0, p6

    move-object/from16 v1, v22

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    :goto_4
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    move-wide v4, v0

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    .line 853
    move-object/from16 v0, p5

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    .line 854
    .local v35, oldLabelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    if-eqz v35, :cond_8

    .line 855
    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    move-wide v4, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    move-wide v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    .line 858
    :cond_8
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;->getDateReceived()Ljava/lang/Long;

    move-result-object v18

    .line 859
    .local v18, dateReceived:Ljava/lang/Long;
    if-eqz v18, :cond_d

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_5
    move-wide v0, v4

    move-object/from16 v2, v31

    iput-wide v0, v2, Lcom/google/android/gm/provider/MailCore$LabelRecord;->dateReceived:J

    .line 866
    if-nez v16, :cond_9

    if-eqz v15, :cond_b

    :cond_9
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v25

    if-nez v4, :cond_a

    if-eqz v15, :cond_b

    :cond_a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v28

    if-nez v4, :cond_7

    .line 869
    :cond_b
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/google/android/gm/provider/MailCore$LabelRecord;->isZombie:Z

    goto :goto_3

    .line 850
    .end local v18           #dateReceived:Ljava/lang/Long;
    .end local v31           #labelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    .end local v35           #oldLabelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    :cond_c
    move-object/from16 v0, p6

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    .restart local v31       #labelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    goto :goto_4

    .restart local v18       #dateReceived:Ljava/lang/Long;
    .restart local v35       #oldLabelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    :cond_d
    move-wide/from16 v4, v33

    .line 859
    goto :goto_5

    .end local v13           #arr$:[Ljava/lang/String;
    .end local v15           #conversationInTrash:Z
    .end local v16           #conversationIsSpam:Z
    .end local v18           #dateReceived:Ljava/lang/Long;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #labelEntry:Lcom/google/android/gm/provider/MailCore$MessageLabelRecord;
    .end local v22           #labelId:Ljava/lang/Long;
    .end local v24           #labelIdList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v30           #labelIds:[Ljava/lang/String;
    .end local v31           #labelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    .end local v32           #len$:I
    .end local v35           #oldLabelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    :cond_e
    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 875
    invoke-direct/range {v4 .. v12}, Lcom/google/android/gm/provider/MailCore;->updateLabelInfo(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;JLjava/util/Set;)V

    .line 877
    const-string v4, "process labels"

    move-object/from16 v0, p8

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 878
    return-void
.end method

.method private onSyncedConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;JLjava/util/Map;Landroid/util/TimingLogger;)Z
    .locals 62
    .parameter "conversationId"
    .parameter "rationale"
    .parameter
    .parameter "oldMaxMessageId"
    .parameter
    .parameter "timings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;",
            "Landroid/util/TimingLogger;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1088
    .local p4, oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    .local p7, conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v22

    .line 1091
    .local v22, conversationIdString:Ljava/lang/String;
    const-wide/high16 v15, -0x8000

    .line 1092
    .local v15, maxMessageId:J
    const/high16 v50, -0x8000

    .line 1095
    .local v50, maxPersonalLevel:I
    const/16 v17, 0x0

    .line 1096
    .local v17, newMessageLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/16 v60, 0x0

    .line 1099
    .local v60, subject:Ljava/lang/String;
    const/16 v61, 0x0

    .line 1100
    .local v61, unreadSnippet:Ljava/lang/String;
    const/16 v48, 0x0

    .line 1101
    .local v48, lastSnippet:Ljava/lang/String;
    const/16 v27, 0x0

    .line 1102
    .local v27, hasAttachments:Z
    const/16 v28, 0x0

    .line 1104
    .local v28, hasMessagesWithErrors:Z
    sget-object v19, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 1105
    .local v19, calculatedRationale:Lcom/google/android/gm/provider/MailSync$SyncRationale;
    const-wide/16 v20, 0x0

    .line 1108
    .local v20, calculatedRationaleMessageId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v0

    const-string v10, "SELECT \n  messageId,\n  fromAddress,\n  group_concat(labels_id, \' \'),\n  subject,\n  snippet,\n  personalLevel,\n  length(joinedAttachmentInfos) > 0 as hasAttachments,\n  dateReceivedMs,\n  error\nFROM\n  messages LEFT OUTER JOIN   message_labels ON messageId = message_messageId\nWHERE\n  synced = 1 AND conversation = ?\nGROUP BY messageId\nORDER BY messageId"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v22, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 1127
    .local v24, cursor:Landroid/database/Cursor;
    const-string v9, "fetch messages"

    move-object/from16 v0, p8

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1130
    :try_start_0
    new-instance v4, Lcom/google/android/gm/provider/CompactSenderInstructions;

    invoke-direct {v4}, Lcom/google/android/gm/provider/CompactSenderInstructions;-><init>()V

    .line 1133
    .local v4, senderInstructions:Lcom/google/android/gm/provider/CompactSenderInstructions;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdDraft()J

    move-result-wide v33

    .line 1134
    .local v33, labelIdDraft:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdUnread()J

    move-result-wide v44

    .line 1135
    .local v44, labelIdUnread:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdSent()J

    move-result-wide v37

    .line 1136
    .local v37, labelIdSent:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdOutbox()J

    move-result-wide v35

    .line 1137
    .local v35, labelIdOutbox:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdSpam()J

    move-result-wide v39

    .line 1138
    .local v39, labelIdSpam:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdTrash()J

    move-result-wide v42

    .line 1140
    .local v42, labelIdTrash:J
    :goto_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_15

    .line 1141
    const/4 v9, 0x0

    move-object/from16 v0, v24

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v52

    .line 1142
    .local v52, messageId:J
    const/4 v9, 0x1

    move-object/from16 v0, v24

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1143
    .local v5, fromAddress:Ljava/lang/String;
    const/4 v9, 0x7

    move-object/from16 v0, v24

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 1147
    .local v25, dateReceived:J
    const/4 v9, 0x2

    move-object/from16 v0, v24

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    .line 1148
    .local v47, labelsString:Ljava/lang/String;
    if-eqz v47, :cond_2

    sget-object v9, Lcom/google/android/gm/provider/Gmail;->SPACE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v47

    move-object v1, v9

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v56, v9

    .line 1152
    .local v56, messageLabels:[Ljava/lang/String;
    :goto_1
    const/16 v55, 0x0

    .line 1153
    .local v55, messageIsZombie:Z
    move-object/from16 v18, v56

    .local v18, arr$:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v49, v0

    .local v49, len$:I
    const/16 v29, 0x0

    .local v29, i$:I
    :goto_2
    move/from16 v0, v29

    move/from16 v1, v49

    if-ge v0, v1, :cond_3

    aget-object v41, v18, v29

    .line 1154
    .local v41, labelIdString:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 1155
    .local v31, labelId:J
    cmp-long v9, v39, v31

    if-eqz v9, :cond_0

    cmp-long v9, v42, v31

    if-nez v9, :cond_1

    .line 1156
    :cond_0
    const/16 v55, 0x1

    .line 1153
    :cond_1
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 1148
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v29           #i$:I
    .end local v31           #labelId:J
    .end local v41           #labelIdString:Ljava/lang/String;
    .end local v49           #len$:I
    .end local v55           #messageIsZombie:Z
    .end local v56           #messageLabels:[Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    move-object/from16 v56, v9

    goto :goto_1

    .line 1160
    .restart local v18       #arr$:[Ljava/lang/String;
    .restart local v29       #i$:I
    .restart local v49       #len$:I
    .restart local v55       #messageIsZombie:Z
    .restart local v56       #messageLabels:[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    .line 1161
    .local v6, messageIsDraft:Z
    const/4 v7, 0x0

    .line 1162
    .local v7, messageIsUnread:Z
    const/4 v8, 0x0

    .line 1163
    .local v8, messageIsSent:Z
    const/16 v54, 0x0

    .line 1164
    .local v54, messageIsOutbox:Z
    move-object/from16 v18, v56

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v49, v0

    const/16 v29, 0x0

    :goto_3
    move/from16 v0, v29

    move/from16 v1, v49

    if-ge v0, v1, :cond_e

    aget-object v41, v18, v29

    .line 1165
    .restart local v41       #labelIdString:Ljava/lang/String;
    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v31

    .line 1166
    .restart local v31       #labelId:J
    cmp-long v9, v33, v31

    if-nez v9, :cond_9

    const/4 v6, 0x1

    .line 1171
    :cond_4
    :goto_4
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p7

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 1172
    new-instance v46, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    const/4 v9, 0x0

    move-object/from16 v0, v46

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailCore$LabelRecord;-><init>(Lcom/google/android/gm/provider/MailCore$1;)V

    .line 1173
    .local v46, labelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p7

    move-object v1, v9

    move-object/from16 v2, v46

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    :goto_5
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    move-wide v9, v0

    move-wide v0, v9

    move-wide/from16 v2, v52

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide v0, v9

    move-object/from16 v2, v46

    iput-wide v0, v2, Lcom/google/android/gm/provider/MailCore$LabelRecord;->sortMessageId:J

    .line 1178
    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$LabelRecord;->dateReceived:J

    move-wide v9, v0

    move-wide v0, v9

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    move-wide v0, v9

    move-object/from16 v2, v46

    iput-wide v0, v2, Lcom/google/android/gm/provider/MailCore$LabelRecord;->dateReceived:J

    .line 1181
    if-nez v55, :cond_5

    const/4 v9, 0x0

    move v0, v9

    move-object/from16 v1, v46

    iput-boolean v0, v1, Lcom/google/android/gm/provider/MailCore$LabelRecord;->isZombie:Z

    .line 1182
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelIdsIncludedOrPartial:Ljava/util/Map;

    move-object v9, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Boolean;

    .line 1185
    .local v30, includedOrPartial:Ljava/lang/Boolean;
    if-nez v55, :cond_6

    if-eqz v30, :cond_6

    .line 1186
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1188
    sget-object v19, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LABEL:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 1200
    :cond_6
    :goto_6
    cmp-long v9, v52, p5

    if-lez v9, :cond_8

    const-wide/16 v9, 0x0

    cmp-long v9, p5, v9

    if-eqz v9, :cond_8

    .line 1201
    if-nez v17, :cond_7

    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v17

    .line 1202
    :cond_7
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_8
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_3

    .line 1167
    .end local v30           #includedOrPartial:Ljava/lang/Boolean;
    .end local v46           #labelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    :cond_9
    cmp-long v9, v44, v31

    if-nez v9, :cond_a

    const/4 v7, 0x1

    goto/16 :goto_4

    .line 1168
    :cond_a
    cmp-long v9, v37, v31

    if-nez v9, :cond_b

    const/4 v8, 0x1

    goto/16 :goto_4

    .line 1169
    :cond_b
    cmp-long v9, v35, v31

    if-nez v9, :cond_4

    const/16 v54, 0x1

    goto/16 :goto_4

    .line 1175
    :cond_c
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p7

    move-object v1, v9

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    .restart local v46       #labelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    goto/16 :goto_5

    .line 1191
    .restart local v30       #includedOrPartial:Ljava/lang/Boolean;
    :cond_d
    sget-object v9, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LABEL:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, v19

    move-object v1, v9

    if-eq v0, v1, :cond_6

    .line 1192
    sget-object v19, Lcom/google/android/gm/provider/MailSync$SyncRationale;->DURATION:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 1193
    move-wide/from16 v0, v20

    move-wide/from16 v2, v52

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    goto :goto_6

    .line 1206
    .end local v30           #includedOrPartial:Ljava/lang/Boolean;
    .end local v31           #labelId:J
    .end local v41           #labelIdString:Ljava/lang/String;
    .end local v46           #labelRecord:Lcom/google/android/gm/provider/MailCore$LabelRecord;
    :cond_e
    if-nez v60, :cond_f

    const/4 v9, 0x3

    move-object/from16 v0, v24

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    .line 1207
    :cond_f
    const/4 v9, 0x4

    move-object/from16 v0, v24

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 1208
    if-nez v61, :cond_10

    if-eqz v7, :cond_10

    .line 1209
    move-object/from16 v61, v48

    .line 1211
    :cond_10
    const/4 v9, 0x5

    move-object/from16 v0, v24

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v58

    .line 1212
    .local v58, personalLevel:I
    move/from16 v0, v50

    move/from16 v1, v58

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v50

    .line 1213
    move-wide v0, v15

    move-wide/from16 v2, v52

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    .line 1214
    const/4 v9, 0x6

    move-object/from16 v0, v24

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    :goto_7
    or-int v27, v27, v9

    .line 1215
    const/16 v9, 0x8

    move-object/from16 v0, v24

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    move/from16 v51, v9

    .line 1216
    .local v51, messageHasErrors:Z
    :goto_8
    or-int v28, v28, v51

    .line 1218
    if-eqz v54, :cond_13

    if-nez v51, :cond_13

    const/4 v9, 0x1

    :goto_9
    if-eqz v54, :cond_14

    if-eqz v51, :cond_14

    const/4 v10, 0x1

    :goto_a
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gm/provider/CompactSenderInstructions;->addMessage(Ljava/lang/String;ZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1227
    .end local v4           #senderInstructions:Lcom/google/android/gm/provider/CompactSenderInstructions;
    .end local v5           #fromAddress:Ljava/lang/String;
    .end local v6           #messageIsDraft:Z
    .end local v7           #messageIsUnread:Z
    .end local v8           #messageIsSent:Z
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v25           #dateReceived:J
    .end local v29           #i$:I
    .end local v33           #labelIdDraft:J
    .end local v35           #labelIdOutbox:J
    .end local v37           #labelIdSent:J
    .end local v39           #labelIdSpam:J
    .end local v42           #labelIdTrash:J
    .end local v44           #labelIdUnread:J
    .end local v47           #labelsString:Ljava/lang/String;
    .end local v49           #len$:I
    .end local v51           #messageHasErrors:Z
    .end local v52           #messageId:J
    .end local v54           #messageIsOutbox:Z
    .end local v55           #messageIsZombie:Z
    .end local v56           #messageLabels:[Ljava/lang/String;
    .end local v58           #personalLevel:I
    :catchall_0
    move-exception v9

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    throw v9

    .line 1214
    .restart local v4       #senderInstructions:Lcom/google/android/gm/provider/CompactSenderInstructions;
    .restart local v5       #fromAddress:Ljava/lang/String;
    .restart local v6       #messageIsDraft:Z
    .restart local v7       #messageIsUnread:Z
    .restart local v8       #messageIsSent:Z
    .restart local v18       #arr$:[Ljava/lang/String;
    .restart local v25       #dateReceived:J
    .restart local v29       #i$:I
    .restart local v33       #labelIdDraft:J
    .restart local v35       #labelIdOutbox:J
    .restart local v37       #labelIdSent:J
    .restart local v39       #labelIdSpam:J
    .restart local v42       #labelIdTrash:J
    .restart local v44       #labelIdUnread:J
    .restart local v47       #labelsString:Ljava/lang/String;
    .restart local v49       #len$:I
    .restart local v52       #messageId:J
    .restart local v54       #messageIsOutbox:Z
    .restart local v55       #messageIsZombie:Z
    .restart local v56       #messageLabels:[Ljava/lang/String;
    .restart local v58       #personalLevel:I
    :cond_11
    const/4 v9, 0x0

    goto :goto_7

    .line 1215
    :cond_12
    const/4 v9, 0x0

    move/from16 v51, v9

    goto :goto_8

    .line 1218
    .restart local v51       #messageHasErrors:Z
    :cond_13
    const/4 v9, 0x0

    goto :goto_9

    :cond_14
    const/4 v10, 0x0

    goto :goto_a

    .line 1223
    .end local v5           #fromAddress:Ljava/lang/String;
    .end local v6           #messageIsDraft:Z
    .end local v7           #messageIsUnread:Z
    .end local v8           #messageIsSent:Z
    .end local v18           #arr$:[Ljava/lang/String;
    .end local v25           #dateReceived:J
    .end local v29           #i$:I
    .end local v47           #labelsString:Ljava/lang/String;
    .end local v49           #len$:I
    .end local v51           #messageHasErrors:Z
    .end local v52           #messageId:J
    .end local v54           #messageIsOutbox:Z
    .end local v55           #messageIsZombie:Z
    .end local v56           #messageLabels:[Ljava/lang/String;
    .end local v58           #personalLevel:I
    :cond_15
    const/4 v9, 0x5

    :try_start_1
    invoke-virtual {v4, v9}, Lcom/google/android/gm/provider/CompactSenderInstructions;->toInstructionString(I)Ljava/lang/String;

    move-result-object v59

    .line 1225
    .local v59, senderSnippets:Ljava/lang/String;
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v57

    .line 1227
    .local v57, numMessages:I
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 1230
    const-string v9, "process messages"

    move-object/from16 v0, p8

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    move-object/from16 v9, p0

    move-wide/from16 v10, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p7

    .line 1232
    invoke-direct/range {v9 .. v17}, Lcom/google/android/gm/provider/MailCore;->updateLabelInfo(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;JLjava/util/Set;)V

    .line 1234
    const-string v9, "process labels"

    move-object/from16 v0, p8

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 1237
    if-nez v57, :cond_17

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteCachedConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v9, v0

    if-nez v9, :cond_16

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v0

    const-string v10, "DELETE FROM conversations WHERE _id = ? AND queryId = 0"

    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mDeleteCachedConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 1242
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteCachedConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v9, v0

    const/4 v10, 0x1

    move-object v0, v9

    move v1, v10

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteCachedConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1245
    const/4 v9, 0x1

    .line 1272
    :goto_b
    return v9

    .line 1249
    :cond_17
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1250
    .local v23, conversationValues:Landroid/content/ContentValues;
    const-string v9, "_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1251
    const-string v9, "queryId"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1252
    const-string v9, "fromAddress"

    move-object/from16 v0, v23

    move-object v1, v9

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    const-string v9, "subject"

    move-object/from16 v0, v23

    move-object v1, v9

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const-string v9, "snippet"

    if-eqz v61, :cond_18

    move-object/from16 v10, v61

    :goto_c
    move-object/from16 v0, v23

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    const-string v9, "personalLevel"

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1258
    const-string v9, "numMessages"

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1259
    const-string v9, "maxMessageId"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1260
    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gm/provider/Gmail;->getLabelIdsStringFromLabelIds(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v47

    .line 1261
    .restart local v47       #labelsString:Ljava/lang/String;
    const-string v9, "labelIds"

    move-object/from16 v0, v23

    move-object v1, v9

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const-string v9, "hasAttachments"

    if-eqz v27, :cond_19

    const/4 v10, 0x1

    :goto_d
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1264
    const-string v9, "hasMessagesWithErrors"

    if-eqz v28, :cond_1a

    const/4 v10, 0x1

    :goto_e
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1267
    const-string v9, "syncRationale"

    invoke-virtual/range {v19 .. v19}, Lcom/google/android/gm/provider/MailSync$SyncRationale;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    const-string v9, "syncRationaleMessageId"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, v23

    move-object v1, v9

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mConversationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v9, v0

    move-object v0, v9

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->replace(Landroid/content/ContentValues;)J

    .line 1272
    const/4 v9, 0x0

    goto/16 :goto_b

    .end local v47           #labelsString:Ljava/lang/String;
    :cond_18
    move-object/from16 v10, v48

    .line 1254
    goto/16 :goto_c

    .line 1262
    .restart local v47       #labelsString:Ljava/lang/String;
    :cond_19
    const/4 v10, 0x0

    goto :goto_d

    .line 1264
    :cond_1a
    const/4 v10, 0x0

    goto :goto_e
.end method

.method private setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 10
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter "labelId"
    .parameter "on"
    .parameter "recordHistory"

    .prologue
    .line 408
    const/4 v9, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 410
    return-void
.end method

.method private setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V
    .locals 20
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter "labelId"
    .parameter "on"
    .parameter "recordHistory"
    .parameter "updateMessageIfNecessary"

    .prologue
    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdUnread()J

    move-result-wide v17

    .line 419
    .local v17, labelIdUnread:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdStarred()J

    move-result-wide v15

    .line 421
    .local v15, labelIdStarred:J
    if-eqz p7, :cond_8

    .line 427
    const-string v14, ""

    .line 428
    .local v14, forceAllUnreadFragment:Ljava/lang/String;
    cmp-long v4, v17, p5

    if-nez v4, :cond_0

    .line 429
    const-string v14, ", forceAllUnread = 1\n"

    .line 431
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mAddConversationLabelIdsStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    if-nez v4, :cond_1

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "UPDATE conversations\nSET labelIds = ?\n  || REPLACE(labelIds, ?, ?)\nWHERE queryId != 0 AND _id = ?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mAddConversationLabelIdsStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "UPDATE conversations\nSET labelIds = ?\n  || REPLACE(labelIds, ?, ?)\n, forceAllUnread = 1\nWHERE queryId != 0 AND _id = ?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mAddConversationLabelIdsForceUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 445
    :cond_1
    cmp-long v4, v17, p5

    if-nez v4, :cond_3

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mAddConversationLabelIdsForceUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v13, v0

    .line 450
    .local v13, commandStmt:Landroid/database/sqlite/SQLiteStatement;
    :goto_0
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 451
    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 452
    const/4 v4, 0x3

    const-string v5, ","

    invoke-virtual {v13, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 453
    const/4 v4, 0x4

    move-object v0, v13

    move v1, v4

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 454
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 457
    cmp-long v4, v15, p5

    if-nez v4, :cond_4

    .line 458
    if-eqz p9, :cond_2

    .line 459
    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v10, p8

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 538
    .end local v14           #forceAllUnreadFragment:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 448
    .end local v13           #commandStmt:Landroid/database/sqlite/SQLiteStatement;
    .restart local v14       #forceAllUnreadFragment:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mAddConversationLabelIdsStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v13, v0

    .restart local v13       #commandStmt:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_0

    .line 466
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mAddLabelToAllMessagesStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    if-nez v4, :cond_5

    .line 467
    const-string v19, "SELECT messageId, ?, ? FROM messages WHERE conversation = ? AND messageId <= ?"

    .line 471
    .local v19, selectStatement:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT or REPLACE into message_labels (message_messageId, labels_id, message_conversation) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mAddLabelToAllMessagesStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 477
    .end local v19           #selectStatement:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mAddLabelToAllMessagesStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v5, 0x1

    move-object v0, v4

    move v1, v5

    move-wide/from16 v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mAddLabelToAllMessagesStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v5, 0x2

    move-object v0, v4

    move v1, v5

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mAddLabelToAllMessagesStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v5, 0x3

    move-object v0, v4

    move v1, v5

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mAddLabelToAllMessagesStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v5, 0x4

    move-object v0, v4

    move v1, v5

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mAddLabelToAllMessagesStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 483
    sget-object v4, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p8

    move-object v1, v4

    if-ne v0, v1, :cond_6

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    move-object v4, v0

    const-string v9, "conversationLabelAdded"

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;J)J

    .line 489
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdInbox()J

    move-result-wide v4

    cmp-long v4, v4, p5

    if-nez v4, :cond_7

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdIgnored()J

    move-result-wide v9

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v12, p8

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    goto/16 :goto_1

    .line 493
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdIgnored()J

    move-result-wide v4

    cmp-long v4, v4, p5

    if-nez v4, :cond_2

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdInbox()J

    move-result-wide v9

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v12, p8

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    goto/16 :goto_1

    .line 499
    .end local v13           #commandStmt:Landroid/database/sqlite/SQLiteStatement;
    .end local v14           #forceAllUnreadFragment:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageLabelsOnConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    if-nez v4, :cond_9

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "DELETE from message_labels where labels_id = ? AND message_labels.message_conversation = ? AND message_labels.message_messageId <= ?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageLabelsOnConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 505
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageLabelsOnConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v5, 0x1

    move-object v0, v4

    move v1, v5

    move-wide/from16 v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageLabelsOnConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v5, 0x2

    move-object v0, v4

    move v1, v5

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageLabelsOnConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v5, 0x3

    move-object v0, v4

    move v1, v5

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageLabelsOnConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 510
    sget-object v4, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p8

    move-object v1, v4

    if-ne v0, v1, :cond_a

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    move-object v4, v0

    const-string v9, "conversationLabelRemoved"

    move-wide/from16 v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v10, p5

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;J)J

    .line 516
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mUpdateConversationLabelIdsStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    if-nez v4, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "UPDATE conversations\nSET labelIds = REPLACE(labelIds, ?, ?)\nWHERE queryId != 0 AND _id = ?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mUpdateConversationLabelIdsStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v5, "UPDATE conversations\nSET labelIds = REPLACE(labelIds, ?, ?), forceAllUnread = 0\nWHERE queryId != 0 AND _id = ?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mUpdateConversationLabelIdsForceUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 528
    :cond_b
    cmp-long v4, v17, p5

    if-nez v4, :cond_c

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mUpdateConversationLabelIdsForceUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v13, v0

    .line 533
    .restart local v13       #commandStmt:Landroid/database/sqlite/SQLiteStatement;
    :goto_2
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 534
    const/4 v4, 0x2

    const-string v5, ","

    invoke-virtual {v13, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 535
    const/4 v4, 0x3

    move-object v0, v13

    move v1, v4

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 536
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_1

    .line 531
    .end local v13           #commandStmt:Landroid/database/sqlite/SQLiteStatement;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mUpdateConversationLabelIdsStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v13, v0

    .restart local v13       #commandStmt:Landroid/database/sqlite/SQLiteStatement;
    goto :goto_2
.end method

.method private setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 8
    .parameter "messageId"
    .parameter "labelId"
    .parameter "on"
    .parameter "recordHistory"

    .prologue
    .line 266
    const/4 v7, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 268
    return-void
.end method

.method private setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V
    .locals 20
    .parameter "messageId"
    .parameter "labelId"
    .parameter "on"
    .parameter "recordHistory"
    .parameter "updateConversationIfNecessary"

    .prologue
    .line 273
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gm/provider/MailCore;->queryConversationIdForMessageId(J)J

    move-result-wide v5

    .line 275
    .local v5, conversationId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdStarred()J

    move-result-wide v17

    .line 277
    .local v17, labelIdStarred:J
    if-eqz p5, :cond_4

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mSetLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    if-nez v4, :cond_0

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v7, "INSERT OR REPLACE INTO message_labels (labels_id, message_messageId, message_conversation) VALUES (?, ?, ?)"

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mSetLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 286
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mSetLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v7, 0x1

    move-object v0, v4

    move v1, v7

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mSetLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v7, 0x2

    move-object v0, v4

    move v1, v7

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mSetLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v7, 0x3

    invoke-virtual {v4, v7, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mSetLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 291
    sget-object v4, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p6

    move-object v1, v4

    if-ne v0, v1, :cond_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    move-object v4, v0

    const-string v9, "messageLabelAdded"

    move-wide/from16 v7, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;J)J

    .line 312
    :cond_1
    :goto_0
    cmp-long v4, v17, p3

    if-nez v4, :cond_3

    if-eqz p7, :cond_3

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mConversationMaxMessageIdStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    if-nez v4, :cond_2

    .line 315
    const-string v19, "SELECT maxMessageId FROM conversations WHERE _id = ? AND queryId = 0 \nLIMIT 1"

    .line 318
    .local v19, selectStatement:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mConversationMaxMessageIdStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 322
    .end local v19           #selectStatement:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mConversationMaxMessageIdStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 324
    const-wide/16 v7, 0x0

    .line 327
    .local v7, maxMessageId:J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mConversationMaxMessageIdStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 335
    if-eqz p5, :cond_6

    .line 337
    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    .line 360
    .end local v7           #maxMessageId:J
    :cond_3
    :goto_1
    return-void

    .line 296
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    if-nez v4, :cond_5

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v7, "DELETE FROM message_labels WHERE labels_id = ?\nAND message_messageId = ?"

    invoke-virtual {v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mDeleteLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 301
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v7, 0x1

    move-object v0, v4

    move v1, v7

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v7, 0x2

    move-object v0, v4

    move v1, v7

    move-wide/from16 v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDeleteLabelOnMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 305
    sget-object v4, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v0, p6

    move-object v1, v4

    if-ne v0, v1, :cond_1

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    move-object v4, v0

    const-string v9, "messageLabelRemoved"

    move-wide/from16 v7, p1

    move-wide/from16 v10, p3

    invoke-virtual/range {v4 .. v11}, Lcom/google/android/gm/provider/Operations;->recordOperationWithLabelId(JJLjava/lang/String;J)J

    goto/16 :goto_0

    .line 328
    .restart local v7       #maxMessageId:J
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    .line 332
    .local v16, e:Landroid/database/sqlite/SQLiteDoneException;
    goto :goto_1

    .line 341
    .end local v16           #e:Landroid/database/sqlite/SQLiteDoneException;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mCountMessageLabelInConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    if-nez v4, :cond_7

    .line 342
    const-string v19, "SELECT COUNT(*) from message_labels \nWHERE labels_id = ? AND message_conversation = ?"

    .line 345
    .restart local v19       #selectStatement:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/MailCore;->mCountMessageLabelInConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 349
    .end local v19           #selectStatement:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mCountMessageLabelInConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v9, 0x1

    move-object v0, v4

    move v1, v9

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mCountMessageLabelInConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    const/4 v9, 0x2

    invoke-virtual {v4, v9, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mCountMessageLabelInConversationStmt:Landroid/database/sqlite/SQLiteStatement;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v14

    .line 353
    .local v14, countMessage:J
    const-wide/16 v9, 0x0

    cmp-long v4, v14, v9

    if-nez v4, :cond_3

    .line 355
    const/4 v13, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v9, p3

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    goto/16 :goto_1
.end method

.method private updateLabelCounts(Lcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1389
    const/4 v1, 0x0

    .line 1390
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdUnread()J

    move-result-wide v2

    .line 1391
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eq v0, v4, :cond_1

    .line 1393
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1394
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1396
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1397
    invoke-interface {p5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1401
    :cond_1
    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Long;

    invoke-virtual {p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1402
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    iget-boolean v6, p6, Lcom/google/android/gm/provider/MailCore$LabelRecord;->isZombie:Z

    .line 1403
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    iget-boolean v7, p6, Lcom/google/android/gm/provider/MailCore$LabelRecord;->isZombie:Z

    .line 1410
    if-nez v6, :cond_3

    if-eqz v7, :cond_3

    .line 1411
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {p4, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1413
    :cond_3
    if-eqz v6, :cond_2

    if-nez v7, :cond_2

    .line 1414
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1417
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1418
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 1419
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    .line 1421
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_5

    .line 1424
    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    if-eq p1, v6, :cond_6

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1431
    :cond_6
    invoke-interface {p2, p4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    iget-boolean v6, p6, Lcom/google/android/gm/provider/MailCore$LabelRecord;->isZombie:Z

    if-nez v6, :cond_5

    .line 1436
    :cond_7
    if-eqz v4, :cond_a

    .line 1437
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateOldUnreadLabelsCountStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_8

    .line 1438
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "UPDATE labels SET\n  numConversations = max(numConversations - 1, 0),\n  numUnreadConversations =     max(numUnreadConversations - 1, 0)\nWHERE _id = ?"

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateOldUnreadLabelsCountStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 1445
    :cond_8
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateOldUnreadLabelsCountStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1446
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateOldUnreadLabelsCountStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1448
    const-string v1, "Gmail"

    const/4 v6, 0x2

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1449
    const-string v1, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConversationChanged decreased total and unread, label "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :cond_9
    :goto_4
    const/4 v1, 0x1

    .line 1468
    invoke-interface {v0, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1453
    :cond_a
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateLabelsCountStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_b

    .line 1454
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "UPDATE labels SET\n  numConversations = max(numConversations - 1, 0)\nWHERE _id = ?"

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateLabelsCountStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 1459
    :cond_b
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateLabelsCountStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1460
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateLabelsCountStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1462
    const-string v1, "Gmail"

    const/4 v6, 0x2

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1463
    const-string v1, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConversationChanged decreased total, label "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1470
    :cond_c
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    .line 1471
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 1473
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-eqz v6, :cond_d

    .line 1477
    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    if-eq p1, v6, :cond_e

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1481
    :cond_e
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gm/provider/MailCore$LabelRecord;

    iget-boolean v6, p4, Lcom/google/android/gm/provider/MailCore$LabelRecord;->isZombie:Z

    if-nez v6, :cond_d

    .line 1483
    if-eqz v4, :cond_11

    .line 1484
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateAddedLabelsUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_f

    .line 1485
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "UPDATE labels SET\n  numConversations = numConversations + 1,\n  numUnreadConversations = numUnreadConversations + 1\nWHERE _id = ?"

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateAddedLabelsUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 1491
    :cond_f
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateAddedLabelsUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1492
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateAddedLabelsUnreadStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1494
    const-string v1, "Gmail"

    const/4 v6, 0x2

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1495
    const-string v1, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConversationChanged increased total and unread, label "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_10
    :goto_6
    const/4 v1, 0x1

    .line 1514
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1499
    :cond_11
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateAddedLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_12

    .line 1500
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "UPDATE labels SET\n  numConversations = numConversations + 1\nWHERE _id = ?"

    invoke-virtual {v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateAddedLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 1505
    :cond_12
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateAddedLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1506
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateAddedLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1508
    const-string v1, "Gmail"

    const/4 v6, 0x2

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1509
    const-string v1, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConversationChanged increased total, label "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1516
    :cond_13
    if-eqz v1, :cond_14

    .line 1519
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$LabelMap;->requery()V

    .line 1522
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mListener:Lcom/google/android/gm/provider/MailCore$Listener;

    invoke-interface {v1, v0}, Lcom/google/android/gm/provider/MailCore$Listener;->onLabelsUpdated(Ljava/util/Set;)V

    .line 1524
    :cond_14
    return-void
.end method

.method private updateLabelInfo(JLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;JLjava/util/Set;)V
    .locals 12
    .parameter "conversationId"
    .parameter "rationale"
    .parameter
    .parameter
    .parameter "maxMessageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1032
    .local p4, oldConversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    .local p5, conversationLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    .local p8, newMessageLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 1033
    .local v8, removedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v9

    .line 1034
    .local v9, addedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 1036
    .local v10, keptLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1, v8, v9, v10}, Lcom/google/android/gm/provider/MailCore;->calculateSetIntersectionAndDifferences(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1039
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1040
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConversationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removedLabels ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), addedLabels ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), keptLabels ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_0
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p6

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move-object v11, p3

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gm/provider/MailCore;->updateLabels(JJLjava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 1054
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1055
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConversationChanged after updateLabels "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removedLabels ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), addedLabels ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), keptLabels ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v4, p0

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1060
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gm/provider/MailCore;->updateLabelCounts(Lcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/Map;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1066
    const/4 v8, 0x0

    .line 1067
    const/4 v9, 0x0

    .line 1068
    return-void
.end method

.method private updateLabels(JJLjava/util/Set;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mNotificationRequests:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/android/gm/provider/MailCore$NotificationRequest;

    move-object v15, v0

    .line 1319
    invoke-virtual {v15}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->getTagLabelId()J

    move-result-wide v4

    .line 1320
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->conversationMatches(Ljava/util/Set;)Z

    move-result v13

    .line 1321
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p6

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    .line 1323
    if-eq v13, v3, :cond_0

    .line 1325
    move-object v0, v15

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->conversationMatches(Ljava/util/Set;)Z

    move-result v3

    .line 1326
    if-eqz v13, :cond_2

    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object/from16 v0, p11

    move-object v1, v6

    if-eq v0, v1, :cond_2

    .line 1329
    if-eqz v3, :cond_1

    if-eqz p7, :cond_2

    move-object v0, v15

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->conversationMatches(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1332
    :cond_1
    sget-object v12, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v3, p0

    move-wide/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gm/provider/MailCore;->updateLabelsAddLabel(JJLjava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailCore;->mListener:Lcom/google/android/gm/provider/MailCore$Listener;

    move-object v3, v0

    invoke-interface {v3, v15}, Lcom/google/android/gm/provider/MailCore$Listener;->onConversationNewlyMatchesNotificationRequest(Lcom/google/android/gm/provider/MailCore$NotificationRequest;)V

    .line 1336
    const-string v3, "Gmail"

    const/4 v6, 0x2

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1337
    const-string v3, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConversationChanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removed tag label "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for label "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->getLabelId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    :cond_2
    if-nez v13, :cond_0

    .line 1344
    sget-object v14, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-object/from16 v3, p0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gm/provider/MailCore;->updateLabelsRemoveLabel(JJJLjava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 1347
    const-string v3, "Gmail"

    const/4 v6, 0x2

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1348
    const-string v3, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onConversationChanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " added tag label "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for label "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;->getLabelId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1354
    :cond_3
    return-void
.end method

.method private updateLabelsAddLabel(JJLjava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 6
    .parameter "labelId"
    .parameter "maxMessageId"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "recordHistory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/Operations$RecordHistory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1360
    .local p5, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    .local p6, removedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p7, addedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p8, keptLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, p0

    move-wide v1, p3

    move-object v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 1363
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailCore;->DUMMY_LABEL_RECORD:Lcom/google/android/gm/provider/MailCore$LabelRecord;

    invoke-interface {p5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1365
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1366
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1367
    return-void
.end method

.method private updateLabelsRemoveLabel(JJJLjava/util/Map;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Lcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 10
    .parameter "labelId"
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "recordHistory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/provider/MailCore$LabelRecord;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/android/gm/provider/Operations$RecordHistory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p7, labels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailCore$LabelRecord;>;"
    .local p8, removedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p9, addedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p10, keptLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v7

    const/4 v8, 0x0

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v9, p11

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 1376
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p7

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p8

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1378
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p9

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1379
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p10

    move-object v1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1380
    return-void
.end method


# virtual methods
.method public deleteLabel(Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 4
    .parameter

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1836
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-wide v2, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1839
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "message_labels"

    const-string v3, "labels_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1840
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1841
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversation_labels"

    const-string v3, "labels_id = ?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1842
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    iget-wide v1, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/Operations;->deleteOperationsForLabelId(J)V

    .line 1843
    return-void
.end method

.method public expungeMessagesWithoutWritingOperations(JLjava/util/List;)V
    .locals 4
    .parameter "conversationId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    .line 237
    const-string v1, ", "

    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, joinedMessageIds:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM message_labels WHERE message_messageId IN (?)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 245
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v1, p3}, Lcom/google/android/gm/provider/Operations;->deleteOperationsForMessageIds(Ljava/util/List;)V

    .line 247
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM messages WHERE messageId IN (?)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v3, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDeleteMessageStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 257
    return-void
.end method

.method public declared-synchronized getAllLabels()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1618
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInfoOverloadEnabled()Z
    .locals 2

    .prologue
    .line 2022
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    const-string v1, "sx_ioe"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2024
    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;
    .locals 1
    .parameter "label"

    .prologue
    .line 1627
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1628
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gm/provider/MailCore$Label;->canonicalName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLabelCanonicalNameOrThrow(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1622
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null label"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1623
    :cond_0
    iget-object v0, p1, Lcom/google/android/gm/provider/MailCore$Label;->canonicalName:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    return-object v0
.end method

.method public declared-synchronized getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 2
    .parameter "labelId"

    .prologue
    .line 1559
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mIdToLabel:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailCore$Label;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 1
    .parameter "canonicalName"

    .prologue
    .line 1555
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailCore$Label;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 3
    .parameter

    .prologue
    .line 1612
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mIdToLabel:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailCore$Label;

    .line 1613
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown label id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1612
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1614
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 3
    .parameter

    .prologue
    .line 1563
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailCore$Label;

    .line 1564
    if-nez v0, :cond_0

    .line 1565
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find label with canonical name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1568
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method public getNotificationRequests()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/MailCore$NotificationRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mNotificationRequests:Ljava/util/List;

    return-object v0
.end method

.method public getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 3
    .parameter "labelId"

    .prologue
    .line 1596
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 1597
    .local v0, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-nez v0, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1600
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->addLabel(J)V

    .line 1601
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1602
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V

    .line 1603
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1605
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1608
    :cond_0
    return-object v0

    .line 1605
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public getOrAddLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 3
    .parameter "canonicalName"

    .prologue
    .line 1576
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 1577
    .local v0, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-nez v0, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1580
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailCore;->addLabel(Ljava/lang/String;)V

    .line 1581
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1582
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V

    .line 1583
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1585
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1588
    :cond_0
    return-object v0

    .line 1585
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
    .locals 6
    .parameter "conversationId"
    .parameter "rationale"

    .prologue
    const/4 v4, 0x0

    .line 605
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 607
    return-void
.end method

.method onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V
    .locals 11
    .parameter "conversationId"
    .parameter "rationale"
    .parameter "updateSynced"
    .parameter "messageLabelChange"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_0
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateConversationTables: conversationId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "conversation_labels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "queryId"

    aput-object v4, v2, v3

    const-string v3, "conversation_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "queryId"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 633
    .local v8, conversationQueryCursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 635
    .local v10, queryIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 636
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 637
    .local v3, queryId:J
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 640
    .end local v3           #queryId:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 643
    if-eqz p4, :cond_3

    .line 646
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 649
    :cond_3
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local p4
    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .restart local v3       #queryId:J
    move-object v0, p0

    move-wide v1, p1

    move-object v5, p3

    move/from16 v6, p5

    .line 650
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JJLcom/google/android/gm/provider/MailSync$SyncRationale;Z)V

    goto :goto_1

    .line 652
    .end local v3           #queryId:J
    :cond_4
    return-void
.end method

.method public declared-synchronized onLabelsChanged()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x1

    .line 2028
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2030
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mIdToLabel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2031
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2032
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->requery()V

    .line 2034
    const-wide/16 v0, 0x0

    .line 2035
    const-wide/16 v2, -0x1

    .line 2037
    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getQueryMap()Landroid/content/ContentQueryMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentQueryMap;->getRows()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v5, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2038
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 2039
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v1, "canonicalName"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2040
    new-instance v1, Lcom/google/android/gm/provider/MailCore$Label;

    invoke-direct {v1, v7, v8, v0}, Lcom/google/android/gm/provider/MailCore$Label;-><init>(JLjava/lang/String;)V

    .line 2041
    invoke-static {v7, v8}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v9

    invoke-static {v0}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v10

    if-eq v9, v10, :cond_1

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gm/provider/Gmail;->LOCAL_PRIORITY_LABELS:Lcom/google/common/collect/BiMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v9}, Lcom/google/common/collect/BiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2044
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not clear whether label is local: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2046
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mIdToLabel:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mCanonicalNameToLabel:Ljava/util/Map;

    iget-object v9, v1, Lcom/google/android/gm/provider/MailCore$Label;->canonicalName:Ljava/lang/String;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2048
    cmp-long v0, v7, v5

    if-lez v0, :cond_2

    iget-wide v5, v1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    .line 2049
    :cond_2
    invoke-static {v7, v8}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v0

    if-eqz v0, :cond_4

    cmp-long v0, v7, v2

    if-gez v0, :cond_4

    .line 2050
    iget-wide v0, v1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    :goto_1
    move-wide v2, v0

    .line 2052
    goto/16 :goto_0

    .line 2054
    :cond_3
    add-long v0, v5, v11

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailCore;->mNextServerLabelId:J

    .line 2055
    sub-long v0, v2, v11

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailCore;->mNextLocalLabelId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2056
    monitor-exit p0

    return-void

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method public purgeConversation(J)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1284
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 1285
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mPurgeConversationConversationLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 1286
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM conversation_labels WHERE conversation_id = ? AND queryId = 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mPurgeConversationConversationLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 1288
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM conversations WHERE _id = ? AND queryId = 0"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mPurgeConversationConversationsStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 1290
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DELETE FROM message_labels WHERE message_conversation = ?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mPurgeConversationMessageLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 1293
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mPurgeConversationConversationLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1294
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mPurgeConversationConversationLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1296
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mPurgeConversationConversationsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1297
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mPurgeConversationConversationsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1299
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mPurgeConversationMessageLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1300
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mPurgeConversationMessageLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1302
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    const-string v3, "conversation = ? AND synced = 1"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1303
    const-string v1, "Gmail"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1304
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Purged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " messages in conversation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_1
    if-eqz v0, :cond_2

    move v0, v4

    :goto_0
    return v0

    :cond_2
    move v0, v5

    goto :goto_0
.end method

.method public queryConversationIdForMessageId(J)J
    .locals 4
    .parameter "messageId"

    .prologue
    .line 542
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 543
    .local v0, bindArgs:[Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select conversation from messages where messageId = ?"

    invoke-static {v2, v3, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 547
    .end local v0           #bindArgs:[Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 545
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 547
    .local v1, e:Landroid/database/SQLException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public removeCustomFromPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1940
    const-string v0, "/customfrom/"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1941
    invoke-static {p1, v0}, Lcom/google/android/gm/utils/CustomFromUtils;->removeCustomFrom(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1950
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "custom_from_prefs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1953
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1955
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1957
    return-void

    .line 1955
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public renameLabel(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1818
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1819
    const-string v1, "canonicalName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    const-string v1, "color"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1822
    const-string v1, "visibility"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    invoke-direct {p0, p2, v0}, Lcom/google/android/gm/provider/MailCore;->adjustContentValuesForSystemLabel(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1826
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1827
    return-void
.end method

.method public setConfig([Lcom/google/android/gm/provider/MailCore$Label;[Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 7
    .parameter "labelsIncluded"
    .parameter "labelsPartial"

    .prologue
    .line 222
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mLabelIdsIncludedOrPartial:Ljava/util/Map;

    .line 223
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/gm/provider/MailCore$Label;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 224
    .local v2, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-eqz v2, :cond_0

    .line 225
    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mLabelIdsIncludedOrPartial:Ljava/util/Map;

    iget-wide v5, v2, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v2           #label:Lcom/google/android/gm/provider/MailCore$Label;
    :cond_1
    move-object v0, p2

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 229
    .restart local v2       #label:Lcom/google/android/gm/provider/MailCore$Label;
    if-eqz v2, :cond_2

    .line 230
    iget-object v4, p0, Lcom/google/android/gm/provider/MailCore;->mLabelIdsIncludedOrPartial:Ljava/util/Map;

    iget-wide v5, v2, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 233
    .end local v2           #label:Lcom/google/android/gm/provider/MailCore$Label;
    :cond_3
    return-void
.end method

.method public setCustomFromPreference(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomFromPreference;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1906
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1908
    if-eqz p3, :cond_0

    .line 1911
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "custom_from_prefs"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1912
    invoke-static {p1}, Lcom/google/android/gm/utils/CustomFromUtils;->clearCustomFrom(Ljava/lang/String;)V

    .line 1917
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1918
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1919
    const-string v4, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    const-string v4, "is_default"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->isDefault:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    const-string v4, "reply_to"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;->replyTo:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    const-string v4, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "custom_from_prefs"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1926
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;

    invoke-static {p1, v0}, Lcom/google/android/gm/utils/CustomFromUtils;->addOrUpdateCustomFrom(Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomFromPreference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1930
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1928
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1930
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1932
    return-void
.end method

.method public setCustomLabelColorPreference(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1872
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1876
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1877
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1878
    sget-object v4, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_COLOR_INDEX:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    sget-object v4, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_TEXT_COLOR:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;->textColor:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1880
    sget-object v4, Lcom/google/android/gm/utils/LabelColorUtils;->CUSTOM_BACKGROUND_COLOR:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;

    iget-object v1, v1, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const-string v4, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1883
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "custom_label_color_prefs"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1888
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;

    invoke-static {p1, v1, v0}, Lcom/google/android/gm/utils/LabelColorUtils;->addOrUpdateCustomLabelColor(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1893
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1891
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1893
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1895
    return-void
.end method

.method public setInfoOverloadEnabledPreference(Ljava/lang/String;)V
    .locals 5
    .parameter "infoOverloadEnabledPref"

    .prologue
    .line 2000
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 2001
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2002
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "enabled_pref"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2005
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "info_overload"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2007
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "info_overload"

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 2011
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mUserGmailPrefs:Ljava/util/Map;

    const-string v2, "sx_ioe"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2014
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2016
    return-void

    .line 2014
    .end local v0           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public setLabelCounts(Lcom/google/android/gm/provider/MailCore$Label;IIILjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1847
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1848
    const-string v1, "numConversations"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1849
    const-string v1, "numUnreadConversations"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1851
    const-string v1, "color"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1852
    const-string v1, "visibility"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1853
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1855
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "labels"

    const-string v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1856
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1857
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1859
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1861
    return-void

    .line 1859
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public setLabelOnConversation(JJLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 9
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter "label"
    .parameter "on"
    .parameter "recordHistory"

    .prologue
    .line 402
    iget-wide v5, p5, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 403
    return-void
.end method

.method public setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V
    .locals 7
    .parameter "messageId"
    .parameter "label"
    .parameter "on"
    .parameter "recordHistory"

    .prologue
    .line 261
    iget-wide v3, p3, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    move-object v0, p0

    move-wide v1, p1

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 262
    return-void
.end method

.method public setLabelsOnMessageWithoutWritingOperations(JLjava/util/Set;)V
    .locals 9
    .parameter "messageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, labelIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    .line 384
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DELETE FROM message_labels WHERE message_messageId = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v5, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 389
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mUpdateLabelsStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 391
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 394
    .local v3, labelId:J
    sget-object v6, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JJZLcom/google/android/gm/provider/Operations$RecordHistory;Z)V

    goto :goto_0

    .line 397
    .end local v3           #labelId:J
    :cond_1
    return-void
.end method

.method public setNotificationRequests(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/MailCore$NotificationRequest;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, notificationRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/MailCore$NotificationRequest;>;"
    iput-object p1, p0, Lcom/google/android/gm/provider/MailCore;->mNotificationRequests:Ljava/util/List;

    .line 215
    return-void
.end method

.method public setServerPreferences(Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1968
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1972
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1973
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1974
    const-string v4, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1975
    const-string v4, "value"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v4, "_id"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "server_preferences"

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v1, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 1980
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/google/android/gm/utils/CustomFromUtils;->REPLY_FROM_DEFAULT_SETTING:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1981
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gm/utils/CustomFromUtils;->setReplyFromDefaultAddress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1986
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1984
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1986
    iget-object v0, p0, Lcom/google/android/gm/provider/MailCore;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1988
    return-void
.end method

.method public setServerVersion(J)V
    .locals 0
    .parameter "serverVersion"

    .prologue
    .line 210
    iput-wide p1, p0, Lcom/google/android/gm/provider/MailCore;->mServerVersion:J

    .line 211
    return-void
.end method
