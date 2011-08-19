.class public final Lcom/google/android/gm/provider/MailEngine;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MailEngine$NormalHttpRequestRunner;,
        Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;,
        Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
        Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;,
        Lcom/google/android/gm/provider/MailEngine$MessageIdPair;,
        Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;,
        Lcom/google/android/gm/provider/MailEngine$ConversationCursor;,
        Lcom/google/android/gm/provider/MailEngine$NetworkCursor;,
        Lcom/google/android/gm/provider/MailEngine$NetworkCursorLogic;,
        Lcom/google/android/gm/provider/MailEngine$PublicMailStore;,
        Lcom/google/android/gm/provider/MailEngine$SyncInfo;,
        Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;,
        Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;,
        Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;,
        Lcom/google/android/gm/provider/MailEngine$Preferences;,
        Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;,
        Lcom/google/android/gm/provider/MailEngine$ClientCreated;
    }
.end annotation


# static fields
.field private static final CLIENT_CREATED_LOCAL_LABELS:[Ljava/lang/String;

.field private static final LABEL_PROJECTION_MAP:Ljava/util/Map;
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

.field private static final MESSAGE_PROJECTION_MAP:Ljava/util/Map;
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

.field private static final PROJECTION_MESSAGE_SYNCED:[Ljava/lang/String;

.field private static final PROJECTION_VALUE:[Ljava/lang/String;

.field private static final PROJECTON_MESSAGE_ID_AND_CONVERSATION_ID:[Ljava/lang/String;

.field private static final STATUS_PROJECTION:[Ljava/lang/String;

.field private static USER_AGENT_STRING:Ljava/lang/String;

.field static sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

.field private static sMailEngineCreationHandler:Landroid/os/Handler;

.field private static sMailEngines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;",
            ">;"
        }
    .end annotation
.end field

.field static sNextQueryId:J

.field private static sTestingHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

.field private static sTestingPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mAttachmentManager:Lcom/google/android/gm/provider/AttachmentManager;

.field private final mBackgroundTaskHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private final mConversationCursorForQueryLock:Ljava/lang/Object;

.field private mConversationLabelsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mConversationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mConversationsToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mCookieStore:Lorg/apache/http/client/CookieStore;

.field mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile mFakeIoException:Z

.field private mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

.field private mHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

.field private mInitCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/os/Handler;",
            "Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInitializationComplete:Z

.field private mInitializationLock:Ljava/lang/Object;

.field mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile mIsSyncCancelled:Z

.field private volatile mIsSyncInProgress:Z

.field private mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

.field private mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

.field private mLastQuery:Ljava/lang/String;

.field private mLastSyncLoopCheckTime:J

.field mMailCore:Lcom/google/android/gm/provider/MailCore;

.field mMailStore:Lcom/google/android/gm/provider/MailStore;

.field mMailSync:Lcom/google/android/gm/provider/MailSync;

.field private mMessagesInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mMessagesToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private final mNotificationLabels:Ljava/util/Map;
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

.field private mNotificationsRequestsRegistered:Z

.field mOperations:Lcom/google/android/gm/provider/Operations;

.field private final mPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

.field mProviderChangedBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSelectMaxMessageIdStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mSelectSyncRationaleStmt:Landroid/database/sqlite/SQLiteStatement;

.field private mSendWithoutSyncConversationsToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

.field private mStatus:Ljava/util/BitSet;

.field private mSyncCountPerPeriod:I

.field private final mSyncLock:Ljava/lang/Object;

.field private mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

.field private mUrls:Lcom/google/android/gm/provider/Urls;

.field private mValidateSyncSets:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "messageId"

    aput-object v1, v0, v3

    const-string v1, "conversation"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->PROJECTON_MESSAGE_ID_AND_CONVERSATION_ID:[Ljava/lang/String;

    .line 231
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->PROJECTION_VALUE:[Ljava/lang/String;

    .line 232
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "synced"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->PROJECTION_MESSAGE_SYNCED:[Ljava/lang/String;

    .line 249
    sput-object v5, Lcom/google/android/gm/provider/MailEngine;->USER_AGENT_STRING:Ljava/lang/String;

    .line 267
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "^^cached"

    aput-object v1, v0, v3

    const-string v1, "^^out"

    aput-object v1, v0, v4

    const-string v1, "^imi"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "^imn"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "^im"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "^io_ns"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "^^important"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "^^unimportant"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->CLIENT_CREATED_LOCAL_LABELS:[Ljava/lang/String;

    .line 277
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "status"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->STATUS_PROJECTION:[Ljava/lang/String;

    .line 379
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    .line 383
    sput-object v5, Lcom/google/android/gm/provider/MailEngine;->sMailEngineCreationHandler:Landroid/os/Handler;

    .line 388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 389
    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_PROJECTION_MAP:Ljava/util/Map;

    .line 390
    const-string v1, "_id"

    const-string v2, "messages._id"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "messageId"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 392
    const-string v1, "conversation"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 393
    const-string v1, "refMessageId"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 394
    const-string v1, "fromAddress"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 395
    const-string v1, "toAddresses"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 396
    const-string v1, "ccAddresses"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 397
    const-string v1, "bccAddresses"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 398
    const-string v1, "replyToAddresses"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 399
    const-string v1, "dateSentMs"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 400
    const-string v1, "dateReceivedMs"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 401
    const-string v1, "subject"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 402
    const-string v1, "snippet"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 403
    const-string v1, "listInfo"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 404
    const-string v1, "personalLevel"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 405
    const-string v1, "body"

    const-string v2, "CASE WHEN bodyCompressed IS NULL THEN \'0\' || body ELSE \'1\' || bodyCompressed END"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, "bodyEmbedsExternalResources"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 408
    const-string v1, "labelIds"

    const-string v2, "group_concat(labels_id, \' \')"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v1, "joinedAttachmentInfos"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 410
    const-string v1, "error"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 411
    const-string v1, "forward"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 412
    const-string v1, "includeQuotedText"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 413
    const-string v1, "quoteStartPos"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 414
    const-string v1, "clientCreated"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 415
    const-string v1, "synced"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 416
    const-string v1, "customFromAddress"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 419
    const-string v1, "labelCount"

    const-string v2, "COUNT(*)"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "messageLabels"

    const-string v2, "group_concat((labels._id || \'^*^\' || labels.canonicalName || \'^*^\' || (CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    ELSE labels.name END)  || \'^*^\' || labels.color || \'^*^\' || labels.hidden), \'^**^\')"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v1, "isStarred"

    const-string v2, "SUM(CASE labels.canonicalName WHEN \'^t\' THEN 1 ELSE 0 END)"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v1, "isDraft"

    const-string v2, "SUM(CASE labels.canonicalName WHEN \'^r\' THEN 1 ELSE 0 END)"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v1, "isInOutbox"

    const-string v2, "SUM(CASE labels.canonicalName WHEN \'^^out\' THEN 1 ELSE 0 END)"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v1, "isUnread"

    const-string v2, "SUM(CASE labels.canonicalName WHEN \'^u\' THEN 1 ELSE 0 END)"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 446
    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->LABEL_PROJECTION_MAP:Ljava/util/Map;

    .line 447
    const-string v1, "_id"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 448
    const-string v1, "canonicalName"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 450
    const-string v1, "name"

    const-string v2, "(CASE labels.canonicalName    WHEN \'^f\' THEN ?    WHEN \'^^out\' THEN ?    WHEN \'^i\' THEN ?    WHEN \'^r\' THEN ?    WHEN \'^b\' THEN ?    WHEN \'^all\' THEN ?    WHEN \'^u\' THEN ?    WHEN \'^k\' THEN ?    WHEN \'^s\' THEN ?    WHEN \'^t\' THEN ?    WHEN \'^g\' THEN ?    WHEN \'^io_im\' THEN ?    WHEN \'^iim\' THEN ?    ELSE labels.name END) "

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v1, "numConversations"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 452
    const-string v1, "numUnreadConversations"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 453
    const-string v1, "color"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 454
    const-string v1, "systemLabel"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 455
    const-string v1, "hidden"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 456
    const-string v1, "labelCountDisplayBehavior"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 457
    const-string v1, "labelSyncPolicy"

    invoke-static {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 458
    const-string v1, "sortOrder"

    const-string v2, "CASE labels.systemLabel WHEN 0 THEN labels.canonicalName ELSE labels.systemLabelOrder END"

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    .line 5339
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/google/android/gm/provider/MailEngine;->sNextQueryId:J

    .line 5340
    sput-object v5, Lcom/google/android/gm/provider/MailEngine;->sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine;->mValidateSyncSets:Z

    .line 302
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mStatus:Ljava/util/BitSet;

    .line 316
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    .line 322
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 332
    iput-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationComplete:Z

    .line 342
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationLock:Ljava/lang/Object;

    .line 353
    iput v3, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    .line 358
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLastSyncLoopCheckTime:J

    .line 363
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncLock:Ljava/lang/Object;

    .line 381
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mProviderChangedBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 682
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMessagesToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 683
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMessagesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 684
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 685
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationsToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 686
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mSendWithoutSyncConversationsToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 687
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationLabelsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 852
    iput-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationsRequestsRegistered:Z

    .line 982
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    .line 2433
    iput-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine;->mFakeIoException:Z

    .line 2500
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationCursorForQueryLock:Ljava/lang/Object;

    .line 2501
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mLastQuery:Ljava/lang/String;

    .line 2502
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    .line 695
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Background tasks"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 697
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 699
    const-string v1, "ME.constructor"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 701
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundTaskHandler:Landroid/os/Handler;

    .line 704
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    .line 705
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    .line 706
    new-instance v0, Lcom/google/android/gm/provider/Urls;

    invoke-direct {v0, p2}, Lcom/google/android/gm/provider/Urls;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mUrls:Lcom/google/android/gm/provider/Urls;

    .line 707
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gm/provider/MailEngine;->getInternalDbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->openInternalDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gm/provider/MailEngine;->getDbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->openDatabase(Landroid/content/Context;Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->initialize()V

    .line 712
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 717
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mCookieStore:Lorg/apache/http/client/CookieStore;

    .line 719
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sTestingHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    if-nez v0, :cond_3

    .line 720
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$NormalHttpRequestRunner;

    invoke-direct {v0}, Lcom/google/android/gm/provider/MailEngine$NormalHttpRequestRunner;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    .line 725
    :goto_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sTestingPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

    if-nez v0, :cond_4

    .line 727
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/Persistence;->getMailEnginePreferences(Landroid/content/Context;)Lcom/google/android/gm/Persistence$MailEnginePreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 738
    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->enqueueFinalInitializationTask(Landroid/content/Context;)V

    .line 739
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->enqueueCleanupTempFilesTask(Landroid/content/Context;)V

    .line 743
    new-instance v0, Lcom/google/android/gm/provider/AttachmentManager;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/AttachmentManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/Urls;Lcom/google/android/gm/provider/AttachmentManager$RestrictedMailEngine;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAttachmentManager:Lcom/google/android/gm/provider/AttachmentManager;

    .line 744
    return-void

    .line 714
    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 733
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v1}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 735
    :cond_2
    throw v0

    .line 722
    :cond_3
    :try_start_4
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sTestingHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    goto :goto_0

    .line 729
    :cond_4
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sTestingPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->onLabelsPossiblyLoaded()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSelectSyncRationaleStmt:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/gm/provider/MailEngine;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mSelectSyncRationaleStmt:Landroid/database/sqlite/SQLiteStatement;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/gm/provider/MailEngine;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->wipeAndResync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->updateMailCoreConfig()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/gm/provider/MailEngine;Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->getMessageFromCursor(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/AttachmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAttachmentManager:Lcom/google/android/gm/provider/AttachmentManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSendWithoutSyncConversationsToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationsToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMessagesToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteStatement;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSelectMaxMessageIdStmt:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/gm/provider/MailEngine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/gm/provider/MailEngine;Landroid/database/sqlite/SQLiteStatement;)Landroid/database/sqlite/SQLiteStatement;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mSelectMaxMessageIdStmt:Landroid/database/sqlite/SQLiteStatement;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/MailEngine$Preferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/gm/provider/MailSync$Message;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/google/android/gm/provider/MailEngine;->joinedAttachmentsString(Lcom/google/android/gm/provider/MailSync$Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->cleanupAttachments(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMessagesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->cancelSyncForLiveRequest()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/android/gm/provider/MailEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gm/provider/MailEngine;->runSyncLoop(Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->calculateUnknownSyncRationalesAndPurgeInBackground()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/android/gm/provider/MailEngine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/android/gm/provider/MailEngine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLastQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mLastQuery:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    return-object p1
.end method

.method static synthetic access$3400(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/google/android/gm/provider/MailEngine;->labelNameFromQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/content/Context;Lcom/google/android/gm/provider/MailCore$Label;JJ)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-static/range {p0 .. p5}, Lcom/google/android/gm/provider/MailEngine;->getConversationQueryArgs(Landroid/content/Context;Lcom/google/android/gm/provider/MailCore$Label;JJ)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/DatabaseUtils$InsertHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationLabelsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/google/android/gm/provider/MailEngine;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    return-void
.end method

.method static synthetic access$3900(Lcom/google/android/gm/provider/MailEngine;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->runHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->clearNewUnreadMailForNotificationLabelIfNeeded(Lcom/google/android/gm/provider/MailCore$Label;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/google/android/gm/provider/MailEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->purgeSomeStaleMessagesInTransaction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getCursorForCustomLabelColors()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getCursorForCustomFrom()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getCursorForReplyFromDefaultAddress()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->notifyInitializationComplete()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/gm/provider/MailEngine;)Lcom/google/android/gm/provider/Gmail$LabelMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    return-object v0
.end method

.method private addLabelIdToNotificationMap(J)V
    .locals 3
    .parameter "labelId"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    return-void
.end method

.method private addNotificationLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 4
    .parameter "canonicalName"

    .prologue
    .line 1045
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 1046
    .local v0, label:Lcom/google/android/gm/provider/MailCore$Label;
    iget-wide v2, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->addLabelIdToNotificationMap(J)V

    .line 1047
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabelCanonicalName(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, notificationTagLabelCanonicalName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/provider/MailCore;->getOrAddLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v2

    return-object v2
.end method

.method private static addToProjectionMap(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3739
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3740
    return-void
.end method

.method private static addToProjectionMap(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3752
    return-void
.end method

.method private static addressStringsListContainsEmailAddress(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 3627
    .local p0, addressStrings:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3628
    .local v0, addressString:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->getEmailFromAddressString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3629
    const/4 v2, 0x1

    .line 3632
    .end local v0           #addressString:Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static varargs argListWithLabelNames(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2642
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2643
    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0d0108

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0d0109

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x7f0d010a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const v3, 0x7f0d010b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const v3, 0x7f0d010c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const v3, 0x7f0d010d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const v3, 0x7f0d010e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const v3, 0x7f0d010f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const v3, 0x7f0d0110

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const v3, 0x7f0d0111

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const v3, 0x7f0d0112

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const v3, 0x7f0d0113

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const v3, 0x7f0d0114

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2657
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2658
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private bootstrapDatabase()V
    .locals 3

    .prologue
    .line 1285
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bootstrapping db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Current version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS sync_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE sync_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1301
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS engine_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE engine_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS messages"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE messages (_id INTEGER PRIMARY KEY,messageId INTEGER,conversation INTEGER,fromAddress TEXT,toAddresses TEXT,ccAddresses TEXT,bccAddresses TEXT,replyToAddresses TEXT,dateSentMs INTEGER,dateReceivedMs INTEGER,subject TEXT,snippet TEXT,listInfo TEXT,personalLevel INTEGER,body TEXT,bodyEmbedsExternalResources INTEGER,joinedAttachmentInfos STRING,synced INTEGER,error TEXT, clientCreated INTEGER, refMessageId INTEGER DEFAULT 0, forward INTEGER DEFAULT 0, includeQuotedText INTEGER DEFAULT 0, quoteStartPos INTEGER DEFAULT 0, bodyCompressed BLOB DEFAULT NULL, customFromAddress TEXT DEFAULT NULL, UNIQUE(messageId))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE attachments (\n  _id INTEGER PRIMARY KEY,\n  messages_conversation INTEGER,\n  messages_messageId INTEGER,\n  messages_partId TEXT,\n  originExtras TEXT,\n  desiredRendition TEXT,  automatic INTEGER,\n  downloadedRendition TEXT,  downloadId INTEGER,\n  status TEXT,\n  saveToSd INTEGER,\n  filename TEXT,\n  priority INTEGER DEFAULT 0,\n  mimeType TEXT DEFAULT NULL, \n  UNIQUE(\n    messages_conversation, messages_messageId,\n    messages_partId, desiredRendition, saveToSd),\n  UNIQUE(messages_messageId, messages_partId, desiredRendition, saveToSd))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1364
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX attachment_downloadid ON attachments (downloadId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE labels ( _id INTEGER PRIMARY KEY, canonicalName TEXT, name TEXT, numConversations TEXT, numUnreadConversations TEXT, color INTEGER DEFAULT 2147483647, systemLabel INTEGER DEFAULT 0, systemLabelOrder INTEGER DEFAULT 0, hidden INTEGER DEFAULT 0, labelCountDisplayBehavior INTEGER DEFAULT 0, labelSyncPolicy INTEGER DEFAULT 0, visibility TEXT)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX labels_index ON labels (_id, canonicalName, numConversations, numUnreadConversations)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1386
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS message_labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE message_labels (_id INTEGER PRIMARY KEY,labels_id INTEGER not null,message_messageId INTEGER not null,message_conversation INTEGER,UNIQUE (labels_id, message_messageId))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX message_labels_index ON message_labels (labels_id, message_messageId, message_conversation)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1397
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX message_labels_conversation ON message_labels (message_conversation, labels_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1400
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS operations"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE operations (_id INTEGER PRIMARY KEY AUTOINCREMENT,action TEXT,message_messageId INTEGER,value1 INTEGER,value2 INTEGER, numAttempts INTEGER DEFAULT 0, nextTimeToAttempt INTEGER DEFAULT 0)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX operations_messageid_action_index ON operations (message_messageId, action)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversations_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1416
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversations_to_fetch (_id INTEGER PRIMARY KEY,nextAttemptDateMs INTEGER DEFAULT 0,numAttempts INTEGER DEFAULT 0)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1421
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS send_without_sync_conversations_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1422
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE send_without_sync_conversations_to_fetch (_id INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1425
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS messages_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE messages_to_fetch (_id INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversation_labels;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1430
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversation_labels (  labels_id TEXT,   queryId INTEGER,   isZombie INTEGER,   sortMessageId INTEGER,   date INTEGER,   conversation_id INTEGER,   UNIQUE(labels_id, queryId, conversation_id));"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversation_labels_index ON conversation_labels (labels_id, sortMessageId, queryId, isZombie, date, conversation_id);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1443
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversationLabels_conversationIndex ON conversation_labels (conversation_id, labels_id)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1445
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversationLabels_queryId ON conversation_labels (queryId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS conversations"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE conversations (_id INTEGER, queryId INTEGER, subject TEXT, snippet TEXT, fromAddress TEXT, personalLevel INTEGER, labelIds TEXT, numMessages INTEGER, maxMessageId INTEGER, hasAttachments INTEGER, hasMessagesWithErrors INTEGER, syncRationale STRING, syncRationaleMessageId INTEGER, forceAllUnread INTEGER, dirty INTEGER DEFAULT 0, UNIQUE(_id, queryId));"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1481
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversations_syncRationale on conversations (syncRationale, syncRationaleMessageId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1483
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX conversations_queryId on conversations (queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX labels_name on labels (canonicalName);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX labels_id on labels (_id);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1487
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX message_labels_message_messageId_labels_id on message_labels (message_messageId, labels_id);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_messageId on messages (messageId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1492
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_synced on messages (synced);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_conversation on messages (conversation, messageId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX messages_joinedAttachmentInfos ON messages (joinedAttachmentInfos);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1497
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_label_color_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_label_color_prefs (\n  _id INTEGER PRIMARY KEY,\n  color_index TEXT,\n  text_color TEXT,\n  background_color TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1503
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_from_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1504
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_from_prefs (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  is_default TEXT,\n  reply_to TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1512
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS server_preferences"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1513
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE server_preferences (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  value TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1519
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS info_overload"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1520
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE info_overload (enabled_pref TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1524
    return-void
.end method

.method private bootstrapInternalDatabase()V
    .locals 3

    .prologue
    .line 1271
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bootstrapping db:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Current version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS internal_sync_settings"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1274
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE internal_sync_settings (_id INTEGER PRIMARY KEY,name TEXT,value TEXT,UNIQUE (name))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1280
    return-void
.end method

.method private broadcastLabelNotifications(Ljava/util/Set;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1057
    .local p1, updatedLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Long;

    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Long;

    .line 1058
    .local v1, labelIds:[Ljava/lang/Long;
    array-length v2, v1

    .line 1059
    .local v2, numLabels:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1060
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aget-object v5, v1, v0

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/Label;->getLabelUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1059
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1063
    :cond_0
    return-void
.end method

.method private cacheAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)Z
    .locals 14
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v13, 0x0

    .line 3553
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 3555
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    .line 3556
    iget v3, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    if-lez v3, :cond_1

    .line 3557
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v3

    iget v5, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    .line 3558
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailEngine;->isLowSpace(JJ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3559
    const-string v0, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Low memory ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Can\'t cache attachment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    .line 3614
    :cond_0
    :goto_0
    return v0

    .line 3568
    :cond_1
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd-kk:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3569
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".attachment"

    invoke-static {v3, v4, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    .line 3570
    :try_start_1
    iget-object v4, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3571
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v4

    .line 3572
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 3573
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 3574
    const/16 v8, 0x400

    new-array v8, v8, [B

    .line 3576
    :cond_2
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    .line 3577
    if-gtz v9, :cond_5

    .line 3585
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 3586
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    .line 3587
    const-string v6, "Gmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cached "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v6

    .line 3590
    invoke-direct {p0, v1, v2, v6, v7}, Lcom/google/android/gm/provider/MailEngine;->isLowSpace(JJ)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3591
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 3592
    const-string v0, "Gmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Low memory ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Can\'t cache attachment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3606
    if-eqz v4, :cond_3

    .line 3607
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 3609
    :cond_3
    if-eqz v5, :cond_4

    .line 3610
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    :goto_1
    move v0, v13

    .line 3614
    goto/16 :goto_0

    .line 3580
    :cond_5
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v5, v8, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3581
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v6

    const-wide/32 v11, 0x36ee80

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    .line 3582
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Timed out reading attachment data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3598
    :catch_0
    move-exception v0

    move-object v1, v3

    move-object v2, v5

    move-object v3, v4

    .line 3599
    :goto_2
    :try_start_6
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to cache attachment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3600
    if-eqz v1, :cond_6

    .line 3601
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 3606
    :cond_6
    if-eqz v3, :cond_7

    .line 3607
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 3609
    :cond_7
    if-eqz v2, :cond_8

    .line 3610
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_8
    :goto_3
    move v0, v13

    .line 3614
    goto/16 :goto_0

    .line 3612
    :catch_1
    move-exception v0

    .line 3613
    const-string v1, "Gmail"

    const-string v2, "Failed to close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3597
    :cond_9
    const/4 v0, 0x1

    .line 3606
    if-eqz v4, :cond_a

    .line 3607
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 3609
    :cond_a
    if-eqz v5, :cond_0

    .line 3610
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 3612
    :catch_2
    move-exception v1

    .line 3613
    const-string v2, "Gmail"

    const-string v3, "Failed to close stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3612
    :catch_3
    move-exception v0

    .line 3613
    const-string v1, "Gmail"

    const-string v2, "Failed to close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 3605
    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    .line 3606
    :goto_4
    if-eqz v2, :cond_b

    .line 3607
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 3609
    :cond_b
    if-eqz v1, :cond_c

    .line 3610
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 3614
    :cond_c
    :goto_5
    throw v0

    .line 3612
    :catch_4
    move-exception v1

    .line 3613
    const-string v2, "Gmail"

    const-string v3, "Failed to close stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 3605
    :catchall_1
    move-exception v0

    move-object v1, v7

    move-object v2, v4

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v5

    move-object v2, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_4

    .line 3598
    :catch_5
    move-exception v0

    move-object v1, v7

    move-object v2, v7

    move-object v3, v7

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v1, v3

    move-object v2, v7

    move-object v3, v7

    goto :goto_2

    :catch_7
    move-exception v0

    move-object v1, v3

    move-object v2, v7

    move-object v3, v4

    goto/16 :goto_2
.end method

.method private calculateUnknownSyncRationalesAndPurgeInBackground()V
    .locals 2

    .prologue
    .line 5870
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5874
    const-string v0, "Gmail"

    const-string v1, "calculateUnknownSyncRationalesAndPurgeInBackground: exiting (labelMap not synced"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5915
    :goto_0
    return-void

    .line 5882
    :cond_0
    const-string v0, "Gmail"

    const-string v1, "calculateUnknownSyncRationalesAndPurgeInBackground: queueing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5883
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$9;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/MailEngine$9;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private callInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V
    .locals 1
    .parameter "handler"
    .parameter "listener"

    .prologue
    .line 826
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$3;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gm/provider/MailEngine$3;-><init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 831
    return-void
.end method

.method private cancelSyncForLiveRequest()V
    .locals 1

    .prologue
    .line 2400
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    if-eqz v0, :cond_0

    .line 2401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    .line 2402
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 2404
    :cond_0
    return-void
.end method

.method private declared-synchronized changeTaskState(IZ)V
    .locals 4
    .parameter "task"
    .parameter "running"

    .prologue
    .line 2180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mStatus:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mStatus:Ljava/util/BitSet;

    invoke-virtual {v0, p1, p2}, Ljava/util/BitSet;->set(IZ)V

    .line 2182
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->getStatusUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2185
    :cond_0
    monitor-exit p0

    return-void

    .line 2180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cleanupAttachments(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 3200
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->parseJoinedAttachmentString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3202
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 3203
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3204
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up cached attachment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3205
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 3208
    :cond_1
    return-void
.end method

.method static clearMailEngines()V
    .locals 5

    .prologue
    .line 662
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    monitor-enter v2

    .line 663
    :try_start_0
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;

    .line 664
    .local v0, engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    iget-object v3, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngineLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 665
    :try_start_1
    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    if-eqz v4, :cond_0

    .line 666
    iget-object v4, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailEngine;->close()V

    .line 668
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4

    .line 671
    .end local v0           #engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    .line 670
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_3
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 671
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 672
    return-void
.end method

.method private clearNewUnreadMailForNotificationLabelIfNeeded(Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 5
    .parameter

    .prologue
    .line 4015
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabel(Lcom/google/android/gm/provider/MailCore$Label;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 4016
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    iget-wide v2, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getNumUnreadConversations(J)I

    move-result v1

    .line 4017
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4018
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearNewUnreadMailForNotificationLabelIfNeeded. Count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", label: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    :cond_0
    if-lez v1, :cond_1

    .line 4022
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->clearNewUnreadMailForNotificationLabel(Lcom/google/android/gm/provider/MailCore$Label;)I

    .line 4024
    :cond_1
    return-void
.end method

.method private enqueueCleanupTempFilesTask(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 955
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/provider/MailEngine$4;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 967
    return-void
.end method

.method private enqueueFinalInitializationTask(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 747
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/provider/MailEngine$2;-><init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 798
    return-void
.end method

.method private static getConversationQueryArgs(Landroid/content/Context;Lcom/google/android/gm/provider/MailCore$Label;JJ)[Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "label"
    .parameter "maxUnsyncedMessageId"
    .parameter "queryId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5327
    if-eqz p1, :cond_0

    .line 5328
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iget-wide v1, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-wide v1, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, 0x2

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->argListWithLabelNames(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 5335
    :goto_0
    return-object v0

    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->argListWithLabelNames(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static declared-synchronized getCreationHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 590
    const-class v1, Lcom/google/android/gm/provider/MailEngine;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngineCreationHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 592
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "MailEngine creation"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 594
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 596
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngineCreationHandler:Landroid/os/Handler;

    .line 598
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngineCreationHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v2

    .line 590
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private getCursorForCustomFrom()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2726
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2727
    const-string v1, "custom_from_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2728
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/android/gm/utils/CustomFromUtils;->REPLY_TO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ASC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getCursorForCustomLabelColors()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2720
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2721
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "custom_label_color_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2722
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method private getCursorForReplyFromDefaultAddress()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2732
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2733
    const-string v1, "server_preferences"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2734
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/android/gm/utils/CustomFromUtils;->REPLY_FROM_DEFAULT_SETTING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static getDbName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailstore."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEngineSettingsCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 2081
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "engine_settings"

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->PROJECTION_VALUE:[Ljava/lang/String;

    const-string v3, "name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getHttpClient()Lcom/google/android/common/http/GoogleHttpClient;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 989
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->USER_AGENT_STRING:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 993
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 995
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 997
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1005
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android-GmailProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailEngine;->USER_AGENT_STRING:Ljava/lang/String;

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    if-nez v0, :cond_2

    .line 1009
    new-instance v0, Lcom/google/android/common/http/GoogleHttpClient;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->USER_AGENT_STRING:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    .line 1012
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gmail_timeout_ms"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1015
    if-eq v0, v4, :cond_1

    .line 1016
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing network timeout (because of gservices) to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    invoke-virtual {v1}, Lcom/google/android/common/http/GoogleHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 1018
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1019
    invoke-static {v1, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1020
    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;

    const-string v1, "Gmail"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/common/http/GoogleHttpClient;->enableCurlLogging(Ljava/lang/String;I)V

    .line 1025
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpClient:Lcom/google/android/common/http/GoogleHttpClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    .line 998
    :catch_0
    move-exception v0

    .line 999
    :try_start_3
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error finding package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 1004
    goto/16 :goto_0

    .line 1000
    :catch_1
    move-exception v0

    .line 1003
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting the PackageManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v5

    goto/16 :goto_0

    .line 989
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getInternalDbName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIsSyncable()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/accounts/OperationCanceledException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2189
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "mail"

    invoke-static {v4}, Lcom/google/android/gsf/GoogleLoginServiceConstants;->featureForService(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/accounts/Account;

    .line 2194
    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2195
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v4, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v6

    .line 2202
    :goto_1
    return v0

    .line 2194
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2199
    :cond_1
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2200
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Account doesn\'t support mail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v5

    .line 2202
    goto :goto_1

    .line 2203
    :catch_0
    move-exception v0

    .line 2204
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getLabelIdsForCanonicalNames([Ljava/lang/String;)[Lcom/google/android/gm/provider/MailCore$Label;
    .locals 6
    .parameter

    .prologue
    .line 1135
    array-length v0, p1

    new-array v0, v0, [Lcom/google/android/gm/provider/MailCore$Label;

    .line 1136
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1138
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1139
    :catch_0
    move-exception v2

    .line 1145
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find label: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1148
    :cond_0
    return-object v0
.end method

.method public static getMailEngine(Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 3
    .parameter "account"

    .prologue
    .line 605
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    monitor-enter v1

    .line 606
    :try_start_0
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;

    .line 607
    .local v0, engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit v1

    return-object v2

    :cond_0
    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    goto :goto_0

    .line 608
    .end local v0           #engineEntry:Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getMessageFromCursor(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;
    .locals 11
    .parameter "cursor"
    .parameter "loadBody"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2769
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2770
    const/4 v5, 0x0

    .line 2830
    :goto_0
    return-object v5

    .line 2773
    :cond_0
    new-instance v2, Lcom/google/android/gm/provider/MailSync$Message;

    invoke-direct {v2}, Lcom/google/android/gm/provider/MailSync$Message;-><init>()V

    .line 2774
    .local v2, message:Lcom/google/android/gm/provider/MailSync$Message;
    const-string v5, "messageId"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2776
    .local v3, messageId:J
    iput-wide v3, v2, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    .line 2777
    const-string v5, "conversation"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    .line 2779
    const-string v5, "refMessageId"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->refMessageId:J

    .line 2781
    const-string v5, "fromAddress"

    invoke-direct {p0, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->fromAddress:Ljava/lang/String;

    .line 2783
    const-string v5, "customFromAddress"

    invoke-direct {p0, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->customFromAddress:Ljava/lang/String;

    .line 2785
    const-string v5, "toAddresses"

    invoke-direct {p0, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->toAddresses:Ljava/util/List;

    .line 2788
    const-string v5, "ccAddresses"

    invoke-direct {p0, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->ccAddresses:Ljava/util/List;

    .line 2791
    const-string v5, "bccAddresses"

    invoke-direct {p0, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->bccAddresses:Ljava/util/List;

    .line 2794
    const-string v5, "replyToAddresses"

    invoke-direct {p0, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/android/gm/provider/Gmail;->EMAIL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->replyToAddresses:Ljava/util/List;

    .line 2797
    const-string v5, "dateSentMs"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->dateSentMs:J

    .line 2799
    const-string v5, "dateReceivedMs"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->dateReceivedMs:J

    .line 2801
    const-string v5, "subject"

    invoke-direct {p0, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->subject:Ljava/lang/String;

    .line 2803
    const-string v5, "snippet"

    invoke-direct {p0, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->snippet:Ljava/lang/String;

    .line 2805
    invoke-static {}, Lcom/google/android/gm/provider/Gmail;->newMessageLabelIdsSplitter()Landroid/text/TextUtils$StringSplitter;

    move-result-object v1

    .line 2806
    .local v1, labelIdsSplitter:Landroid/text/TextUtils$StringSplitter;
    const-string v5, "labelIds"

    invoke-direct {p0, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 2807
    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->getLabelIdsFromLabelIdsString(Landroid/text/TextUtils$StringSplitter;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    .line 2808
    const-string v5, "listInfo"

    invoke-direct {p0, p1, v5}, Lcom/google/android/gm/provider/MailEngine;->getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->listInfo:Ljava/lang/String;

    .line 2810
    const-string v5, "personalLevel"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2813
    const-string v5, "forward"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-eqz v5, :cond_2

    move v5, v8

    :goto_1
    iput-boolean v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->forward:Z

    .line 2815
    const-string v5, "includeQuotedText"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-eqz v5, :cond_3

    move v5, v8

    :goto_2
    iput-boolean v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->includeQuotedText:Z

    .line 2817
    const-string v5, "quoteStartPos"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->quoteStartPos:J

    .line 2819
    const-string v5, "clientCreated"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-eqz v5, :cond_4

    move v5, v8

    :goto_3
    iput-boolean v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->clientCreated:Z

    .line 2821
    const-string v5, "joinedAttachmentInfos"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2823
    .local v0, joinedAttachmentStrings:Ljava/lang/String;
    iget-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->attachments:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$MessageModification;->parseJoinedAttachmentString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2826
    if-eqz p2, :cond_1

    .line 2827
    const-string v5, "body"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    :cond_1
    move-object v5, v2

    .line 2830
    goto/16 :goto_0

    .end local v0           #joinedAttachmentStrings:Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 2813
    goto :goto_1

    :cond_3
    move v5, v7

    .line 2815
    goto :goto_2

    :cond_4
    move v5, v7

    .line 2819
    goto :goto_3
.end method

.method private getNonnullStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2835
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2836
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getNotificationTagLabel(Lcom/google/android/gm/provider/MailCore$Label;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 3
    .parameter "label"

    .prologue
    .line 1035
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabelCanonicalName(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, tagLabelName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 1037
    .local v0, tagLabel:Lcom/google/android/gm/provider/MailCore$Label;
    return-object v0
.end method

.method private getNotificationTagLabelCanonicalName(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;
    .locals 1
    .parameter "label"

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/MailCore;->getLabelCanonicalNameOrThrow(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->getLabelTagCanonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getOrMakeMailEngine(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_0
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    monitor-enter v1

    .line 505
    :try_start_0
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;

    .line 506
    if-nez v0, :cond_1

    .line 507
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;

    invoke-direct {v0}, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;-><init>()V

    .line 508
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->sMailEngines:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    iget-object v1, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngineLock:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_1
    iget-object v2, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    .line 520
    if-nez v2, :cond_3

    .line 521
    new-instance v2, Lcom/google/android/gm/provider/MailEngine;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gm/provider/MailEngine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 522
    iput-object v2, v0, Lcom/google/android/gm/provider/MailEngine$MailEngineContainer;->mEngine:Lcom/google/android/gm/provider/MailEngine;

    .line 524
    iget-object v0, v2, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getClientId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    .line 525
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    :cond_2
    move-object v0, v2

    .line 528
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    .line 510
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 529
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public static getOrMakeMailEngineAsync(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_0
    invoke-static {}, Lcom/google/android/gm/provider/MailEngine;->getCreationHandler()Landroid/os/Handler;

    move-result-object v3

    .line 566
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 568
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$1;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailEngine$1;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 587
    return-void
.end method

.method public static getOrMakeMailEngineSync(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 542
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getOrMaikeMailEngineSync should not be called on main (UI) thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->getOrMakeMailEngine(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/MailEngine;

    move-result-object v0

    return-object v0
.end method

.method private varargs getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "projection"
    .parameter "labelColumnName"
    .parameter "args"

    .prologue
    .line 2619
    const/4 v0, 0x0

    .line 2620
    .local v0, bindLabelNames:Z
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_2

    .line 2622
    :cond_0
    const/4 v0, 0x1

    .line 2632
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lcom/google/android/gm/provider/MailEngine;->argListWithLabelNames(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    .line 2624
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 2625
    aget-object v2, p1, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2626
    const/4 v0, 0x1

    .line 2627
    goto :goto_0

    .line 2624
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    :cond_4
    move-object v2, p3

    .line 2632
    goto :goto_1
.end method

.method private getSyncedForLocalMessageId(J)Z
    .locals 11
    .parameter "localMessageId"

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2871
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    .line 2872
    .local v4, bindArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->PROJECTION_MESSAGE_SYNCED:[Ljava/lang/String;

    const-string v3, "_id = ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2876
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2883
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v9

    :goto_0
    return v0

    .line 2879
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 2880
    const-string v0, "synced"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ne v0, v10, :cond_1

    move v0, v10

    .line 2883
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move v0, v9

    .line 2880
    goto :goto_1

    .line 2883
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getUpdatedAttachments(Ljava/lang/String;J)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gm/provider/Gmail$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 3480
    invoke-static {p1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->parseJoinedAttachmentString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 3486
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v9

    .line 3487
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v10

    .line 3488
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_2

    .line 3491
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "joinedAttachmentInfos"

    aput-object v3, v2, v7

    const-string v3, "_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v7

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3499
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3500
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 3507
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3510
    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail$MessageModification;->parseJoinedAttachmentString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 3513
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 3514
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    sget-object v2, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3516
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3517
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    invoke-interface {v10, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3502
    :cond_1
    :try_start_1
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No row found for message _id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " though one was expected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v5

    .line 3504
    goto :goto_0

    .line 3507
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3524
    :cond_2
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 3525
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 3526
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3527
    if-eqz v0, :cond_3

    .line 3528
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attachment Content "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is already cached as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3530
    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    .line 3531
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3536
    :cond_4
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3537
    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3538
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3539
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3540
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 3543
    :cond_6
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 3544
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cleaning up unused cached file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 3548
    :cond_7
    return-object v8
.end method

.method private initialize()V
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1065
    const-string v0, "ME.initialize"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 1066
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$5;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/MailEngine$5;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 1080
    new-instance v1, Lcom/google/android/gm/provider/Operations;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gm/provider/Operations;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    .line 1081
    new-instance v1, Lcom/google/android/gm/provider/MailCore;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/google/android/gm/provider/MailCore;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/Operations;Lcom/google/android/gm/provider/MailCore$Listener;)V

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    .line 1082
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailCore;->getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    .line 1083
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;

    invoke-direct {v0, p0}, Lcom/google/android/gm/provider/MailEngine$PublicMailStore;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailStore:Lcom/google/android/gm/provider/MailStore;

    .line 1085
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1086
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sync_settings"

    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v6

    const-string v4, "value"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1090
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1092
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1096
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1099
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1101
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "internal_sync_settings"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 1105
    :goto_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1106
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1107
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1108
    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 1112
    :catchall_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1113
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1110
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1112
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1113
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1116
    new-instance v0, Lcom/google/android/gm/provider/MailSync;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailStore:Lcom/google/android/gm/provider/MailStore;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mUrls:Lcom/google/android/gm/provider/Urls;

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/google/android/gm/provider/MailEngine;->mValidateSyncSets:Z

    move-object v3, v8

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailSync;-><init>(Lcom/google/android/gm/provider/MailStore;Lcom/google/android/gm/provider/Urls;Ljava/util/Map;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    .line 1117
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->getServerVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailCore;->setServerVersion(J)V

    .line 1121
    const-string v0, "ME.initialize"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 1122
    return-void

    .line 1112
    :catchall_2
    move-exception v0

    move-object v1, v9

    goto :goto_2
.end method

.method private isLowSpace(JJ)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3622
    long-to-float v0, p3

    long-to-float v1, p1

    const/high16 v2, 0x3e80

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static joinedAttachmentsString(Lcom/google/android/gm/provider/MailSync$Message;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    .line 3636
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$Message;->attachments:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$MessageModification;->joinedAttachmentsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static labelNameFromQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "query"

    .prologue
    .line 2582
    const-string v0, "label:"

    .line 2583
    .local v0, prefix:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2584
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2586
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeRight()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3766
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getClientId()J

    move-result-wide v3

    .line 3768
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3770
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v5, "gmail-ls"

    invoke-static {v1, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3772
    :cond_0
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "gmail-ls"

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v1, v9

    .line 3775
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "authority=? AND _sync_account=? AND _sync_account_type=?"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3822
    :cond_1
    :goto_0
    return-void

    .line 3780
    :catch_0
    move-exception v0

    .line 3787
    const-string v1, "Gmail"

    const-string v2, "NPE.  This shouldn\'t happen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3792
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1

    .line 3793
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gm/provider/MailEngine;->getSubscribedFeedUrl(J)Ljava/lang/String;

    move-result-object v6

    .line 3794
    const/4 v1, 0x4

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "gmail-ls"

    aput-object v1, v4, v7

    aput-object v6, v4, v8

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v1, v4, v9

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v4, v10

    .line 3797
    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "authority=? AND feed=? AND _sync_account=? AND _sync_account_type=?"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3804
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 3805
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v3, "gmail-ls"

    const-string v4, "mail"

    invoke-static {v0, v6, v2, v3, v4}, Lcom/google/android/gsf/SubscribedFeeds;->addFeed(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 3807
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3819
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3810
    :cond_3
    :try_start_2
    sget-object v2, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "authority=? AND feed!=? AND _sync_account=? AND _sync_account_type=?"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3819
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private notifyDatasetChanged(Z)V
    .locals 3
    .parameter "scheduleSync"

    .prologue
    .line 5831
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5835
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "broadcasting content resolver change in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5837
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail;->getBaseUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 5839
    return-void
.end method

.method private notifyInitializationComplete()V
    .locals 6

    .prologue
    .line 837
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 838
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationComplete:Z

    .line 839
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 840
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 841
    .local v2, numCallbacks:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 842
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 845
    .local v0, callbackInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;>;"
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/os/Handler;

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;

    invoke-direct {p0, v3, v4}, Lcom/google/android/gm/provider/MailEngine;->callInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V

    .line 841
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    .end local v0           #callbackInfo:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;>;"
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    .line 849
    .end local v1           #i:I
    .end local v2           #numCallbacks:I
    :cond_1
    monitor-exit v5

    .line 850
    return-void

    .line 849
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private onLabelsPossiblyLoaded()V
    .locals 24

    .prologue
    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine;->mNotificationsRequestsRegistered:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gm/provider/MailEngine;->mNotificationsRequestsRegistered:Z

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdUnread()J

    move-result-wide v16

    .line 859
    .local v16, labelIdUnread:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdInbox()J

    move-result-wide v4

    .line 860
    .local v4, labelIdInbox:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getLabelIdVoicemail()J

    move-result-wide v18

    .line 864
    .local v18, labelIdVoicemail:J
    const/16 v20, 0x0

    .line 867
    .local v20, labelsChanged:Z
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->CLIENT_CREATED_LOCAL_LABELS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v14, v3, :cond_3

    .line 868
    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->CLIENT_CREATED_LOCAL_LABELS:[Ljava/lang/String;

    aget-object v21, v3, v14

    .line 869
    .local v21, localLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v3

    if-nez v3, :cond_2

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore;->getOrAddLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    .line 871
    const/16 v20, 0x1

    .line 867
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 878
    .end local v21           #localLabel:Ljava/lang/String;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailEngine;->updateMailCoreConfig()V

    .line 880
    const/4 v15, 0x0

    .line 882
    .local v15, inboxNotificationLabel:Lcom/google/android/gm/provider/MailCore$Label;
    :try_start_0
    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v15

    .line 885
    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addLabelIdToNotificationMap(J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v3, v0

    const-string v6, "^iim"

    invoke-virtual {v3, v6}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v23

    .line 894
    .local v23, priorityInbox:Lcom/google/android/gm/provider/MailCore$Label;
    if-eqz v23, :cond_4

    .line 896
    :try_start_1
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    move-wide v9, v0

    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    .line 897
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    move-wide v9, v0

    move-object/from16 v0, p0

    move-wide v1, v9

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->addLabelIdToNotificationMap(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 905
    :cond_4
    :goto_3
    if-eqz v20, :cond_5

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V

    .line 909
    :cond_5
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v22

    .line 910
    .local v22, notificationRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/MailCore$NotificationRequest;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v12

    .line 911
    .local v12, emptySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v3, Lcom/google/android/gm/provider/MailCore$NotificationRequest;

    iget-wide v6, v15, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Long;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v8}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Long;

    const/4 v10, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v9

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;-><init>(JJLjava/util/Set;Ljava/util/Set;)V

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    if-eqz v23, :cond_6

    .line 917
    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    move-wide v7, v0

    .line 918
    .local v7, priorityInboxId:J
    new-instance v6, Lcom/google/android/gm/provider/MailCore$NotificationRequest;

    move-object/from16 v0, p0

    move-wide v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v3

    iget-wide v9, v3, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .end local v4           #labelIdInbox:J
    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v11

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gm/provider/MailCore$NotificationRequest;-><init>(JJLjava/util/Set;Ljava/util/Set;)V

    .line 923
    .local v6, request:Lcom/google/android/gm/provider/MailCore$NotificationRequest;
    move-object/from16 v0, v22

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    .end local v6           #request:Lcom/google/android/gm/provider/MailCore$NotificationRequest;
    .end local v7           #priorityInboxId:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore;->setNotificationRequests(Ljava/util/List;)V

    goto/16 :goto_0

    .line 886
    .end local v12           #emptySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v22           #notificationRequests:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gm/provider/MailCore$NotificationRequest;>;"
    .end local v23           #priorityInbox:Lcom/google/android/gm/provider/MailCore$Label;
    .restart local v4       #labelIdInbox:J
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 888
    .local v13, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "^i"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addNotificationLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v15

    .line 889
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 898
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .restart local v23       #priorityInbox:Lcom/google/android/gm/provider/MailCore$Label;
    :catch_1
    move-exception v3

    move-object v13, v3

    .line 900
    .restart local v13       #e:Ljava/lang/IllegalArgumentException;
    const-string v3, "^iim"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->addNotificationLabel(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    .line 901
    const/16 v20, 0x1

    goto/16 :goto_3
.end method

.method private openDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x64

    const/16 v6, 0x34

    const/16 v5, 0x32

    const/16 v4, 0x24

    const/16 v3, 0x75

    .line 1163
    const-string v0, "ME.openDatabase"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 1167
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v2}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1169
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1171
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 1173
    if-eq v0, v3, :cond_24

    .line 1176
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-lt v1, v4, :cond_0

    if-ge v0, v7, :cond_2

    if-le v0, v6, :cond_2

    .line 1179
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->bootstrapDatabase()V

    .line 1220
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-eq v1, v3, :cond_24

    .line 1221
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upgrade db from verson "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x75

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1228
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1181
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo37()V

    .line 1182
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo38()V

    .line 1183
    :cond_4
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x26

    if-ne v1, v2, :cond_5

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo39()V

    .line 1184
    :cond_5
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x27

    if-ne v1, v2, :cond_6

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo40()V

    .line 1185
    :cond_6
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x28

    if-ne v1, v2, :cond_7

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo41()V

    .line 1186
    :cond_7
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_8

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo42()V

    .line 1187
    :cond_8
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x2a

    if-ne v1, v2, :cond_9

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo43()V

    .line 1188
    :cond_9
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_a

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo44()V

    .line 1189
    :cond_a
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_b

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo45()V

    .line 1190
    :cond_b
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_c

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo46()V

    .line 1191
    :cond_c
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_d

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo47()V

    .line 1192
    :cond_d
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_e

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo48()V

    .line 1193
    :cond_e
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x30

    if-ne v1, v2, :cond_f

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo49()V

    .line 1194
    :cond_f
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_10

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo50()V

    .line 1195
    :cond_10
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-ne v1, v5, :cond_11

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo51()V

    .line 1196
    :cond_11
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x33

    if-ne v1, v2, :cond_12

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo52()V

    .line 1199
    :cond_12
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-ne v1, v6, :cond_13

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo100()V

    .line 1200
    :cond_13
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    if-ne v1, v7, :cond_14

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo101()V

    .line 1201
    :cond_14
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_15

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo102()V

    .line 1202
    :cond_15
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x66

    if-ne v1, v2, :cond_16

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo103()V

    .line 1203
    :cond_16
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x67

    if-ne v1, v2, :cond_17

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo104()V

    .line 1204
    :cond_17
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x68

    if-ne v1, v2, :cond_18

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo105()V

    .line 1205
    :cond_18
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x69

    if-ne v1, v2, :cond_19

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo106()V

    .line 1206
    :cond_19
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x6a

    if-ne v1, v2, :cond_1a

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo107()V

    .line 1207
    :cond_1a
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x6b

    if-ne v1, v2, :cond_1b

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo108()V

    .line 1208
    :cond_1b
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x6c

    if-ne v1, v2, :cond_1c

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo109()V

    .line 1209
    :cond_1c
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_1d

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo110()V

    .line 1210
    :cond_1d
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_1e

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo111()V

    .line 1211
    :cond_1e
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x6f

    if-ne v1, v2, :cond_1f

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo112()V

    .line 1212
    :cond_1f
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_20

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo113()V

    .line 1213
    :cond_20
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x71

    if-ne v1, v2, :cond_21

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo114()V

    .line 1214
    :cond_21
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_22

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo115()V

    .line 1215
    :cond_22
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x73

    if-ne v1, v2, :cond_23

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo116()V

    .line 1216
    :cond_23
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v1

    const/16 v2, 0x74

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->upgradeDbTo117()V

    goto/16 :goto_0

    .line 1226
    :cond_24
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1228
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1231
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages_to_fetch"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMessagesToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 1232
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "messages"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMessagesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 1233
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversations"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 1234
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversations_to_fetch"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationsToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 1236
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "send_without_sync_conversations_to_fetch"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mSendWithoutSyncConversationsToFetchInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 1238
    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "conversation_labels"

    invoke-direct {v0, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationLabelsInserter:Landroid/database/DatabaseUtils$InsertHelper;

    .line 1241
    const-string v0, "ME.openDatabase"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->setMaxSqlCacheSize(I)V

    .line 1245
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 1246
    return-void
.end method

.method private openInternalDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1254
    const-string v0, "ME.openDatabase"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 1255
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v2}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 1257
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1259
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 1260
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1261
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->bootstrapInternalDatabase()V

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1267
    const-string v0, "ME.openDatabase"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 1268
    return-void

    .line 1265
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method private purgeSomeStaleMessagesInTransaction()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x2

    const/4 v7, 0x0

    .line 3858
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getLowestMessageIdInDurationOrZero()J

    move-result-wide v0

    .line 3859
    const-string v2, "Gmail"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3860
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting purging messages. Oldest message id in duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    .line 3865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT _id FROM conversations\nWHERE\n  (syncRationale = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "OR (syncRationale = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->DURATION:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  AND syncRationaleMessageId < ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")) AND queryId = 0 LIMIT 100"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3873
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move v1, v7

    .line 3875
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3876
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3878
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gm/provider/Operations;->hasUnackedSendOrSaveOperationsForConversation(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3879
    const-string v4, "Gmail"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3880
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Conversation ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has unacked send or save "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "operations."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 3886
    :goto_1
    if-eqz v2, :cond_1

    move v1, v8

    .line 3887
    goto :goto_0

    .line 3884
    :cond_2
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gm/provider/MailCore;->purgeConversation(J)Z

    move-result v2

    goto :goto_1

    .line 3891
    :cond_3
    const-string v2, "Gmail"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3892
    const-string v2, "Gmail"

    const-string v3, "Finished purging messages "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3896
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    move v2, v7

    goto :goto_1
.end method

.method private runHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        }
    .end annotation

    .prologue
    .line 2417
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    .line 2419
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->runHttpRequestInternal(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2425
    :goto_0
    return-object v0

    .line 2420
    :catch_0
    move-exception v0

    .line 2421
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2422
    const-string v0, "Gmail"

    const-string v1, "Authentication error, token invalidated, retrying"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->runHttpRequestInternal(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0
.end method

.method private runHttpRequestInternal(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        }
    .end annotation

    .prologue
    .line 2437
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    .line 2438
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mUrls:Lcom/google/android/gm/provider/Urls;

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mCookieStore:Lorg/apache/http/client/CookieStore;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gm/provider/Urls;->newHttpContext(Ljava/lang/String;Lorg/apache/http/client/CookieStore;)Lorg/apache/http/protocol/HttpContext;

    move-result-object v1

    .line 2441
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getHttpClient()Lcom/google/android/common/http/GoogleHttpClient;

    move-result-object v3

    invoke-interface {v2, v3, p1, v1}, Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;->runHttpRequest(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 2444
    iget-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine;->mFakeIoException:Z

    if-eqz v2, :cond_0

    .line 2445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mFakeIoException:Z

    .line 2446
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Fake io exception"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2449
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2, v1}, Lcom/google/android/gm/provider/MailSync;->responseContainsAuthFailure(Lorg/apache/http/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2450
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.google"

    invoke-virtual {v1, v2, v0}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2452
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mCookieStore:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0}, Lorg/apache/http/client/CookieStore;->clear()V

    .line 2453
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    const-string v1, "authtoken is invalid"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2456
    :cond_1
    return-object v1
.end method

.method private runSyncLoop(Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2218
    :try_start_0
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2219
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "runSyncLoop normalSync - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    if-nez p2, :cond_3

    move v1, v8

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/google/android/gm/provider/MailSync;->nextSyncRequest(ZZLcom/google/android/gm/provider/MailEngine$SyncInfo;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 2225
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gmail-max-sync-per-interval"

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    move-object v2, v0

    move v0, v7

    .line 2228
    :goto_1
    if-eqz v2, :cond_8

    iget-boolean v3, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    if-nez v3, :cond_8

    .line 2232
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gm/provider/MailEngine;->mLastSyncLoopCheckTime:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x1d4c0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 2234
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    .line 2235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gm/provider/MailEngine;->mLastSyncLoopCheckTime:J

    .line 2238
    :cond_1
    iget v3, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    if-le v3, v1, :cond_4

    .line 2239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    .line 2240
    const-string v0, "Gmail"

    const-string v1, "Too many sync loops, cancelling sync."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    if-eqz p4, :cond_2

    .line 2246
    const-wide/16 v0, 0x1e

    iput-wide v0, p4, Landroid/content/SyncResult;->delayUntil:J

    .line 2251
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Too many sync loops detected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2291
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->onSyncLoopEnd()V

    throw v0

    :cond_3
    move v1, v7

    .line 2221
    goto :goto_0

    .line 2254
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2255
    const-string v4, "gmail_discard_error_uphill_op_old_froyo"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_6

    move v3, v8

    .line 2258
    :goto_2
    if-eqz v3, :cond_5

    .line 2259
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->checkAndUpdateUnackedSettings()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2263
    :cond_5
    :try_start_2
    invoke-direct {p0, v2, p1, p3}, Lcom/google/android/gm/provider/MailEngine;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    or-int/2addr v0, v2

    .line 2276
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, p3, v4}, Lcom/google/android/gm/provider/MailSync;->nextSyncRequest(ZZLcom/google/android/gm/provider/MailEngine$SyncInfo;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 2277
    iget v3, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncCountPerPeriod:I

    goto :goto_1

    :cond_6
    move v3, v7

    .line 2255
    goto :goto_2

    .line 2264
    :catch_0
    move-exception v2

    .line 2265
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, p3}, Lcom/google/android/gm/provider/MailStore;->getConversationInfosToFetch(Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2267
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 2268
    const-string v4, "Gmail"

    const-string v5, "Exception during conversation sync. Will attempt to fetch one conversation at a time"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2270
    invoke-direct {p0, p3, p1, v3}, Lcom/google/android/gm/provider/MailEngine;->syncConversations(Lcom/google/android/gm/provider/MailEngine$SyncInfo;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Ljava/util/ArrayList;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_3

    .line 2272
    :cond_7
    throw v2

    .line 2280
    :cond_8
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->makeRight()V

    .line 2283
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 2286
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    rem-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    .line 2287
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "VACUUM"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2291
    :cond_9
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->onSyncLoopEnd()V

    return v0
.end method

.method private sendNotificationIntent(Lcom/google/android/gm/provider/MailCore$Label;Lcom/google/android/gm/provider/MailCore$Label;IZ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3977
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/provider/MailCore;->getLabelCanonicalNameOrThrow(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    .line 3978
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelCanonicalNameOrThrow(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v1

    .line 3981
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PROVIDER_CHANGED"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://gmail-ls/unread/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3983
    const-string v3, "account"

    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3984
    const-string v3, "count"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3985
    const-string v3, "getAttention"

    invoke-virtual {v2, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3986
    const-string v3, "tagLabel"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3987
    const-string v1, "notificationLabel"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3988
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending notification intent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mProviderChangedBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 3991
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mProviderChangedBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3993
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 3994
    return-void
.end method

.method private sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Z
    .locals 4
    .parameter "request"
    .parameter "observer"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 2298
    const/4 v1, 0x0

    .line 2299
    .local v1, purged:Z
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->runHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 2301
    .local v2, response:Lorg/apache/http/HttpResponse;
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v3, v2, p2, p3}, Lcom/google/android/gm/provider/MailSync;->handleSyncResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 2316
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->purgeStaleMessagesOutsideTransaction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2317
    const/4 v1, 0x1

    .line 2320
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2322
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 2323
    .local v0, entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2325
    :cond_1
    return v1

    .line 2322
    .end local v0           #entity:Lorg/apache/http/HttpEntity;
    :catchall_0
    move-exception v3

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 2323
    .restart local v0       #entity:Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 2324
    :cond_2
    throw v3
.end method

.method private setSettingsValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2049
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2050
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "engine_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2053
    return-void
.end method

.method static setTestingHttpRequestRunner(Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;)V
    .locals 0
    .parameter "runner"

    .prologue
    .line 675
    sput-object p0, Lcom/google/android/gm/provider/MailEngine;->sTestingHttpRequestRunner:Lcom/google/android/gm/provider/MailEngine$HttpRequestRunner;

    .line 676
    return-void
.end method

.method static setTestingMailEnginePreference(Lcom/google/android/gm/provider/MailEngine$Preferences;)V
    .locals 0
    .parameter "preferences"

    .prologue
    .line 679
    sput-object p0, Lcom/google/android/gm/provider/MailEngine;->sTestingPreferences:Lcom/google/android/gm/provider/MailEngine$Preferences;

    .line 680
    return-void
.end method

.method private syncConversations(Lcom/google/android/gm/provider/MailEngine$SyncInfo;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Ljava/util/ArrayList;)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/MailEngine$SyncInfo;",
            "Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/MailSync$ConversationInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2334
    .line 2336
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v9, v10, p1, v1}, Lcom/google/android/gm/provider/MailSync;->nextSyncRequest(ZZLcom/google/android/gm/provider/MailEngine$SyncInfo;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 2338
    if-eqz v0, :cond_3

    .line 2339
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gm/provider/MailEngine;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Z

    move-result v0

    .line 2342
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2343
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetching conversations one by one: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v9

    move v3, v0

    .line 2344
    :goto_1
    if-ge v2, v1, :cond_2

    .line 2345
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    if-eqz v0, :cond_0

    .line 2346
    const-string v0, "Gmail"

    const-string v1, "Sync canceled. Aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 2365
    :goto_2
    return v0

    .line 2349
    :cond_0
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailSync$ConversationInfo;

    .line 2350
    iget-wide v4, v0, Lcom/google/android/gm/provider/MailSync$ConversationInfo;->id:J

    .line 2352
    const-string v6, "Gmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fetching conversation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    iget-object v6, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    new-array v7, v10, [Lcom/google/android/gm/provider/MailSync$ConversationInfo;

    aput-object v0, v7, v9

    invoke-static {v7}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v6, v9, v9, p1, v0}, Lcom/google/android/gm/provider/MailSync;->nextSyncRequest(ZZLcom/google/android/gm/provider/MailEngine$SyncInfo;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 2356
    if-eqz v0, :cond_1

    .line 2358
    :try_start_0
    invoke-direct {p0, v0, p2, p1}, Lcom/google/android/gm/provider/MailEngine;->sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    or-int/2addr v0, v3

    .line 2344
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    .line 2359
    :catch_0
    move-exception v0

    .line 2360
    const-string v6, "Gmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception while fetching conversation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2361
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, v4, v5}, Lcom/google/android/gm/provider/MailStore;->delayConversationSync(J)V

    :cond_1
    move v0, v3

    goto :goto_3

    :cond_2
    move v0, v3

    .line 2365
    goto :goto_2

    :cond_3
    move v0, v9

    goto/16 :goto_0
.end method

.method private updateMailCoreConfig()V
    .locals 3

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync;->getLabelsIncludedArray()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->getLabelIdsForCanonicalNames([Ljava/lang/String;)[Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync;->getLabelsPartialArray()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->getLabelIdsForCanonicalNames([Ljava/lang/String;)[Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailCore;->setConfig([Lcom/google/android/gm/provider/MailCore$Label;[Lcom/google/android/gm/provider/MailCore$Label;)V

    .line 1132
    :cond_0
    return-void
.end method

.method private upgradeDbTo100()V
    .locals 2

    .prologue
    .line 1659
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN systemLabel INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabel = 1 WHERE substr(canonicalName, 1, 1) = \'^\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1664
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN systemLabelOrder INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 1 WHERE canonicalName = \'^i\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 2 WHERE canonicalName = \'^t\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1670
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = \'^b\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = \'^f\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1674
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = \'^^out\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1676
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = \'^r\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1678
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = \'^all\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1680
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = \'^s\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1682
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = \'^k\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN hidden INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET hidden = 1 WHERE substr(canonicalName, 1, 1) = \'^\' AND canonicalName NOT IN (\'^i\', \'^t\', \'^b\', \'^f\', \'^^out\', \'^r\', \'^all\', \'^s\', \'^k\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1700
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1701
    return-void
.end method

.method private upgradeDbTo101()V
    .locals 2

    .prologue
    .line 1705
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN labelCountDisplayBehavior INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1710
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelCountDisplayBehavior = 1 WHERE canonicalName IN (\'^^out\', \'^r\', \'^s\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelCountDisplayBehavior = 2 WHERE canonicalName IN (\'^f\', \'^t\', \'^b\', \'^all\', \'^k\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1727
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1728
    return-void
.end method

.method private upgradeDbTo102()V
    .locals 2

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN labelSyncPolicy INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1736
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 1 WHERE canonicalName IN (\'^^out\', \'^r\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 2 WHERE canonicalName IN (\'^s\', \'^b\', \'^all\', \'^k\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelSyncPolicy = 3 WHERE canonicalName IN (\'^i\', \'^f\')"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1756
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1757
    return-void
.end method

.method private upgradeDbTo103()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1761
    new-array v0, v8, [Landroid/content/ContentValues;

    .line 1763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1764
    const-string v2, "select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v7

    .line 1765
    :goto_0
    sget-object v3, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1766
    sget-object v3, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 1767
    if-eqz v2, :cond_0

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1768
    :cond_0
    const-string v4, "(select value from sync_settings where name =\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1769
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    const-string v4, "\') as "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1771
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v0, v2

    .line 1774
    aget-object v4, v0, v2

    const-string v5, "name"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1777
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1778
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move v2, v7

    .line 1779
    :goto_1
    if-ge v2, v8, :cond_2

    .line 1780
    aget-object v3, v0, v2

    const-string v4, "value"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1782
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1784
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 1787
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "internal_sync_settings"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1790
    array-length v1, v0

    move v2, v7

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 1791
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "internal_sync_settings"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1790
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1793
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1795
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1799
    const-string v1, "delete from sync_settings where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v7

    .line 1800
    :goto_3
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 1801
    sget-object v2, Lcom/google/android/gm/provider/Gmail;->SETTINGS_PROJECTION:[Ljava/lang/String;

    aget-object v2, v2, v1

    .line 1802
    const-string v3, " name =\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1804
    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    const-string v2, " OR "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1795
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 1808
    :cond_5
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1811
    return-void
.end method

.method private upgradeDbTo104()V
    .locals 2

    .prologue
    .line 1817
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1819
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_label_color_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1820
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_label_color_prefs (\n  _id INTEGER PRIMARY KEY,\n  color_index TEXT,\n  text_color TEXT,\n  background_color TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1826
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1827
    return-void
.end method

.method private upgradeDbTo105()V
    .locals 2

    .prologue
    .line 1834
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1836
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS custom_from_prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1837
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE custom_from_prefs (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  is_default TEXT,\n  reply_to TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1843
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1844
    return-void
.end method

.method private upgradeDbTo106()V
    .locals 2

    .prologue
    .line 1850
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1852
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS server_preferences"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1853
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE server_preferences (\n  _id TEXT PRIMARY KEY,\n  name TEXT,\n  value TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1860
    return-void
.end method

.method private upgradeDbTo107()V
    .locals 2

    .prologue
    .line 1864
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1866
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN visibility TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1868
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1869
    return-void
.end method

.method private upgradeDbTo108()V
    .locals 2

    .prologue
    .line 1873
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1874
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1876
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = \'^io_im\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1878
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = \'^b\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1880
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = \'^f\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = \'^^out\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1884
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = \'^r\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1886
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = \'^all\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1888
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = \'^s\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1890
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 10 WHERE canonicalName = \'^k\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1894
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS info_overload"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1895
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE info_overload (enabled_pref TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1898
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1899
    return-void
.end method

.method private upgradeDbTo109()V
    .locals 2

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE attachments ADD COLUMN priority INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1904
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1905
    return-void
.end method

.method private upgradeDbTo110()V
    .locals 2

    .prologue
    .line 1908
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations_to_fetch ADD COLUMN nextAttemptDateMs INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1910
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations_to_fetch ADD COLUMN numAttempts INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1912
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1913
    return-void
.end method

.method private upgradeDbTo111()V
    .locals 2

    .prologue
    .line 1917
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN customFromAddress TEXT"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1918
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1919
    return-void
.end method

.method private upgradeDbTo112()V
    .locals 2

    .prologue
    .line 1924
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1927
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 2 WHERE canonicalName = \'^iim\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1929
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 3 WHERE canonicalName = \'^t\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1931
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 4 WHERE canonicalName = \'^io_im\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1933
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 5 WHERE canonicalName = \'^b\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1935
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 6 WHERE canonicalName = \'^f\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1937
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 7 WHERE canonicalName = \'^^out\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1939
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 8 WHERE canonicalName = \'^r\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1941
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 9 WHERE canonicalName = \'^all\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1943
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 10 WHERE canonicalName = \'^s\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1945
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET systemLabelOrder = 11 WHERE canonicalName = \'^k\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1948
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1949
    return-void
.end method

.method private upgradeDbTo113()V
    .locals 2

    .prologue
    .line 1953
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x71

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1956
    return-void
.end method

.method private upgradeDbTo114()V
    .locals 2

    .prologue
    .line 1960
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mValidateSyncSets:Z

    .line 1961
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1962
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1963
    return-void
.end method

.method private upgradeDbTo115()V
    .locals 2

    .prologue
    .line 1967
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1970
    return-void
.end method

.method private upgradeDbTo116()V
    .locals 2

    .prologue
    .line 1974
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE labels SET labelCountDisplayBehavior = 2 WHERE canonicalName = \'^io_im\'"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1979
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1980
    return-void
.end method

.method private upgradeDbTo117()V
    .locals 2

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE attachments ADD COLUMN mimeType TEXT DEFAULT NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1986
    return-void
.end method

.method private upgradeDbTo37()V
    .locals 2

    .prologue
    .line 1532
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE conversations SET labelIds = \',\' || labelIds"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1533
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1534
    return-void
.end method

.method private upgradeDbTo38()V
    .locals 2

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN clientCreated INTEGER"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1538
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN refMessageId INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1540
    return-void
.end method

.method private upgradeDbTo39()V
    .locals 2

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lcom/google/android/gm/provider/MailCore;->correctLocalLabelIds(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1544
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1545
    return-void
.end method

.method private upgradeDbTo40()V
    .locals 2

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1549
    return-void
.end method

.method private upgradeDbTo41()V
    .locals 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN numAttempts INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1553
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE operations ADD COLUMN nextTimeToAttempt INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1554
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1555
    return-void
.end method

.method private upgradeDbTo42()V
    .locals 2

    .prologue
    .line 1558
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1560
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE labels ADD COLUMN color INTEGER DEFAULT 2147483647"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1563
    return-void
.end method

.method private upgradeDbTo43()V
    .locals 2

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS send_without_sync_conversations_to_fetch"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE send_without_sync_conversations_to_fetch (_id INTEGER PRIMARY KEY)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1569
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1570
    return-void
.end method

.method private upgradeDbTo44()V
    .locals 2

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN forward INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN includeQuotedText INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN quoteStartPos INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1577
    return-void
.end method

.method private upgradeDbTo45()V
    .locals 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS attachments"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1585
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE attachments (\n  _id INTEGER PRIMARY KEY,\n  messages_conversation INTEGER,\n  messages_messageId INTEGER,\n  messages_partId TEXT,\n  originExtras TEXT,\n  desiredRendition TEXT,  automatic INTEGER,\n  downloadedRendition TEXT,  downloadId INTEGER,\n  status TEXT,\n  saveToSd INTEGER,\n  filename TEXT,\n  UNIQUE(\n    messages_conversation, messages_messageId,\n    messages_partId, desiredRendition, saveToSd),\n  UNIQUE(messages_messageId, messages_partId, desiredRendition, saveToSd))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1605
    return-void
.end method

.method private upgradeDbTo46()V
    .locals 2

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS attachment_downloadid ON attachments (downloadId)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1611
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1612
    return-void
.end method

.method private upgradeDbTo47()V
    .locals 2

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_joinedAttachmentInfos ON messages (joinedAttachmentInfos)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1619
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1620
    return-void
.end method

.method private upgradeDbTo48()V
    .locals 2

    .prologue
    .line 1623
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE conversations ADD COLUMN dirty INTEGER DEFAULT 0"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1625
    return-void
.end method

.method private upgradeDbTo49()V
    .locals 2

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "ALTER TABLE messages ADD COLUMN bodyCompressed BLOB DEFAULT NULL"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1630
    return-void
.end method

.method private upgradeDbTo50()V
    .locals 2

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS conversations_queryId on conversations (queryId);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1635
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE INDEX IF NOT EXISTS messages_synced on messages (synced);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1638
    return-void
.end method

.method private upgradeDbTo51()V
    .locals 2

    .prologue
    .line 1641
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1643
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS info_overload"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1644
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE info_overload (enabled_pref TEXT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1648
    return-void
.end method

.method private upgradeDbTo52()V
    .locals 2

    .prologue
    .line 1651
    const-string v0, "startSyncNeeded"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailEngine;->setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->requestSync()V

    .line 1654
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 1655
    return-void
.end method

.method private declared-synchronized wipeAndResync(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 636
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 637
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 641
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 642
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 646
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 647
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 648
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v2, "gmail-ls"

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 651
    const-string v0, "Gmail"

    const-string v1, "Wiping mail db because: "

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    monitor-exit p0

    return-void

    .line 636
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public blockUntilBackgroundTasksComplete()V
    .locals 4

    .prologue
    .line 5854
    const-string v2, "Gmail"

    const-string v3, "blockUntilBackgroundTasksComplete: queueing"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5855
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 5856
    .local v1, semaphore:Ljava/util/concurrent/Semaphore;
    new-instance v2, Lcom/google/android/gm/provider/MailEngine$8;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gm/provider/MailEngine$8;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->postBackgroundTask(Ljava/lang/Runnable;)V

    .line 5863
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5867
    :goto_0
    return-void

    .line 5864
    :catch_0
    move-exception v0

    .line 5865
    .local v0, e:Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method public checkAndUpdateUnackedSettings()V
    .locals 9

    .prologue
    .line 2369
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailSync;->getUnackedSentOperations()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2370
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    invoke-virtual {v3}, Lcom/google/android/gm/provider/Operations;->nextOperationId()I

    move-result v1

    .line 2371
    .local v1, nextOp:I
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v4, "nextUnackedSentOp"

    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/MailSync;->getIntegerSetting(Ljava/lang/String;)I

    move-result v2

    .line 2373
    .local v2, nextUnackedUphillOp:I
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v4, "errorCountNextUnackedSentOp"

    invoke-virtual {v3, v4}, Lcom/google/android/gm/provider/MailSync;->getIntegerSetting(Ljava/lang/String;)I

    move-result v0

    .line 2376
    .local v0, errorCount:I
    if-ne v1, v2, :cond_1

    .line 2377
    add-int/lit8 v0, v0, 0x1

    .line 2378
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v4, "errorCountNextUnackedSentOp"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->setIntegerSetting(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 2389
    .end local v0           #errorCount:I
    .end local v1           #nextOp:I
    .end local v2           #nextUnackedUphillOp:I
    :cond_0
    :goto_0
    return-void

    .line 2381
    .restart local v0       #errorCount:I
    .restart local v1       #nextOp:I
    .restart local v2       #nextUnackedUphillOp:I
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v4, "nextUnackedSentOp"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->setIntegerSetting(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 2383
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v4, "errorCountNextUnackedSentOp"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->setIntegerSetting(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 2385
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    const-string v4, "nextUnackedOpWriteTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method public checkConsistency()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 4043
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getServerVersion()J

    move-result-wide v0

    const-wide/16 v2, 0x9

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 4044
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getLabelsAllArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 4046
    const-string v1, "^^out"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4048
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4049
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    .line 4050
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 4051
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Label id is zero for label "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4057
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getLabelsIncludedArray()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    .line 4058
    const-string v1, "^^out"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4060
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$LabelMap;->requery()V

    .line 4061
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4062
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v2, v0}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    .line 4064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "label:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v4, v7}, Lcom/google/android/gm/provider/MailEngine;->getConversationCursorForQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4068
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    int-to-long v5, v5

    .line 4070
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4073
    iget-object v4, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getNumConversations(J)I

    move-result v2

    .line 4076
    int-to-long v3, v2

    cmp-long v3, v5, v3

    if-eqz v3, :cond_2

    const/16 v3, 0x190

    if-gt v2, v3, :cond_2

    .line 4077
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Label counts do not match for label "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " conversations in db but labels table says "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4070
    :catchall_0
    move-exception v0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    .line 4083
    :cond_3
    return-void
.end method

.method public clearNewUnreadMailForNotificationLabel(Lcom/google/android/gm/provider/MailCore$Label;)I
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4005
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 4006
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "message_labels"

    const-string v4, "labels_id = ?"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4007
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "conversation_labels"

    const-string v4, "labels_id = ?"

    invoke-virtual {v1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 4008
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const v4, 0x7fffffff

    const-string v5, "SHOW"

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/provider/MailCore;->setLabelCounts(Lcom/google/android/gm/provider/MailCore$Label;IIILjava/lang/String;)V

    .line 4010
    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V

    .line 4011
    return v6
.end method

.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 931
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->onSyncCanceled()V

    .line 933
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->blockUntilBackgroundTasksComplete()V

    .line 935
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    if-eqz v0, :cond_0

    .line 936
    sget-object v0, Lcom/google/android/gm/provider/MailEngine;->sConversationPurgeTask:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic$PurgeStaleConversationsTask;->cancel(Z)Z

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 940
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 944
    iput-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 946
    :cond_2
    return-void
.end method

.method public expungeLocalMessage(J)I
    .locals 14
    .parameter "localMessageId"

    .prologue
    .line 3147
    const/4 v11, 0x0

    .line 3148
    .local v11, attachmentsString:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3149
    const/4 v13, 0x0

    .line 3151
    .local v13, sendNotifications:Z
    const/4 v0, 0x1

    :try_start_0
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 3152
    .local v4, bindArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "messageId"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "conversation"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "joinedAttachmentInfos"

    aput-object v5, v2, v3

    const-string v3, "_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 3159
    .local v12, cursor:Landroid/database/Cursor;
    const-wide/16 v8, -0x1

    .line 3160
    .local v8, messageId:J
    const-wide/16 v6, -0x1

    .line 3162
    .local v6, conversationId:J
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3163
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 3164
    const-string v0, "messageId"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3166
    const-string v0, "conversation"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3168
    const-string v0, "joinedAttachmentInfos"

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 3172
    :cond_0
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3174
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    .line 3175
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v6, v7, v1}, Lcom/google/android/gm/provider/MailCore;->expungeMessagesWithoutWritingOperations(JLjava/util/List;)V

    .line 3177
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v0, v6, v7, v1}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 3179
    const/4 v13, 0x1

    .line 3180
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    const-string v10, "messageExpunged"

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gm/provider/Operations;->recordOperation(JJLjava/lang/String;)J

    .line 3182
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3183
    const/4 v0, 0x1

    .line 3189
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3190
    if-eqz v13, :cond_1

    .line 3191
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3193
    :cond_1
    invoke-direct {p0, v11}, Lcom/google/android/gm/provider/MailEngine;->cleanupAttachments(Ljava/lang/String;)V

    :goto_0
    return v0

    .line 3172
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3189
    .end local v4           #bindArgs:[Ljava/lang/String;
    .end local v6           #conversationId:J
    .end local v8           #messageId:J
    .end local v12           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3190
    if-eqz v13, :cond_2

    .line 3191
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3193
    :cond_2
    invoke-direct {p0, v11}, Lcom/google/android/gm/provider/MailEngine;->cleanupAttachments(Ljava/lang/String;)V

    throw v0

    .line 3185
    .restart local v4       #bindArgs:[Ljava/lang/String;
    .restart local v6       #conversationId:J
    .restart local v8       #messageId:J
    .restart local v12       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3186
    const/4 v0, 0x0

    .line 3189
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3190
    if-eqz v13, :cond_4

    .line 3191
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3193
    :cond_4
    invoke-direct {p0, v11}, Lcom/google/android/gm/provider/MailEngine;->cleanupAttachments(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getAttachmentManager()Lcom/google/android/gm/provider/AttachmentManager;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAttachmentManager:Lcom/google/android/gm/provider/AttachmentManager;

    return-object v0
.end method

.method public getAuthToken(Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 6
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2492
    .local p1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v2, "mail"

    const/4 v3, 0x1

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    return-object v0
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailEngine$AuthenticationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2468
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v2, "mail"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 2470
    if-nez v0, :cond_0

    .line 2471
    new-instance v0, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    const-string v1, "Unable to get auth token"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2473
    :catch_0
    move-exception v0

    .line 2474
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2475
    :catch_1
    move-exception v0

    .line 2476
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;

    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailEngine$AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2478
    :cond_0
    return-object v0
.end method

.method public getConversationCursorForQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2522
    const-string v1, "ME.conversationQuery"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2524
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mConversationCursorForQueryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2527
    if-eqz p3, :cond_5

    .line 2528
    :try_start_0
    array-length v1, p3

    move v3, v6

    move v4, v7

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    .line 2529
    const-string v5, "SELECTION_ARGUMENT_DO_NOT_BECOME_ACTIVE_NETWORK_CURSOR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2528
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 2532
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selection Argument \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' unknown."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Please see Gmail.SelectionArguments for possible values."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2574
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v4

    .line 2540
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mLastQuery:Ljava/lang/String;

    invoke-static {p2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v7

    .line 2542
    :goto_2
    if-eqz v3, :cond_3

    .line 2545
    new-instance v4, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    invoke-direct {v4, p0, p2, v1}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;-><init>(Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;Z)V

    .line 2550
    :goto_3
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$6;

    invoke-direct {v1, p0, v4}, Lcom/google/android/gm/provider/MailEngine$6;-><init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;)V

    .line 2558
    iget-object v5, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getSql()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2561
    move-object v0, v1

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;

    move-object p0, v0

    .line 2562
    if-eqz v3, :cond_4

    .line 2564
    invoke-virtual {v4, p0}, Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;->configure(Lcom/google/android/gm/provider/MailEngine$NetworkCursor;)V

    .line 2572
    :goto_4
    const-string v3, "ME.conversationQuery"

    invoke-static {v3}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 2573
    monitor-exit v2

    return-object v1

    :cond_2
    move v3, v6

    .line 2540
    goto :goto_2

    .line 2547
    :cond_3
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mLastConversationCursorLogic:Lcom/google/android/gm/provider/MailEngine$ConversationCursorLogic;

    move-object v4, v1

    goto :goto_3

    .line 2570
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;->requery()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_5
    move v1, v7

    goto :goto_1
.end method

.method public getLabelCursor([Ljava/lang/String;Ljava/util/List;JZ)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;JZ)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3649
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3650
    const-string v1, "labels"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3651
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 3652
    const-string v1, "name"

    new-array v2, v5, [Ljava/lang/String;

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3656
    if-eqz p2, :cond_6

    .line 3657
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 3658
    if-lez v2, :cond_6

    .line 3659
    const-string v4, "canonicalName IN ("

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move v4, v5

    .line 3660
    :goto_0
    if-ge v4, v2, :cond_1

    .line 3661
    if-lez v4, :cond_0

    .line 3662
    const-string v5, ", "

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3664
    :cond_0
    const-string v5, "?"

    invoke-virtual {v0, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3665
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3660
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3667
    :cond_1
    const-string v2, ")"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move v2, v6

    .line 3671
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-eqz v4, :cond_3

    .line 3672
    if-eqz v2, :cond_2

    .line 3673
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3675
    :cond_2
    const-string v2, "_id = ?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3676
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    .line 3680
    :cond_3
    if-nez p5, :cond_5

    .line 3681
    if-eqz v2, :cond_4

    .line 3682
    const-string v2, " AND "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3684
    :cond_4
    const-string v2, " hidden = 0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3687
    :cond_5
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->LABEL_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3688
    const-string v2, "systemLabel DESC,sortOrder ASC"

    .line 3690
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 3691
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "systemLabel DESC,sortOrder ASC"

    move-object v2, p1

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_6
    move v2, v5

    goto :goto_1
.end method

.method public getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    return-object v0
.end method

.method getLocalMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;
    .locals 2
    .parameter "localMessageId"
    .parameter "loadBody"

    .prologue
    .line 2744
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForLocalMessageId([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 2746
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2747
    invoke-direct {p0, v0, p3}, Lcom/google/android/gm/provider/MailEngine;->getMessageFromCursor(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2749
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getMailSync()Lcom/google/android/gm/provider/MailSync;
    .locals 1

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    return-object v0
.end method

.method getMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;
    .locals 2
    .parameter "messageId"
    .parameter "loadBody"

    .prologue
    .line 2758
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->getMessageCursorForMessageId([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 2760
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 2761
    invoke-direct {p0, v0, p3}, Lcom/google/android/gm/provider/MailEngine;->getMessageFromCursor(Landroid/database/Cursor;Z)Lcom/google/android/gm/provider/MailSync$Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2763
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public getMessageCursorForConversationId([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2591
    const-string v0, "ME.messageConversationIdQuery"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2593
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2594
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2595
    const-string v1, "conversation = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2596
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2597
    const-string v1, "messageLabels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2599
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    const-string v7, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2602
    const-string v1, "ME.messageConversationIdQuery"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 2603
    new-instance v1, Lcom/google/android/gm/provider/CompressedMessageCursor;

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method public getMessageCursorForConversationId([Ljava/lang/String;JZ)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2663
    const-string v1, "ME.messageConversationIdQuery"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2665
    new-instance v9, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;

    invoke-direct {v9, p0}, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 2666
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2667
    const-string v2, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2668
    const-string v2, "conversation = ?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2669
    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2670
    new-instance v2, Lcom/google/android/gm/provider/MailEngine$7;

    invoke-direct {v2, p0, v9}, Lcom/google/android/gm/provider/MailEngine$7;-><init>(Lcom/google/android/gm/provider/MailEngine;Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;)V

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 2677
    const-string v2, "messageLabels"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2679
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "messages.messageId"

    const-string v8, "messages.messageId"

    move-object v3, p1

    move-object v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2681
    move-object v0, v1

    check-cast v0, Lcom/google/android/gm/provider/MailEngine$NetworkCursor;

    move-object p0, v0

    .line 2682
    invoke-virtual {v9, p2, p3, p0, p4}, Lcom/google/android/gm/provider/MailEngine$MessageCursorLogic;->configure(JLcom/google/android/gm/provider/MailEngine$NetworkCursor;Z)V

    .line 2684
    const-string v2, "ME.messageConversationIdQuery"

    invoke-static {v2}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 2685
    new-instance v2, Lcom/google/android/gm/provider/CompressedMessageCursor;

    invoke-direct {v2, v1}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;)V

    return-object v2
.end method

.method public getMessageCursorForLocalMessageId([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2690
    const-string v0, "ME.messageLocalIdQuery"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2692
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2693
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2694
    const-string v1, "messages._id = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2695
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2696
    const-string v1, "messageLabels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2698
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2700
    const-string v1, "ME.messageLocalIdQuery"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 2701
    new-instance v1, Lcom/google/android/gm/provider/CompressedMessageCursor;

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method getMessageCursorForMessageId([Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2706
    const-string v0, "ME.messageMessageIdQuery"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2708
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 2709
    const-string v1, "messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2710
    const-string v1, "messageId = ?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2711
    sget-object v1, Lcom/google/android/gm/provider/MailEngine;->MESSAGE_PROJECTION_MAP:Ljava/util/Map;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 2712
    const-string v1, "messageLabels"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getQueryBindArgs([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2714
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "messages.messageId"

    move-object v2, p1

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2715
    const-string v1, "ME.messageMessageIdQuery"

    invoke-static {v1}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 2716
    new-instance v1, Lcom/google/android/gm/provider/CompressedMessageCursor;

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/CompressedMessageCursor;-><init>(Landroid/database/Cursor;)V

    return-object v1
.end method

.method getNotificationTagLabel(J)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 1
    .parameter "labelId"

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabel(Lcom/google/android/gm/provider/MailCore$Label;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    return-object v0
.end method

.method public getPublicSettingsCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter

    .prologue
    .line 3695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3696
    const-string v1, "select "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3697
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 3698
    aget-object v2, p1, v1

    .line 3699
    if-eqz v1, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3700
    :cond_0
    const-string v3, "(select value from internal_sync_settings where name =\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3701
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3702
    const-string v3, "\') as "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3703
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3697
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3706
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3707
    return-object v0
.end method

.method public getRequestVersion()I
    .locals 1

    .prologue
    .line 4027
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v0

    return v0
.end method

.method public getServerPriorityInboxEnabled()Z
    .locals 1

    .prologue
    .line 4039
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailCore;->getInfoOverloadEnabled()Z

    move-result v0

    return v0
.end method

.method getSettingsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2
    .parameter "name"
    .parameter "defaultValue"

    .prologue
    .line 2033
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailEngine;->getEngineSettingsCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2035
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 2038
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v1, p2

    :goto_0
    return-object v1

    .line 2036
    :cond_0
    :try_start_1
    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 2038
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method declared-synchronized getStatusCursor([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .parameter "projection"

    .prologue
    .line 3719
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mStatus:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3720
    const/4 v0, 0x2

    .line 3726
    .local v0, currentTask:I
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3727
    .local v2, status:Ljava/lang/Integer;
    new-instance v1, Landroid/database/MatrixCursor;

    sget-object v3, Lcom/google/android/gm/provider/MailEngine;->STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 3728
    .local v1, cursor:Landroid/database/MatrixCursor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3729
    monitor-exit p0

    return-object v1

    .line 3721
    .end local v0           #currentTask:I
    .end local v1           #cursor:Landroid/database/MatrixCursor;
    .end local v2           #status:Ljava/lang/Integer;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mStatus:Ljava/util/BitSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 3722
    const/4 v0, 0x1

    .restart local v0       #currentTask:I
    goto :goto_0

    .line 3724
    .end local v0           #currentTask:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #currentTask:I
    goto :goto_0

    .line 3719
    .end local v0           #currentTask:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getSubscribedFeedUrl(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 2497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mUrls:Lcom/google/android/gm/provider/Urls;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Urls;->serverUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "client"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public labelsSynced()Z
    .locals 1

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailEngine;->getLabelMap()Lcom/google/android/gm/provider/Gmail$LabelMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->labelsSynced()Z

    move-result v0

    return v0
.end method

.method localMessageIdForMessageId(J)J
    .locals 5
    .parameter

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT _id FROM messages WHERE messageId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method messageIdPairForLocalMessageId(J)Lcom/google/android/gm/provider/MailEngine$MessageIdPair;
    .locals 10
    .parameter "localMessageId"

    .prologue
    const/4 v5, 0x0

    .line 2846
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2847
    .local v4, bindArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "messages"

    sget-object v2, Lcom/google/android/gm/provider/MailEngine;->PROJECTON_MESSAGE_ID_AND_CONVERSATION_ID:[Ljava/lang/String;

    const-string v3, "_id = ?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2851
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 2863
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    :goto_0
    return-object v0

    .line 2854
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 2855
    new-instance v9, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;

    invoke-direct {v9, p0}, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;-><init>(Lcom/google/android/gm/provider/MailEngine;)V

    .line 2856
    .local v9, pair:Lcom/google/android/gm/provider/MailEngine$MessageIdPair;
    const-string v0, "messageId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->messageId:J

    .line 2858
    const-string v0, "conversation"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->conversationId:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2863
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    goto :goto_0

    .end local v9           #pair:Lcom/google/android/gm/provider/MailEngine$MessageIdPair;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public onDownloadFinished(JJLjava/lang/String;Lcom/google/android/gm/provider/Gmail$AttachmentRendition;Z)V
    .locals 1
    .parameter "conversationId"
    .parameter "messageId"
    .parameter "partId"
    .parameter "desiredRendition"
    .parameter "success"

    .prologue
    .line 4032
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 4033
    return-void
.end method

.method public onSyncCanceled()V
    .locals 1

    .prologue
    .line 2392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    .line 2393
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync;->onSyncCanceled()V

    .line 2394
    return-void
.end method

.method public postBackgroundTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 5847
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mBackgroundTaskHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5848
    return-void
.end method

.method purgeStaleMessagesOutsideTransaction()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3829
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must not be in transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3831
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    if-nez v0, :cond_3

    move v0, v3

    .line 3833
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3835
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->purgeSomeStaleMessagesInTransaction()Z

    move-result v1

    .line 3836
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3837
    if-nez v1, :cond_2

    .line 3840
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3844
    :goto_1
    if-eqz v0, :cond_1

    .line 3845
    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3847
    :cond_1
    return v0

    .line 3838
    :cond_2
    const/4 v0, 0x1

    .line 3840
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public registerInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V
    .locals 3
    .parameter "handler"
    .parameter "listener"

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 808
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInitializationComplete:Z

    if-eqz v1, :cond_0

    .line 810
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailEngine;->callInitializationListener(Landroid/os/Handler;Lcom/google/android/gm/provider/MailEngine$MailEngineInitListener;)V

    .line 818
    :goto_0
    monitor-exit v0

    .line 819
    return-void

    .line 813
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    if-nez v1, :cond_1

    .line 814
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    .line 816
    :cond_1
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInitCallbacks:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 818
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestSync()V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v1, "gmail-ls"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 657
    return-void
.end method

.method public declared-synchronized sendNotificationIntents(Z)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x0

    .line 3910
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3912
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0}, Lcom/google/android/gm/provider/Gmail$LabelMap;->requery()V

    .line 3913
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3915
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3917
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    .line 3918
    const/4 v0, 0x0

    .line 3920
    :try_start_3
    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getNotificationTagLabel(J)Lcom/google/android/gm/provider/MailCore$Label;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    move-object v4, v0

    .line 3927
    :goto_1
    if-eqz v4, :cond_0

    .line 3928
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notificationLabelCount-"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3929
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gm/provider/MailEngine;->getSettingsInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3930
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    iget-wide v7, v4, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getNumUnreadConversations(J)I

    move-result v7

    .line 3931
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mLabelMap:Lcom/google/android/gm/provider/Gmail$LabelMap;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gm/provider/Gmail$LabelMap;->getNumUnreadConversations(J)I

    move-result v8

    .line 3932
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3933
    const-string v9, "Gmail"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3934
    const-string v9, "Gmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "considering sending notification. label="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", oldCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", newCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", unseenCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", getAttention="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    :cond_1
    if-eqz v7, :cond_2

    if-nez v8, :cond_3

    :cond_2
    move v0, v12

    move v8, v12

    .line 3946
    :cond_3
    if-ne v6, v8, :cond_4

    if-nez v0, :cond_4

    if-eqz p1, :cond_6

    .line 3951
    :cond_4
    if-lez v8, :cond_7

    const/4 v0, 0x1

    .line 3952
    :goto_2
    const-string v9, "Gmail"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3953
    const-string v9, "Gmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sending notification. Adjusted values are label="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", oldCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", newCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", unseenCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", getAttention="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    :cond_5
    iget-object v7, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v7, v2, v3}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v7

    invoke-direct {p0, v7, v4, v8, v0}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntent(Lcom/google/android/gm/provider/MailCore$Label;Lcom/google/android/gm/provider/MailCore$Label;IZ)V

    .line 3962
    :cond_6
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mNotificationLabels:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3967
    if-eq v6, v8, :cond_0

    .line 3968
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/google/android/gm/provider/MailEngine;->setSettingsValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 3910
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3915
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 3921
    :catch_0
    move-exception v4

    .line 3925
    const-string v5, "Gmail"

    const-string v6, "IllegalArgException while calculating notifications"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v4, v0

    goto/16 :goto_1

    :cond_7
    move v0, v12

    .line 3951
    goto/16 :goto_2

    .line 3972
    :cond_8
    monitor-exit p0

    return-void
.end method

.method public sendOrSaveDraft(JZJLandroid/content/ContentValues;)J
    .locals 25
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3222
    new-instance v15, Landroid/util/TimingLogger;

    const-string v4, "Gmail"

    const-string v5, "sendOrSaveDraft"

    invoke-direct {v15, v4, v5}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3224
    const/16 v16, 0x0

    .line 3225
    const-string v4, "beginTransactionNonExclusive"

    invoke-virtual {v15, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3227
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_6

    const/4 v4, 0x1

    .line 3229
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gm/provider/MailEngine;->messageIdPairForLocalMessageId(J)Lcom/google/android/gm/provider/MailEngine$MessageIdPair;

    move-result-object v5

    .line 3231
    if-nez v4, :cond_0

    if-nez v5, :cond_7

    :cond_0
    const-wide/16 v6, 0x0

    move-wide/from16 v17, v6

    .line 3234
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 3236
    new-instance v9, Landroid/content/ContentValues;

    move-object v0, v9

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3237
    const-string v6, "value fiddling"

    invoke-virtual {v15, v6}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3243
    if-nez v4, :cond_1

    if-nez v5, :cond_a

    .line 3246
    :cond_1
    const/16 v5, 0x14

    shl-long v5, v7, v5

    .line 3247
    const-string v10, "messageId"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3248
    const-wide/16 v10, 0x0

    cmp-long v10, p4, v10

    if-nez v10, :cond_8

    .line 3250
    const-wide/16 v10, 0x0

    move-wide/from16 v19, v5

    .line 3270
    :goto_2
    const-string v12, "fetch ref message"

    invoke-virtual {v15, v12}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3271
    const-string v12, "conversation"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3273
    const-string v12, "synced"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3274
    const-string v12, "dateSentMs"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3275
    const-string v12, "dateReceivedMs"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3280
    const-string v7, "body"

    invoke-virtual {v9, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 3281
    const-string v7, "bodyCompressed"

    invoke-virtual {v9, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 3285
    :cond_2
    const-string v7, "error"

    const-string v8, ""

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3286
    const-string v7, "clientCreated"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3289
    const-wide/16 v7, 0x0

    cmp-long v7, v10, v7

    if-eqz v7, :cond_3

    .line 3290
    const-string v7, "refMessageId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3292
    :cond_3
    const-string v7, "more values"

    invoke-virtual {v15, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3294
    const-string v7, "Gmail"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 3295
    const-string v7, "Gmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MailEngine.sendOrSaveMessage messageId="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " refMessageId="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", conversationId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3303
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v7, v0

    const-string v8, "message_labels"

    const-string v10, "message_messageId = ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v7, v8, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3305
    const-string v7, "delete old labels"

    invoke-virtual {v15, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3307
    const-string v7, "joinedAttachmentInfos"

    invoke-virtual {v9, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 3309
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getUpdatedAttachments(Ljava/lang/String;J)Ljava/util/List;

    move-result-object v7

    .line 3312
    const-string v8, "joinedAttachmentInfos"

    invoke-static {v7}, Lcom/google/android/gm/provider/Gmail$MessageModification;->joinedAttachmentsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3316
    if-eqz v4, :cond_b

    .line 3317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMessagesInserter:Landroid/database/DatabaseUtils$InsertHelper;

    move-object v4, v0

    invoke-virtual {v4, v9}, Landroid/database/DatabaseUtils$InsertHelper;->insert(Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 3318
    const-wide/16 v12, -0x1

    cmp-long v4, v10, v12

    if-nez v4, :cond_23

    .line 3319
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while inserting message with values: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3461
    :catchall_0
    move-exception v4

    move/from16 v5, v16

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3462
    const-string v6, "finish"

    invoke-virtual {v15, v6}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3464
    if-eqz v5, :cond_5

    .line 3465
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3466
    const-string v5, "onConversationChanged (new)"

    invoke-virtual {v15, v5}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3468
    :cond_5
    invoke-virtual {v15}, Landroid/util/TimingLogger;->dumpToLog()V

    throw v4

    .line 3227
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3231
    :cond_7
    :try_start_1
    iget-wide v6, v5, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->conversationId:J

    move-wide/from16 v17, v6

    goto/16 :goto_1

    .line 3252
    :cond_8
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getLocalMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v10

    .line 3253
    if-nez v10, :cond_9

    .line 3257
    const-wide/16 v10, 0x0

    move-wide/from16 v19, v5

    goto/16 :goto_2

    .line 3259
    :cond_9
    iget-wide v11, v10, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    .line 3260
    iget-wide v13, v10, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide/from16 v19, v11

    move-wide v10, v13

    goto/16 :goto_2

    .line 3264
    :cond_a
    iget-wide v10, v5, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->conversationId:J

    .line 3265
    iget-wide v5, v5, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->messageId:J

    .line 3268
    const-wide/16 v12, 0x0

    move-wide/from16 v19, v10

    move-wide v10, v12

    goto/16 :goto_2

    .line 3323
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    const-string v8, "messages"

    const-string v10, "_id = ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide/from16 v21, p1

    .line 3326
    :goto_4
    const-string v4, "insert or update"

    invoke-virtual {v15, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3329
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 3330
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_c
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 3331
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    move-object v9, v0

    sget-object v10, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->LOCAL_FILE:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    if-ne v9, v10, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gm/provider/Gmail$Attachment;->cachedContent:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 3333
    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3336
    :cond_d
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    .line 3342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 3343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3346
    const/4 v8, 0x0

    .line 3347
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gm/provider/Gmail$Attachment;

    .line 3348
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gm/provider/MailEngine;->cacheAttachment(Lcom/google/android/gm/provider/Gmail$Attachment;)Z

    move-result v9

    or-int/2addr v8, v9

    goto :goto_6

    .line 3350
    :cond_e
    const-string v4, "caching"

    invoke-virtual {v15, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3357
    if-eqz v8, :cond_f

    .line 3358
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3359
    const-string v8, "joinedAttachmentInfos"

    invoke-static {v7}, Lcom/google/android/gm/provider/Gmail$MessageModification;->joinedAttachmentsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v7, v0

    const-string v8, "messages"

    const-string v9, "_id = ?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v7, v8, v4, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3364
    const-string v4, "cache update"

    invoke-virtual {v15, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3368
    :cond_f
    if-eqz p3, :cond_14

    .line 3369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v7, v0

    const-string v8, "^r"

    invoke-virtual {v7, v8}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v7

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3393
    :goto_7
    const-string v4, "set new labels"

    invoke-virtual {v15, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3396
    if-eqz p3, :cond_1d

    .line 3397
    const-string v4, "messageSaved"

    move-object v12, v4

    .line 3411
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    move-object v4, v0

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gm/provider/Operations;->deleteOperationsForMessageId(J)V

    .line 3413
    const-string v4, "update operations"

    invoke-virtual {v15, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3416
    const-string v7, "gmail_send_immediately"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x1

    move/from16 v23, v7

    .line 3418
    :goto_9
    const-string v7, "gmail_send_without_sync"

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    .line 3420
    :goto_a
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    if-eqz v7, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    move-object v7, v0

    const-string v8, "gmail-ls"

    invoke-static {v7, v8}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    const/4 v7, 0x1

    move/from16 v24, v7

    .line 3422
    :goto_b
    if-nez p3, :cond_21

    if-eqz v23, :cond_21

    if-eqz v4, :cond_21

    if-nez v24, :cond_21

    const/4 v7, 0x1

    .line 3425
    :goto_c
    if-eqz v7, :cond_22

    .line 3426
    new-instance v7, Lcom/google/android/gm/provider/Operations$OperationInfo;

    const-wide/16 v13, 0x0

    move-wide/from16 v8, v19

    move-wide v10, v5

    invoke-direct/range {v7 .. v14}, Lcom/google/android/gm/provider/Operations$OperationInfo;-><init>(JJLjava/lang/String;J)V

    .line 3428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    move-object v8, v0

    invoke-virtual {v8, v7}, Lcom/google/android/gm/provider/Operations;->incrementAndAddOperations(Lcom/google/android/gm/provider/Operations$OperationInfo;)J

    .line 3433
    :goto_d
    const-string v7, "update operations"

    invoke-virtual {v15, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3435
    cmp-long v7, v19, v17

    if-eqz v7, :cond_10

    const-wide/16 v7, 0x0

    cmp-long v7, v17, v7

    if-eqz v7, :cond_10

    .line 3436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v7, v0

    sget-object v8, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-object v0, v7

    move-wide/from16 v1, v17

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 3439
    :cond_10
    const-string v7, "onConversationChanged (old)"

    invoke-virtual {v15, v7}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v7, v0

    sget-object v10, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-wide/from16 v8, v19

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3443
    const/4 v7, 0x1

    .line 3445
    if-nez p3, :cond_12

    if-eqz v23, :cond_12

    .line 3446
    :try_start_2
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3447
    const-string v9, "expedited"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3448
    if-eqz v4, :cond_11

    if-nez v24, :cond_11

    .line 3449
    const-string v4, "force"

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3450
    const-string v4, "sendwithoutsync"

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3451
    const-string v4, "sendwithoutsyncMessageId"

    invoke-virtual {v8, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3452
    const-string v4, "sendwithoutsyncConversationId"

    move-object v0, v8

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3454
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    const-string v5, "gmail-ls"

    invoke-static {v4, v5, v8}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3457
    :cond_12
    const-string v4, "notifyDatasetChanged"

    invoke-virtual {v15, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3462
    const-string v4, "finish"

    invoke-virtual {v15, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3464
    if-eqz v7, :cond_13

    .line 3465
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3466
    const-string v4, "onConversationChanged (new)"

    invoke-virtual {v15, v4}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 3468
    :cond_13
    invoke-virtual {v15}, Landroid/util/TimingLogger;->dumpToLog()V

    return-wide v21

    .line 3373
    :cond_14
    const/4 v4, 0x0

    .line 3374
    const/4 v7, 0x0

    :try_start_3
    move-object/from16 v0, p0

    move-wide v1, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->getMessage(JZ)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v7

    .line 3375
    if-eqz v7, :cond_18

    .line 3376
    if-nez v4, :cond_15

    iget-object v4, v7, Lcom/google/android/gm/provider/MailSync$Message;->toAddresses:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    move-object v8, v0

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/google/android/gm/provider/MailEngine;->addressStringsListContainsEmailAddress(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_15
    const/4 v4, 0x1

    .line 3378
    :goto_e
    if-nez v4, :cond_16

    iget-object v4, v7, Lcom/google/android/gm/provider/MailSync$Message;->ccAddresses:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    move-object v8, v0

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, v8}, Lcom/google/android/gm/provider/MailEngine;->addressStringsListContainsEmailAddress(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    :cond_16
    const/4 v4, 0x1

    .line 3380
    :goto_f
    if-nez v4, :cond_17

    iget-object v4, v7, Lcom/google/android/gm/provider/MailSync$Message;->bccAddresses:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    move-object v7, v0

    iget-object v7, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/google/android/gm/provider/MailEngine;->addressStringsListContainsEmailAddress(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    :cond_17
    const/4 v4, 0x1

    .line 3383
    :cond_18
    :goto_10
    if-eqz v4, :cond_19

    .line 3384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v7, v0

    const-string v8, "^i"

    invoke-virtual {v7, v8}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v7

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3389
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v7, v0

    const-string v8, "^^out"

    invoke-virtual {v7, v8}, Lcom/google/android/gm/provider/MailCore;->getLabelOrThrow(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v7

    const/4 v8, 0x1

    sget-object v9, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    goto/16 :goto_7

    .line 3376
    :cond_1a
    const/4 v4, 0x0

    goto :goto_e

    .line 3378
    :cond_1b
    const/4 v4, 0x0

    goto :goto_f

    .line 3380
    :cond_1c
    const/4 v4, 0x0

    goto :goto_10

    .line 3399
    :cond_1d
    const-string v4, "messageSent"

    move-object v12, v4

    goto/16 :goto_8

    .line 3416
    :cond_1e
    const/4 v7, 0x0

    move/from16 v23, v7

    goto/16 :goto_9

    .line 3418
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 3420
    :cond_20
    const/4 v7, 0x0

    move/from16 v24, v7

    goto/16 :goto_b

    .line 3422
    :cond_21
    const/4 v7, 0x0

    goto/16 :goto_c

    .line 3430
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mOperations:Lcom/google/android/gm/provider/Operations;

    move-object v7, v0

    move-wide/from16 v8, v19

    move-wide v10, v5

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gm/provider/Operations;->recordOperation(JJLjava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_d

    .line 3461
    :catchall_1
    move-exception v4

    move v5, v7

    goto/16 :goto_3

    :cond_23
    move-wide/from16 v21, v10

    goto/16 :goto_4
.end method

.method setInternalSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 2067
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2068
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2070
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mInternalDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "internal_sync_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2071
    return-void
.end method

.method public setLabelOnConversation(JJLjava/lang/String;Z)V
    .locals 10
    .parameter "conversationId"
    .parameter "maxMessageId"
    .parameter "canonicalLabel"
    .parameter "on"

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3042
    const/4 v9, 0x0

    .line 3043
    .local v9, sendNotification:Z
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v8

    .line 3045
    .local v8, labelsToNotify:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v0, p5}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v5

    .line 3046
    .local v5, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-eqz v5, :cond_0

    .line 3047
    iget-wide v0, v5, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3048
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v7, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3050
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 3052
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3053
    const/4 v9, 0x1

    .line 3056
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3057
    if-eqz v9, :cond_1

    .line 3058
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3059
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    .line 3062
    :cond_1
    return-void

    .line 3056
    .end local v5           #label:Lcom/google/android/gm/provider/MailCore$Label;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3057
    if-eqz v9, :cond_2

    .line 3058
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3059
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    :cond_2
    throw v0
.end method

.method public setLabelOnConversationsBulk([Landroid/content/ContentValues;)V
    .locals 16
    .parameter

    .prologue
    .line 3065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 3066
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v11

    .line 3070
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    .line 3071
    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p1, v4

    .line 3072
    const-string v2, "_id"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3073
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "values must have \'_id\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3138
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3141
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3142
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    throw v2

    .line 3076
    :cond_0
    :try_start_1
    const-string v2, "_id"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3078
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 3079
    if-nez v2, :cond_1

    .line 3080
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3081
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v12, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3083
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3071
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 3086
    :cond_2
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v10, v0

    .line 3087
    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 3088
    const/4 v2, 0x0

    .line 3090
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 3091
    const-string v3, "canonicalName"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3092
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "values must have \'canonicalName\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3095
    :cond_4
    const-string v3, "canonicalName"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3097
    const-string v4, "maxMessageId"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3098
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "values must have \'maxMessageId\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3101
    :cond_5
    const-string v4, "maxMessageId"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 3104
    const-string v4, "add_label_action"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3105
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "values must have \'add_label_action\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3108
    :cond_6
    const-string v4, "add_label_action"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 3110
    const-string v4, "Gmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MailProvider.insert(): adding or removing label "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " to conversation "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", maxMessageId "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " operation (is add) = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3114
    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3115
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "label is not user-settable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3119
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v4, v0

    invoke-virtual {v4, v3}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v7

    .line 3120
    if-eqz v7, :cond_8

    .line 3121
    iget-wide v2, v7, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v11, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3122
    const/4 v15, 0x1

    .line 3124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v2, v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v9, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    move v2, v15

    goto/16 :goto_2

    .line 3127
    :cond_8
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing label in setLabelOnConversationsBulk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3131
    :cond_9
    if-eqz v2, :cond_3

    .line 3132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v2, v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    goto/16 :goto_1

    .line 3136
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3141
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3142
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    .line 3144
    return-void
.end method

.method public setLabelOnLocalMessage(JLjava/lang/String;Z)V
    .locals 16
    .parameter "localMessageId"
    .parameter "canonicalLabel"
    .parameter "on"

    .prologue
    .line 2899
    invoke-virtual/range {p0 .. p2}, Lcom/google/android/gm/provider/MailEngine;->messageIdPairForLocalMessageId(J)Lcom/google/android/gm/provider/MailEngine$MessageIdPair;

    move-result-object v15

    .line 2900
    .local v15, pair:Lcom/google/android/gm/provider/MailEngine$MessageIdPair;
    if-nez v15, :cond_0

    .line 2901
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLabelOnLocalMessage returning because message pair does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    :goto_0
    return-void

    .line 2906
    :cond_0
    iget-wide v4, v15, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->messageId:J

    .line 2907
    .local v4, messageId:J
    iget-wide v13, v15, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->conversationId:J

    .line 2909
    .local v13, conversationId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v6

    .line 2910
    .local v6, label:Lcom/google/android/gm/provider/MailCore$Label;
    if-nez v6, :cond_1

    .line 2911
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #messageId:J
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLabelOnLocalMessage returning because label does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2915
    .restart local v4       #messageId:J
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 2917
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v3, v0

    sget-object v8, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 2919
    invoke-direct/range {p0 .. p2}, Lcom/google/android/gm/provider/MailEngine;->getSyncedForLocalMessageId(J)Z

    move-result v11

    .line 2921
    .local v11, messageSynced:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v7, v0

    sget-object v10, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v12, 0x1

    move-wide v8, v13

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    .line 2923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2926
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    goto :goto_0

    .line 2925
    .end local v11           #messageSynced:Z
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    .end local v4           #messageId:J
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2926
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    throw v3
.end method

.method public setLabelOnLocalMessageBulk([Landroid/content/ContentValues;)V
    .locals 25
    .parameter

    .prologue
    .line 2931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 2932
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v17

    .line 2935
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v18

    .line 2936
    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, p1, v5

    .line 2937
    const-string v3, "conversation"

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2938
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "values must have \'conversation\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3031
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3034
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3035
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    throw v3

    .line 2941
    :cond_0
    :try_start_1
    const-string v3, "conversation"

    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 2943
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2944
    if-nez v3, :cond_1

    .line 2945
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 2946
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v18

    move-object v1, v7

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2948
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2936
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 2951
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v16, v0

    .line 2952
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2953
    const/4 v3, 0x0

    .line 2954
    const/4 v4, 0x0

    .line 2956
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move/from16 v21, v4

    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 2957
    const-string v4, "canonicalName"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2958
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "values must have \'canonicalName\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2961
    :cond_4
    const-string v4, "canonicalName"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2963
    const-string v4, "_id"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2964
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "values must have \'_id\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2967
    :cond_5
    const-string v4, "_id"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 2969
    const-string v4, "messageId"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 2970
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "values must have \'messageId\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2973
    :cond_6
    const-string v4, "messageId"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2975
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->messageIdPairForLocalMessageId(J)Lcom/google/android/gm/provider/MailEngine$MessageIdPair;

    move-result-object v7

    .line 2976
    const/4 v8, 0x1

    .line 2977
    if-eqz v7, :cond_7

    iget-wide v9, v7, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->conversationId:J

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_7

    iget-wide v9, v7, Lcom/google/android/gm/provider/MailEngine$MessageIdPair;->messageId:J

    cmp-long v7, v9, v4

    if-eqz v7, :cond_f

    .line 2981
    :cond_7
    const/4 v7, 0x0

    move v9, v7

    .line 2984
    :goto_3
    const-string v7, "add_label_action"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 2985
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "values must have \'add_label_action\'"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2988
    :cond_8
    const-string v7, "add_label_action"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2990
    const-string v8, "Gmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MailProvider.insert(): adding or removing label "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to local message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " operation (is add) = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    invoke-static {v6}, Lcom/google/android/gm/provider/Gmail;->isLabelUserSettable(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 2994
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "label is not user-settable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2998
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v8, v0

    invoke-virtual {v8, v6}, Lcom/google/android/gm/provider/MailCore;->getLabelOrNull(Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v6

    .line 2999
    if-eqz v6, :cond_e

    .line 3000
    iget-wide v10, v6, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3001
    const/16 v24, 0x1

    .line 3002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v3, v0

    sget-object v8, Lcom/google/android/gm/provider/Operations$RecordHistory;->TRUE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/MailCore;->setLabelOnMessage(JLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3004
    if-nez v9, :cond_a

    .line 3009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v8, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget-object v15, Lcom/google/android/gm/provider/Operations$RecordHistory;->FALSE:Lcom/google/android/gm/provider/Operations$RecordHistory;

    move-wide v11, v4

    move-object v13, v6

    move v14, v7

    invoke-virtual/range {v8 .. v15}, Lcom/google/android/gm/provider/MailCore;->setLabelOnConversation(JJLcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/Operations$RecordHistory;)V

    .line 3013
    :cond_a
    if-nez v21, :cond_d

    .line 3018
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailEngine;->getSyncedForLocalMessageId(J)Z

    move-result v3

    move/from16 v4, v24

    :goto_4
    move/from16 v21, v3

    move v3, v4

    .line 3021
    goto/16 :goto_2

    .line 3023
    :cond_b
    if-eqz v3, :cond_3

    .line 3024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    move-object v3, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const/4 v8, 0x1

    move/from16 v7, v21

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gm/provider/MailCore;->onConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;ZZ)V

    goto/16 :goto_1

    .line 3029
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3034
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 3035
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailEngine;->broadcastLabelNotifications(Ljava/util/Set;)V

    .line 3037
    return-void

    :cond_d
    move/from16 v3, v21

    move/from16 v4, v24

    goto :goto_4

    :cond_e
    move v4, v3

    move/from16 v3, v21

    goto :goto_4

    :cond_f
    move v9, v8

    goto/16 :goto_3
.end method

.method setSyncSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2060
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2061
    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2063
    iget-object v1, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sync_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2064
    return-void
.end method

.method setTransactionListener(Landroid/database/sqlite/SQLiteTransactionListener;)V
    .locals 0
    .parameter "transactionListener"

    .prologue
    .line 5959
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;

    .line 5960
    return-void
.end method

.method public sync(Landroid/content/SyncResult;Landroid/os/Bundle;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2095
    new-instance v0, Landroid/util/TimingLogger;

    const-string v1, "Gmail-profiling"

    const-string v2, "sync"

    invoke-direct {v0, v1, v2}, Landroid/util/TimingLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    const-string v1, "start"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2097
    new-instance v1, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;

    invoke-direct {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;-><init>()V

    .line 2099
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mMailSync:Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync;->clearStats()V

    .line 2101
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 2177
    :goto_0
    return-void

    .line 2107
    :cond_0
    iput-boolean v8, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncCancelled:Z

    .line 2109
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    .line 2110
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 2112
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v3, "gmail-ls"

    invoke-static {v2, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    .line 2113
    if-gez v2, :cond_1

    .line 2114
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailEngine;->getIsSyncable()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v9

    .line 2115
    :goto_1
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;

    const-string v4, "gmail-ls"

    invoke-static {v3, v4, v2}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 2119
    :cond_1
    const-string v3, "initialize"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    if-eqz v3, :cond_5

    .line 2165
    iput-boolean v8, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 2169
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v8, :cond_3

    .line 2170
    :cond_2
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2172
    :cond_3
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 2175
    invoke-direct {p0, v9, v8}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto :goto_0

    :cond_4
    move v2, v8

    .line 2114
    goto :goto_1

    .line 2123
    :cond_5
    :try_start_1
    new-instance v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;

    invoke-direct {v3}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;-><init>()V

    .line 2124
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->backgroundSync:Z

    .line 2126
    const-string v4, "sendwithoutsync"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2127
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    .line 2128
    const-string v4, "sendwithoutsyncMessageId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    .line 2129
    const-string v4, "sendwithoutsyncConversationId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    .line 2130
    const-string v4, "Gmail"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2131
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading send without sync message id, conversation id, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2137
    :cond_6
    if-gtz v2, :cond_9

    .line 2165
    iput-boolean v8, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 2169
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz v8, :cond_8

    .line 2170
    :cond_7
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2172
    :cond_8
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 2175
    invoke-direct {p0, v9, v8}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 2141
    :cond_9
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine;->mSyncLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2142
    const/4 v4, 0x0

    :try_start_3
    invoke-direct {p0, v1, v4, v3, p1}, Lcom/google/android/gm/provider/MailEngine;->runSyncLoop(Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;Landroid/content/SyncResult;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    if-eqz v3, :cond_18

    move v3, v9

    .line 2145
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2147
    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailEngine;->sendNotificationIntents(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Landroid/accounts/OperationCanceledException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2165
    iput-boolean v8, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 2169
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v3, :cond_b

    .line 2170
    :cond_a
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2172
    :cond_b
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 2175
    invoke-direct {p0, v9, v8}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 2145
    :catchall_0
    move-exception v3

    move v4, v8

    :goto_3
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lcom/google/android/gm/provider/MailEngine$AuthenticationException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lcom/google/android/gm/provider/MailSync$ResponseParseException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Landroid/accounts/OperationCanceledException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 2148
    :catch_0
    move-exception v2

    move v3, v4

    .line 2149
    :goto_4
    :try_start_8
    const-string v4, "Gmail"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2150
    const-string v4, "Gmail"

    const-string v5, "Auth exception"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2152
    :cond_c
    iget-object v2, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numAuthExceptions:J

    add-long/2addr v4, v10

    iput-wide v4, v2, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2165
    iput-boolean v8, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 2169
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v3, :cond_e

    .line 2170
    :cond_d
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2172
    :cond_e
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 2175
    invoke-direct {p0, v9, v8}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 2153
    :catch_1
    move-exception v2

    move v3, v8

    .line 2154
    :goto_5
    :try_start_9
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    iget-object v2, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numParseExceptions:J

    add-long/2addr v4, v10

    iput-wide v4, v2, Landroid/content/SyncStats;->numParseExceptions:J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2165
    iput-boolean v8, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 2169
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v3, :cond_10

    .line 2170
    :cond_f
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2172
    :cond_10
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 2175
    invoke-direct {p0, v9, v8}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 2156
    :catch_2
    move-exception v2

    move v3, v8

    .line 2157
    :goto_6
    :try_start_a
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Canceled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2165
    iput-boolean v8, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 2169
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v1

    if-nez v1, :cond_11

    if-eqz v3, :cond_12

    .line 2170
    :cond_11
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2172
    :cond_12
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 2175
    invoke-direct {p0, v9, v8}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 2158
    :catch_3
    move-exception v2

    move v3, v8

    .line 2159
    :goto_7
    :try_start_b
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    const-string v4, "Gmail"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2161
    const-string v4, "Gmail"

    const-string v5, "Detail: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2163
    :cond_13
    iget-object v2, p1, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v4, v2, Landroid/content/SyncStats;->numIoExceptions:J

    add-long/2addr v4, v10

    iput-wide v4, v2, Landroid/content/SyncStats;->numIoExceptions:J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 2165
    iput-boolean v8, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 2169
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v1

    if-nez v1, :cond_14

    if-eqz v3, :cond_15

    .line 2170
    :cond_14
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2172
    :cond_15
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 2175
    invoke-direct {p0, v9, v8}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    goto/16 :goto_0

    .line 2165
    :catchall_1
    move-exception v2

    move v3, v8

    :goto_8
    iput-boolean v8, p0, Lcom/google/android/gm/provider/MailEngine;->mIsSyncInProgress:Z

    .line 2169
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailEngine$MailEngineSyncObserver;->changesReceived()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz v3, :cond_17

    .line 2170
    :cond_16
    invoke-direct {p0, v8}, Lcom/google/android/gm/provider/MailEngine;->notifyDatasetChanged(Z)V

    .line 2172
    :cond_17
    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/util/TimingLogger;->addSplit(Ljava/lang/String;)V

    .line 2173
    invoke-virtual {v0}, Landroid/util/TimingLogger;->dumpToLog()V

    .line 2175
    invoke-direct {p0, v9, v8}, Lcom/google/android/gm/provider/MailEngine;->changeTaskState(IZ)V

    throw v2

    .line 2165
    :catchall_2
    move-exception v2

    move v3, v4

    goto :goto_8

    :catchall_3
    move-exception v2

    goto :goto_8

    .line 2158
    :catch_4
    move-exception v2

    move v3, v4

    goto :goto_7

    :catch_5
    move-exception v2

    goto :goto_7

    .line 2156
    :catch_6
    move-exception v2

    move v3, v4

    goto/16 :goto_6

    :catch_7
    move-exception v2

    goto/16 :goto_6

    .line 2153
    :catch_8
    move-exception v2

    move v3, v4

    goto/16 :goto_5

    :catch_9
    move-exception v2

    goto/16 :goto_5

    .line 2148
    :catch_a
    move-exception v2

    move v3, v8

    goto/16 :goto_4

    :catch_b
    move-exception v2

    goto/16 :goto_4

    .line 2145
    :catchall_4
    move-exception v4

    move-object v12, v4

    move v4, v3

    move-object v3, v12

    goto/16 :goto_3

    :catchall_5
    move-exception v3

    goto/16 :goto_3

    :cond_18
    move v3, v8

    goto/16 :goto_2
.end method
