.class public final Lcom/google/android/gm/provider/MailSync;
.super Ljava/lang/Object;
.source "MailSync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/MailSync$2;,
        Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
        Lcom/google/android/gm/provider/MailSync$AttachmentPartSource;,
        Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;,
        Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;,
        Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;,
        Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;,
        Lcom/google/android/gm/provider/MailSync$MailPullParser;,
        Lcom/google/android/gm/provider/MailSync$Message;,
        Lcom/google/android/gm/provider/MailSync$ConversationSink;,
        Lcom/google/android/gm/provider/MailSync$Conversation;,
        Lcom/google/android/gm/provider/MailSync$ConversationInfo;,
        Lcom/google/android/gm/provider/MailSync$SyncRationale;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field static final BUILTIN_LABELS:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$LabelInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final INITIAL_LABELS_INCLUDED:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final INITIAL_LABELS_PARTIAL:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern; = null

.field static final NAMESPACE:Ljava/lang/String; = null

.field public static final NULL_SYNC_RATIONALE:Lcom/google/android/gm/provider/MailSync$SyncRationale; = null

.field static final SETTING_SERVER_VERSION:Ljava/lang/String; = "serverVersion"

.field private static final SYNC_STATS_LABELS:[Ljava/lang/String;


# instance fields
.field private final dirtyConversations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCounters:[J

.field private mDirtySettings:Ljava/util/Map;
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

.field private mEarliestAllowedSyncTimeAsElapsedRealtime:J

.field private mFakeIoExceptionWhenHandlingMessageSavedOrSent:Z

.field private volatile mIsSyncCanceled:Z

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettings:Ljava/util/Map;
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

.field private final mStore:Lcom/google/android/gm/provider/MailStore;

.field mUrls:Lcom/google/android/gm/provider/Urls;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 91
    const-class v0, Lcom/google/android/gm/provider/MailSync;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/google/android/gm/provider/MailSync;->$assertionsDisabled:Z

    .line 117
    sput-object v6, Lcom/google/android/gm/provider/MailSync;->NULL_SYNC_RATIONALE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 224
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "^r"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_INCLUDED:Ljava/util/Set;

    .line 225
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "^i"

    aput-object v1, v0, v2

    const-string v1, "^f"

    aput-object v1, v0, v3

    const-string v1, "^iim"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_PARTIAL:Ljava/util/Set;

    .line 255
    sput-object v6, Lcom/google/android/gm/provider/MailSync;->NAMESPACE:Ljava/lang/String;

    .line 258
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 574
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "M"

    aput-object v1, v0, v2

    const-string v1, "L"

    aput-object v1, v0, v3

    const-string v1, "C"

    aput-object v1, v0, v4

    const-string v1, "A"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "U"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "u"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "S"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "z"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->SYNC_STATS_LABELS:[Ljava/lang/String;

    .line 3663
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/MailSync;->BUILTIN_LABELS:Ljava/util/Map;

    .line 3665
    const-string v0, "^f"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3666
    const-string v0, "^^out"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3667
    const-string v0, "^i"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3668
    const-string v0, "^r"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3669
    const-string v0, "^b"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3670
    const-string v0, "^all"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3671
    const-string v0, "^u"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3672
    const-string v0, "^k"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3673
    const-string v0, "^s"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3674
    const-string v0, "^t"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3675
    const-string v0, "^vm"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3676
    const-string v0, "^^cached"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3677
    const-string v0, "^^important"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3678
    const-string v0, "^^unimportant"

    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->addBuiltInLabelInfo(Ljava/lang/String;)V

    .line 3679
    return-void

    :cond_0
    move v0, v2

    .line 91
    goto/16 :goto_0
.end method

.method public constructor <init>(Lcom/google/android/gm/provider/MailStore;Lcom/google/android/gm/provider/Urls;Ljava/util/Map;Landroid/content/Context;Z)V
    .locals 8
    .parameter "store"
    .parameter "urls"
    .parameter
    .parameter "context"
    .parameter "validateSyncSet"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/provider/MailStore;",
            "Lcom/google/android/gm/provider/Urls;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p3, settings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-wide v3, p0, Lcom/google/android/gm/provider/MailSync;->mEarliestAllowedSyncTimeAsElapsedRealtime:J

    .line 265
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    .line 2088
    iput-boolean v5, p0, Lcom/google/android/gm/provider/MailSync;->mFakeIoExceptionWhenHandlingMessageSavedOrSent:Z

    .line 443
    iput-object p1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    .line 444
    iput-object p2, p0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    .line 445
    iput-object p4, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    .line 446
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    .line 448
    iput-object p3, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    .line 449
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    .line 454
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->clearStats()V

    .line 456
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 459
    const-string v0, "clientId"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 461
    const-string v0, "needConfigSuggestion"

    invoke-direct {p0}, Lcom/google/android/gm/provider/MailSync;->getMinServerVersionForConfigInfo()I

    move-result v1

    if-lez v1, :cond_f

    move v1, v6

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 463
    const-string v0, "configDirty"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 464
    const-string v0, "conversationAgeDays"

    const-wide/16 v1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 466
    const-string v0, "maxAttachmentSize"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 468
    const-string v0, "labelsIncluded"

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_INCLUDED:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 469
    const-string v0, "labelsPartial"

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_PARTIAL:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 470
    const-string v0, "labelsAll"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 474
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 475
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 476
    const-string v0, "lowestBackwardConversationId"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 477
    const-string v0, "highestBackwardConversationId"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 478
    const-string v0, "moreForwardSyncNeeded"

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 480
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "needConfigSuggestion"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    const-string v0, "needConfigSuggestion"

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "unackedSentOperations"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    const-string v0, "unackedSentOperations"

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "nextUnackedSentOp"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 492
    const-string v0, "nextUnackedSentOp"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "errorCountNextUnackedSentOp"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 496
    const-string v0, "errorCountNextUnackedSentOp"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 499
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "nextUnackedOpWriteTime"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 500
    const-string v0, "nextUnackedOpWriteTime"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 503
    :cond_5
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "serverVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 504
    const-string v0, "serverVersion"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 507
    :cond_6
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "clientOpToAck"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 508
    const-string v0, "clientOpToAck"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 511
    :cond_7
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "clientId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 512
    const-string v0, "clientId"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 515
    :cond_8
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "configDirty"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 516
    const-string v0, "configDirty"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 519
    :cond_9
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "highestProcessedServerOperationId"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 520
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 523
    :cond_a
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "moreForwardSyncNeeded"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 524
    const-string v0, "moreForwardSyncNeeded"

    invoke-virtual {p0, v0, v5}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 527
    :cond_b
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "labelsIncluded"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 528
    const-string v0, "labelsIncluded"

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_INCLUDED:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 531
    :cond_c
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "labelsPartial"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 532
    const-string v0, "labelsPartial"

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->INITIAL_LABELS_PARTIAL:Ljava/util/Set;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 537
    :cond_d
    if-eqz p5, :cond_e

    .line 538
    const-string v0, "configDirty"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 541
    invoke-virtual {p0, v7, v7, v7}, Lcom/google/android/gm/provider/MailSync;->checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 542
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 544
    :cond_e
    return-void

    :cond_f
    move v1, v5

    .line 461
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/gm/provider/MailSync;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/provider/MailSync;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/provider/MailSync;)Lcom/google/android/gm/provider/MailStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    return-object v0
.end method

.method private addAddressesInProto(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/List;)V
    .locals 4
    .parameter "messageProto"
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2670
    .local p3, addressList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2671
    .local v1, addressProtos:Ljava/util/List;,"Ljava/util/List<Lcom/google/common/io/protocol/ProtoBuf;>;"
    invoke-static {p1, p2, v1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2672
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/protocol/ProtoBuf;

    .line 2673
    .local v0, addressProto:Lcom/google/common/io/protocol/ProtoBuf;
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->readEmailFromProto(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2675
    .end local v0           #addressProto:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    return-void
.end method

.method private static addBuiltInLabelInfo(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3682
    sget-object v7, Lcom/google/android/gm/provider/MailSync;->BUILTIN_LABELS:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gm/provider/MailStore$LabelInfo;

    const v5, 0x7fffffff

    const-string v6, "SHOW"

    move-object v1, p0

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailStore$LabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    invoke-interface {v7, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3685
    return-void
.end method

.method private getBodyAsBytes(Landroid/database/Cursor;)[B
    .locals 2
    .parameter

    .prologue
    .line 2661
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2666
    return-object v0

    .line 2662
    :catch_0
    move-exception v0

    .line 2664
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UTF-8 not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDirtyConversations()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1}, Lcom/google/android/gm/provider/MailStore;->getDirtyConversations()Ljava/util/ArrayList;

    move-result-object v0

    .line 1227
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1228
    return-object v0
.end method

.method private getMinServerVersionForConfigInfo()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1244
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "gmail_config_info_min_server_version"

    invoke-static {v2, v3}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1246
    .local v1, setting:Ljava/lang/String;
    if-nez v1, :cond_0

    move v2, v4

    .line 1250
    :goto_0
    return v2

    .line 1248
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1249
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v4

    .line 1250
    goto :goto_0
.end method

.method private getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3009
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/Gmail;->SPACE_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private getStringSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 3001
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3002
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 3004
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleCheckConversationValues(JJ)V
    .locals 1
    .parameter "conversationId"
    .parameter "highestMessageId"

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gm/provider/MailStore;->addSyncedConversationInfoToCheck(JJ)V

    .line 1698
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 1699
    return-void
.end method

.method private handleConfigAcceptedProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 3
    .parameter "configAccepted"

    .prologue
    .line 1276
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 1277
    .local v0, clientId:J
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->handleConfigAcceptedValues(J)V

    .line 1278
    return-void
.end method

.method private handleConfigInfoProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 6
    .parameter "configInfo"

    .prologue
    const/4 v5, 0x2

    .line 1232
    const-string v4, "Gmail"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printConfigInfoProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 1233
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 1234
    .local v0, durationDays:J
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    .line 1235
    .local v3, includeLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 1236
    .local v2, durationLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1, v5, v3}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllStrings(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 1238
    const/4 v4, 0x3

    invoke-static {p1, v4, v2}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllStrings(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 1240
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/google/android/gm/provider/MailSync;->handleConfigInfoValues(JLjava/util/Set;Ljava/util/Set;)V

    .line 1241
    return-void
.end method

.method private handleConversationProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;Lcom/google/android/gm/provider/MailSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 1710
    const-string v5, "MS.handleConversation"

    invoke-static {v5}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 1711
    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v5

    .line 1712
    const-wide/16 v7, 0x0

    .line 1713
    const/4 v9, 0x3

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1714
    const/4 v7, 0x3

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v7

    .line 1718
    :cond_0
    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gm/provider/MailSync;->syncRationaleFromProto(I)Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-result-object v9

    .line 1720
    const-string v10, "Gmail"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1721
    const-string v10, "Gmail"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleConversationProto: conversationId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", SyncRationale: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_1
    const/4 v10, 0x1

    .line 1725
    const/4 v11, 0x0

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v12, v0

    invoke-interface {v12}, Lcom/google/android/gm/provider/MailStore;->prepare()V

    .line 1729
    const/4 v12, 0x0

    .line 1736
    :try_start_0
    new-instance v13, Lcom/google/android/gm/provider/Dictionary;

    invoke-direct {v13}, Lcom/google/android/gm/provider/Dictionary;-><init>()V

    move/from16 v19, v12

    move v12, v10

    move/from16 v10, v19

    .line 1738
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z

    move v14, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v14, :cond_3

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 1898
    :goto_1
    return-void

    .line 1743
    :cond_3
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .line 1764
    if-nez v14, :cond_8

    .line 1765
    :try_start_2
    const-string v10, "Gmail"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleConversationProto: End of stream while reading next chunk part. conversationId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v10, v0

    sget-object v13, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-interface {v10, v5, v6, v13}, Lcom/google/android/gm/provider/MailStore;->notifyConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 1872
    if-eqz v12, :cond_6

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v10, v0

    move-object v0, v10

    move-wide v1, v5

    move-object v3, v9

    move-object/from16 v4, p5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailStore;->notifyConversationLoaded(JLcom/google/android/gm/provider/MailSync$SyncRationale;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 1881
    const-wide/16 v12, 0x0

    cmp-long v10, v7, v12

    if-eqz v10, :cond_5

    cmp-long v10, v7, v5

    if-eqz v10, :cond_5

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v10, v0

    move-object v0, v10

    move-wide v1, v7

    move-object v3, v9

    move-object/from16 v4, p5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailStore;->notifyConversationLoaded(JLcom/google/android/gm/provider/MailSync$SyncRationale;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 1886
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    move-object v7, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1888
    const-string v7, "Gmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleConversationProto: Dirty conversation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " synced successfully. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Marking as dirty in DB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v7, v0

    invoke-interface {v7, v5, v6}, Lcom/google/android/gm/provider/MailStore;->markConversationDirty(J)V

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    move-object v7, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v7, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1895
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 1897
    const-string v5, "MS.handleConversation"

    invoke-static {v5, v11}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1744
    :catch_0
    move-exception v10

    .line 1752
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getDirtyConversations()Ljava/util/ArrayList;

    move-result-object v12

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1753
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1895
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v6, v0

    invoke-interface {v6}, Lcom/google/android/gm/provider/MailStore;->commit()V

    throw v5

    .line 1755
    :cond_7
    const/4 v10, 0x1

    .line 1756
    const/4 v12, 0x0

    .line 1759
    :try_start_4
    const-string v14, "Gmail"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleConversationProto: Chunk to big to fit in memory. marking conversation "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " as dirty"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    move-object v14, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1769
    :cond_8
    const/16 v15, 0xb

    invoke-virtual {v14, v15}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v15

    if-eqz v15, :cond_c

    .line 1770
    if-nez v10, :cond_2

    .line 1775
    const/16 v15, 0xb

    :try_start_5
    invoke-virtual {v14, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v5

    move-object v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailSync;->readMessageFromProto(Lcom/google/common/io/protocol/ProtoBuf;JLcom/google/android/gm/provider/Dictionary;)Lcom/google/android/gm/provider/MailSync$Message;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v14

    .line 1787
    :try_start_6
    iget-object v15, v14, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    if-nez v15, :cond_9

    .line 1788
    const/4 v10, 0x1

    .line 1789
    const/4 v12, 0x0

    .line 1792
    const-string v15, "Gmail"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleConversationProto: Could not deflate message "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v14

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    move-wide/from16 v17, v0

    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ". marking conversation "

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " as dirty"

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    move-object v14, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1779
    :catch_1
    move-exception v12

    .line 1780
    const-string v14, "Gmail"

    const-string v15, "Corrupted data while creating dictionary. Deleting corrupted messages and retrying conversation fetch"

    invoke-static {v14, v15, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v14, v0

    invoke-virtual {v12}, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->getMessageId()J

    move-result-wide v15

    move-object v0, v14

    move-wide v1, v5

    move-wide v3, v15

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailStore;->deleteCorruptedMessage(JJ)V

    .line 1783
    const/4 v12, 0x0

    .line 1784
    goto/16 :goto_0

    .line 1798
    :cond_9
    const-string v15, "Gmail"

    const/16 v16, 0x2

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 1799
    const-string v15, "Gmail"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleConversationProto: message: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcom/google/android/gm/provider/MailSync$Message;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v15, v0

    move-object v0, v15

    move-object v1, v14

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/provider/MailStore;->addOrUpdateMessage(Lcom/google/android/gm/provider/MailSync$Message;Z)V

    .line 1802
    if-eqz p3, :cond_b

    .line 1803
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gm/provider/MailSyncObserver;->onMessageReceived()V

    .line 1805
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 1867
    :goto_3
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->backgroundSync:Z

    move v14, v0

    if-eqz v14, :cond_2

    .line 1868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v14, v0

    invoke-interface {v14}, Lcom/google/android/gm/provider/MailStore;->yieldForContention()Z

    goto/16 :goto_0

    .line 1806
    :cond_c
    const/16 v15, 0x12

    invoke-virtual {v14, v15}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v15

    if-eqz v15, :cond_10

    .line 1809
    const/16 v15, 0x12

    :try_start_7
    invoke-virtual {v14, v15}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailSync;->unzipMessageBatch(Lcom/google/common/io/protocol/ProtoBuf;J)Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v14

    .line 1820
    if-nez v14, :cond_f

    .line 1821
    const/4 v10, 0x1

    .line 1822
    const/4 v12, 0x0

    .line 1825
    :try_start_8
    const-string v14, "Gmail"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleConversationProto: Could not deflate conversation "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ". marking conversation as dirty"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    move-object v14, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1812
    :catch_2
    move-exception v12

    .line 1813
    const-string v14, "Gmail"

    const-string v15, "Corrupted data while creating dictionary. Deleting corrupted messages and retrying conversation fetch"

    invoke-static {v14, v15, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v14, v0

    invoke-virtual {v12}, Lcom/google/android/gm/provider/CompressedMessageCursor$CorruptedMessageException;->getMessageId()J

    move-result-wide v15

    move-object v0, v14

    move-wide v1, v5

    move-wide v3, v15

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailStore;->deleteCorruptedMessage(JJ)V

    .line 1816
    const/4 v12, 0x0

    .line 1817
    goto/16 :goto_0

    .line 1846
    :cond_d
    const/16 v16, 0xb

    invoke-virtual/range {v15 .. v16}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move-wide v2, v5

    move-object/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gm/provider/MailSync;->readMessageFromProto(Lcom/google/common/io/protocol/ProtoBuf;JLcom/google/android/gm/provider/Dictionary;)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v15

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    move/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/provider/MailStore;->addOrUpdateMessage(Lcom/google/android/gm/provider/MailSync$Message;Z)V

    .line 1850
    if-eqz p3, :cond_e

    .line 1851
    invoke-interface/range {p3 .. p3}, Lcom/google/android/gm/provider/MailSyncObserver;->onMessageReceived()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1853
    :cond_e
    add-int/lit8 v11, v11, 0x1

    .line 1832
    :cond_f
    :try_start_9
    invoke-virtual {v14}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v15

    .line 1843
    if-nez v15, :cond_d

    goto/16 :goto_3

    .line 1833
    :catch_3
    move-exception v10

    .line 1834
    const/4 v12, 0x1

    .line 1835
    const/4 v14, 0x0

    .line 1838
    :try_start_a
    const-string v15, "Gmail"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "handleConversationProto: Could not deflate conversation "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". marking conversation as dirty"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    move-object v10, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v10, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v10, v12

    move v12, v14

    .line 1841
    goto/16 :goto_3

    .line 1855
    :cond_10
    const/16 v10, 0xc

    invoke-virtual {v14, v10}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 1856
    const-string v10, "Gmail"

    const/4 v13, 0x2

    invoke-static {v10, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1857
    const-string v10, "Gmail"

    const-string v13, "handleConversationProto: end conversation"

    invoke-static {v10, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1863
    :cond_11
    const-string v10, "Gmail"

    const-string v13, "Unexpected chunk in conversation"

    invoke-static {v10, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_2
.end method

.method private handleForwardSyncProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSyncObserver;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 2116
    const-string v0, "Gmail"

    invoke-static {v0, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2117
    invoke-static {p1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printForwardSyncProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 2120
    :cond_0
    invoke-virtual {p1, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v9

    .line 2121
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2122
    invoke-virtual {p1, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2124
    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    .line 2126
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 2128
    if-nez v3, :cond_1

    move v4, v6

    .line 2130
    :goto_0
    if-ne v3, v6, :cond_2

    move v5, v6

    .line 2132
    :goto_1
    if-ne v3, v7, :cond_3

    .line 2134
    :goto_2
    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    .line 2135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown change code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v4, v11

    .line 2128
    goto :goto_0

    :cond_2
    move v5, v11

    .line 2130
    goto :goto_1

    :cond_3
    move v6, v11

    .line 2132
    goto :goto_2

    .line 2138
    :cond_4
    const/4 v3, 0x0

    .line 2139
    if-nez v4, :cond_5

    if-eqz v5, :cond_6

    .line 2140
    :cond_5
    invoke-virtual {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v7

    .line 2142
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, v7, v8}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v3

    .line 2144
    :cond_6
    invoke-virtual {v0, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gm/provider/MailSync;->syncRationaleFromProto(I)Lcom/google/android/gm/provider/MailSync$SyncRationale;

    move-result-object v7

    .line 2148
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 2149
    const/4 v11, 0x5

    invoke-static {v0, v11, v8}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllLongs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    move-object v0, p0

    .line 2154
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/provider/MailSync;->handleOperationConversationLabelsChangedValues(JLcom/google/android/gm/provider/MailCore$Label;ZZZLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/List;)V

    .line 2254
    :cond_7
    :goto_3
    invoke-direct {p0, v9, v10, p2}, Lcom/google/android/gm/provider/MailSync;->onFinishedHandlingForwardOperation(JLcom/google/android/gm/provider/MailSyncObserver;)V

    .line 2255
    return-void

    .line 2157
    :cond_8
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2158
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2160
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    .line 2162
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, v1, v2}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    .line 2163
    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2165
    invoke-virtual {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2167
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gm/provider/MailSync;->handleOperationLabelCreatedValues(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2168
    :cond_9
    invoke-virtual {p1, v12}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2169
    invoke-virtual {p1, v12}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2171
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    .line 2173
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, v1, v2}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    .line 2174
    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2176
    invoke-virtual {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2178
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gm/provider/MailSync;->handleOperationLabelRenamedValues(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 2179
    :cond_a
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2180
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2182
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 2184
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gm/provider/MailStore;->getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    .line 2185
    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleOperationLabelDeletedValues(Lcom/google/android/gm/provider/MailCore$Label;)V

    goto :goto_3

    .line 2186
    :cond_b
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2187
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2189
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handlecheckConversationProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_3

    .line 2190
    :cond_c
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2191
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2193
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2196
    invoke-virtual {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2198
    invoke-virtual {v0, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v2

    .line 2201
    :goto_4
    const-string v3, ""

    .line 2202
    if-nez v2, :cond_15

    .line 2203
    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2207
    :goto_5
    const-string v3, "Gmail"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2208
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MainSync: Custom preference name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MainSync: Custom preference value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_d
    const-string v3, "sx_clcp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2213
    const-string v3, "Gmail"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2214
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MainSync: Custom Color: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    :cond_e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2218
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getCustomLabelColorPrefs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gm/provider/MailStore;->setCustomLabelColorPreference(Ljava/util/Map;)V

    .line 2222
    :cond_f
    const-string v3, "bx_rf"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 2223
    const-string v3, "bx_rf"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 2225
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setServerPreferences(Ljava/util/Map;)V

    .line 2228
    :cond_10
    const-string v3, "/customfrom/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2229
    if-nez v2, :cond_12

    .line 2230
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->getCustomFromPrefs(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4, v11}, Lcom/google/android/gm/provider/MailStore;->setCustomFromPreference(Ljava/util/Map;Z)V

    .line 2241
    :cond_11
    :goto_6
    const-string v3, "sx_ioe"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    .line 2242
    if-eqz v0, :cond_7

    .line 2243
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/google/android/gm/provider/MailStore;->setInfoOverloadEnabledPreference(Ljava/lang/String;)V

    .line 2248
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    goto/16 :goto_3

    .line 2234
    :cond_12
    const-string v3, "Gmail"

    invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2235
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting preference"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_13
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, v1}, Lcom/google/android/gm/provider/MailStore;->removeCustomFromPreference(Ljava/lang/String;)V

    goto :goto_6

    .line 2252
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No forward sync operation found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v0, v3

    goto/16 :goto_5

    :cond_16
    move v2, v11

    goto/16 :goto_4
.end method

.method private handleMessageNotHandledValues(JLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1702
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not handled because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gm/provider/MailStore;->notifyMessageNotUpdated(JLjava/lang/String;)V

    .line 1704
    return-void
.end method

.method private handleMessageProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;Lcom/google/android/gm/provider/MailSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 1933
    invoke-virtual {p1, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 1936
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2}, Lcom/google/android/gm/provider/MailStore;->prepare()V

    .line 1939
    const/4 v2, 0x0

    .line 1941
    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1994
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->commit()V

    .line 1996
    :goto_1
    return-void

    .line 1944
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1945
    if-nez v3, :cond_2

    .line 1946
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessageProto: End of stream while reading next chunk part. conversationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1994
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->commit()V

    goto :goto_1

    .line 1950
    :cond_2
    const/16 v4, 0xb

    :try_start_2
    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1951
    if-nez v2, :cond_0

    .line 1954
    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    new-instance v4, Lcom/google/android/gm/provider/Dictionary;

    invoke-direct {v4}, Lcom/google/android/gm/provider/Dictionary;-><init>()V

    invoke-virtual {p0, v3, v0, v1, v4}, Lcom/google/android/gm/provider/MailSync;->readMessageFromProto(Lcom/google/common/io/protocol/ProtoBuf;JLcom/google/android/gm/provider/Dictionary;)Lcom/google/android/gm/provider/MailSync$Message;

    move-result-object v3

    .line 1956
    iget-object v4, v3, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 1957
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1960
    const-string v2, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessageProto: Could not deflate message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v3, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". marking conversation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as dirty"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v8

    .line 1964
    goto :goto_0

    .line 1966
    :cond_3
    const-string v4, "Gmail"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1967
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessageProto: message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gm/provider/MailSync$Message;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :cond_4
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v4, v3, p4}, Lcom/google/android/gm/provider/MailStore;->addOrUpdateMessage(Lcom/google/android/gm/provider/MailSync$Message;Z)V

    .line 1970
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    iget-wide v5, v3, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    sget-object v7, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-interface {v4, v5, v6, v7}, Lcom/google/android/gm/provider/MailStore;->notifyConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 1972
    if-eqz p3, :cond_5

    invoke-interface {p3}, Lcom/google/android/gm/provider/MailSyncObserver;->onMessageReceived()V

    .line 1974
    :cond_5
    iget-object v4, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1976
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessageProto: Message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " synced successfully. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Marking conversation "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " as dirty in DB"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, v0, v1}, Lcom/google/android/gm/provider/MailStore;->markConversationDirty(J)V

    .line 1980
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1989
    :cond_6
    iget-boolean v3, p5, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->backgroundSync:Z

    if-eqz v3, :cond_0

    .line 1990
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3}, Lcom/google/android/gm/provider/MailStore;->yieldForContention()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 1994
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1}, Lcom/google/android/gm/provider/MailStore;->commit()V

    throw v0

    .line 1983
    :cond_7
    const/16 v0, 0xd

    :try_start_3
    invoke-virtual {v3, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_8

    .line 1994
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0}, Lcom/google/android/gm/provider/MailStore;->commit()V

    goto/16 :goto_1

    .line 1987
    :cond_8
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected chunk in conversation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private handleNoConversationProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 2000
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 2001
    const-string v2, "Gmail"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2002
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNoConversationProto: conversationId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->handleNoConversationValues(J)V

    .line 2005
    return-void
.end method

.method private handleNoConversationValues(J)V
    .locals 3
    .parameter "conversationId"

    .prologue
    .line 2011
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gm/provider/MailStore;->notifyConversationChanged(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2012
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    new-instance v2, Lcom/google/android/gm/provider/MailEngine$SyncInfo;

    invoke-direct {v2}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;-><init>()V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gm/provider/MailStore;->notifyConversationLoaded(JLcom/google/android/gm/provider/MailSync$SyncRationale;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 2014
    return-void
.end method

.method private handleNoMessageProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 2018
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 2019
    const-string v2, "Gmail"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2020
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNoMessageProto: messageId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->handleNoMessageValues(J)V

    .line 2023
    return-void
.end method

.method private handleNoMessageValues(J)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/provider/MailStore;->notifyMessageDoesNotExist(J)V

    .line 2086
    return-void
.end method

.method private handleOperationConversationLabelsChangedValues(JLcom/google/android/gm/provider/MailCore$Label;ZZZLcom/google/android/gm/provider/MailSync$SyncRationale;Ljava/util/List;)V
    .locals 7
    .parameter "conversationId"
    .parameter "labelOrNull"
    .parameter "conversationLabelAdded"
    .parameter "conversationLabelRemoved"
    .parameter "conversationMessagesExpunged"
    .parameter "rationale"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            "ZZZ",
            "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2274
    .local p8, messageIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-nez p4, :cond_0

    if-eqz p5, :cond_2

    .line 2275
    :cond_0
    if-eqz p3, :cond_1

    .line 2276
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-wide v1, p1

    move-object v3, p8

    move-object v4, p3

    move v5, p4

    move-object v6, p7

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gm/provider/MailStore;->setLabelOnMessages(JLjava/util/List;Lcom/google/android/gm/provider/MailCore$Label;ZLcom/google/android/gm/provider/MailSync$SyncRationale;)V

    .line 2285
    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2286
    return-void

    .line 2280
    :cond_2
    if-eqz p6, :cond_3

    .line 2281
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, p1, p2, p8, p7}, Lcom/google/android/gm/provider/MailStore;->expungeMessages(JLjava/util/List;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V

    goto :goto_0

    .line 2283
    :cond_3
    sget-boolean v0, Lcom/google/android/gm/provider/MailSync;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private handleQueryResponseProto(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J
    .locals 5
    .parameter "response"
    .parameter "sink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailSync;->newParserForProtoResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;

    move-result-object v0

    .line 1019
    .local v0, pis:Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 1020
    .local v1, protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v1, :cond_0

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1021
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/google/android/gm/provider/MailSync;->handleQueryResponseProtoParsed(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1031
    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V

    return-wide v2

    .line 1024
    :cond_0
    :try_start_1
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryResponseProto: No query result found inside response chunk. reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_1

    const-string v4, "null protoBuf"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    new-instance v2, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v3, "No query result found inside response chunk"

    invoke-direct {v2, v3}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1031
    .end local v1           #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V

    throw v2

    .line 1024
    .restart local v1       #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    :try_start_2
    const-string v4, "missing query result"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private handleQueryResponseProtoParsed(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 2688
    const-string v0, "MS.handleQueryResponse"

    invoke-static {v0}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2689
    invoke-interface {p2}, Lcom/google/android/gm/provider/MailSync$ConversationSink;->prepareSink()V

    .line 2690
    const/4 v0, 0x0

    .line 2692
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2693
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2694
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/io/protocol/ProtoBuf;

    .line 2695
    new-instance v2, Lcom/google/android/gm/provider/MailSync$Conversation;

    invoke-direct {v2}, Lcom/google/android/gm/provider/MailSync$Conversation;-><init>()V

    .line 2696
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->conversationId:J

    .line 2698
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->sortMessageId:J

    .line 2700
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2702
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->maxMessageId:J

    .line 2704
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->numMessages:I

    .line 2706
    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v3

    iput-boolean v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->hasAttachments:Z

    .line 2708
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->date:J

    .line 2709
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->subject:Ljava/lang/String;

    .line 2711
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->snippet:Ljava/lang/String;

    .line 2714
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    .line 2715
    const/16 v3, 0xb

    iget-object v4, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->labelIds:Ljava/util/Set;

    invoke-static {p0, v3, v4}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllLongs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2719
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gm/provider/CompactSenderInstructions;->instructionsStringFromProto(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/MailSync$Conversation;->fromAddress:Ljava/lang/String;

    .line 2723
    const-string v3, "Gmail"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2724
    const-string v3, "Gmail"

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$Conversation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    :cond_0
    invoke-interface {p2, v2}, Lcom/google/android/gm/provider/MailSync$ConversationSink;->handleConversation(Lcom/google/android/gm/provider/MailSync$Conversation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    add-int/lit8 v0, v0, 0x1

    .line 2728
    goto/16 :goto_0

    .line 2730
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gm/provider/MailSync$ConversationSink;->finalizeSink()V

    .line 2732
    const-string v1, "MS.handleQueryResponse"

    invoke-static {v1, v0}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;I)V

    .line 2734
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 2730
    :catchall_0
    move-exception v0

    invoke-interface {p2}, Lcom/google/android/gm/provider/MailSync$ConversationSink;->finalizeSink()V

    throw v0
.end method

.method private handleResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 5
    .parameter "response"
    .parameter "observer"
    .parameter "synced"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, contentType:Ljava/lang/String;
    const-string v2, "application/vnd.google-x-gms-proto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 867
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gm/provider/MailSync;->handleResponseProto(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 878
    return-void

    .line 868
    :cond_0
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 869
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 870
    .local v1, statusCode:I
    const-string v2, "Gmail"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 871
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailSync;->printHtmlResponse(Lorg/apache/http/HttpResponse;)V

    .line 873
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server returned unhandled response content type (text/html status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 876
    .end local v1           #statusCode:I
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown response content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private handleResponseProto(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 7
    .parameter "response"
    .parameter "observer"
    .parameter "synced"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    invoke-virtual {p0, p1}, Lcom/google/android/gm/provider/MailSync;->newParserForProtoResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;

    move-result-object v2

    .line 917
    .local v2, pis:Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->getResponseVersion()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_2

    .line 918
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to use protos for a version-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->getResponseVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " response"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    .local v6, protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_0
    :try_start_0
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 934
    invoke-static {v6}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printHttpResponseChunkProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 936
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 937
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleConfigInfoProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 925
    .end local v6           #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 973
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V

    .line 975
    return-void

    .line 929
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 930
    .restart local v6       #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v6, :cond_0

    goto :goto_1

    .line 938
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 939
    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleConfigAcceptedProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 973
    .end local v6           #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->close()V

    throw v0

    .line 940
    .restart local v6       #protoBuf:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_5
    const/4 v0, 0x4

    :try_start_2
    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 941
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gm/provider/MailSync;->handleStartSyncInfoProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSyncObserver;)V

    .line 943
    const/4 v0, 0x1

    iput-boolean v0, p4, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->receivedHandledClientOp:Z

    goto :goto_0

    .line 944
    :cond_6
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 945
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/google/android/gm/provider/MailSync;->handleUphillSyncProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    goto :goto_0

    .line 947
    :cond_7
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 948
    const/4 v0, 0x7

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gm/provider/MailSync;->handleForwardSyncProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSyncObserver;)V

    goto :goto_0

    .line 950
    :cond_8
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 951
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handlecheckConversationProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_0

    .line 953
    :cond_9
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 954
    const/16 v0, 0x9

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailSync;->handleConversationProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;Lcom/google/android/gm/provider/MailSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    goto :goto_0

    .line 957
    :cond_a
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 958
    const/16 v0, 0xa

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/provider/MailSync;->handleMessageProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;Lcom/google/android/gm/provider/MailSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    goto/16 :goto_0

    .line 961
    :cond_b
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 962
    const/16 v0, 0x10

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleNoConversationProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_0

    .line 963
    :cond_c
    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 964
    const/16 v0, 0x11

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->handleNoMessageProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_0

    .line 965
    :cond_d
    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 966
    const/16 v0, 0xe

    invoke-virtual {v6, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/google/android/gm/provider/MailSync;->handleSyncPostambleProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    goto/16 :goto_0

    .line 969
    :cond_e
    new-instance v0, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v1, "No protobuf found inside response chunk"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private handleStartSyncInfoProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailSyncObserver;)V
    .locals 22
    .parameter
    .parameter

    .prologue
    .line 1337
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v10

    .line 1339
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v12

    .line 1341
    const/4 v3, 0x3

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v14

    .line 1343
    const/4 v3, 0x6

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1344
    const/4 v3, 0x6

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1346
    const-string v4, "Gmail"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1347
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartSyncInfoProto: Custom From prefs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1352
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->getCustomFromPrefs(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v3

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-interface {v4, v3, v5}, Lcom/google/android/gm/provider/MailStore;->setCustomFromPreference(Ljava/util/Map;Z)V

    .line 1356
    :cond_1
    const/4 v3, 0x7

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1357
    const/4 v3, 0x7

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1359
    const-string v4, "Gmail"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1360
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartSyncInfoProto: Reply From prefs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    :cond_2
    const-string v4, "bx_rf"

    invoke-static {v4, v3}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v4, v0

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setServerPreferences(Ljava/util/Map;)V

    .line 1370
    :cond_3
    const/4 v3, 0x5

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1371
    const/4 v3, 0x5

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1373
    const-string v4, "Gmail"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1374
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartSyncInfoProto: Custom Color: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getCustomLabelColorPrefs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setCustomLabelColorPreference(Ljava/util/Map;)V

    .line 1382
    :cond_5
    const/16 v3, 0x8

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1383
    const/16 v3, 0x8

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1385
    const/16 v4, 0xa

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1387
    const/16 v5, 0x9

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1389
    const/16 v6, 0xb

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1393
    const-string v7, "Gmail"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1394
    const-string v7, "Gmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartSyncInfoProto: IO enabled: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const-string v7, "Gmail"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StartSyncInfoProto: IO sections:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const-string v4, "Gmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "StartSyncInfoProto: IO sizes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StartSyncInfoProto: IO default inbox:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_6
    if-eqz v3, :cond_7

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v4, v0

    invoke-interface {v4, v3}, Lcom/google/android/gm/provider/MailStore;->setInfoOverloadEnabledPreference(Ljava/lang/String;)V

    .line 1404
    :cond_7
    const-string v3, "Gmail"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1405
    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printStartSyncInfoProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 1408
    :cond_8
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v16

    .line 1409
    const/4 v3, 0x4

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v17

    .line 1410
    const/4 v3, 0x0

    move/from16 v18, v3

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    .line 1411
    const/4 v3, 0x4

    move-object/from16 v0, p1

    move v1, v3

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1412
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v4

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v6, v0

    invoke-interface {v6, v4, v5}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v19

    .line 1414
    if-nez v19, :cond_9

    .line 1410
    :goto_1
    add-int/lit8 v3, v18, 0x1

    move/from16 v18, v3

    goto :goto_0

    .line 1415
    :cond_9
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1417
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1418
    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v6

    .line 1419
    const/4 v7, 0x5

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v7

    .line 1421
    const v8, 0x7fffffff

    .line 1422
    const/4 v9, 0x6

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1423
    const/4 v8, 0x6

    invoke-virtual {v3, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v8

    .line 1426
    :cond_a
    const-string v9, "SHOW"

    .line 1427
    const/16 v20, 0x7

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1428
    const/4 v9, 0x7

    invoke-virtual {v3, v9}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1429
    const-string v9, "Gmail"

    const/16 v20, 0x2

    move-object v0, v9

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1430
    const-string v9, "Gmail"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "StartSyncInfoProto: LABEL_VISIBILITY: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v9

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object v9, v3

    .line 1434
    :cond_c
    new-instance v3, Lcom/google/android/gm/provider/MailStore$LabelInfo;

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/MailStore$LabelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 1438
    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1440
    :cond_d
    if-lez v17, :cond_e

    .line 1441
    if-eqz p2, :cond_e

    .line 1444
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gm/provider/MailSyncObserver;->onOperationReceived()V

    .line 1448
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->handleLabelsValues(Ljava/util/Map;Lcom/google/android/gm/provider/MailSyncObserver;)V

    move-object/from16 v3, p0

    move-wide v4, v14

    move-wide v6, v12

    move-wide v8, v10

    .line 1450
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gm/provider/MailSync;->handleStartSyncInfoValues(JJJ)V

    .line 1452
    return-void
.end method

.method private handleSyncPostambleProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 2026
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2027
    invoke-static {p1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printSyncPostambleProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 2029
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2030
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->handleLastExaminedServerOperationValues(J)V

    .line 2033
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2034
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->handleLowestBackwardConversationIdValues(J)V

    .line 2038
    :cond_2
    iget-boolean v0, p2, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    if-eqz v0, :cond_6

    .line 2039
    const-string v0, "moreForwardSyncNeeded"

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 2047
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2048
    const-string v0, "lowestMessageIdInDuration"

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 2051
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 2054
    :cond_3
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2055
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2057
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/io/protocol/ProtoBuf;

    .line 2058
    const v0, 0x7fffffff

    .line 2059
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2060
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    move v4, v0

    .line 2062
    :goto_2
    const-string v0, "SHOW"

    .line 2063
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2064
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2066
    const-string v1, "Gmail"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2067
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ResponseSyncPostamble: LABEL_VISIBILITY: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object v5, v0

    .line 2070
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 2071
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    .line 2073
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v7

    invoke-interface {v0, v7, v8}, Lcom/google/android/gm/provider/MailStore;->getLabelOrNull(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v1

    .line 2078
    if-eqz v1, :cond_4

    .line 2079
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gm/provider/MailStore;->setLabelCounts(Lcom/google/android/gm/provider/MailCore$Label;IIILjava/lang/String;)V

    goto :goto_1

    .line 2043
    :cond_6
    const-string v0, "moreForwardSyncNeeded"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    .line 2082
    :cond_7
    return-void

    :cond_8
    move v4, v0

    goto :goto_2
.end method

.method private handleUphillSyncProto(Lcom/google/common/io/protocol/ProtoBuf;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 22
    .parameter "responseUphillSync"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1612
    const-string v4, "Gmail"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1613
    invoke-static/range {p1 .. p1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printUphillSyncProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 1614
    const-string v4, "Gmail"

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v17

    .line 1617
    .local v17, numNotHandled:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_1

    .line 1618
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v16

    .line 1620
    .local v16, notHandled:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x1

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v7

    .line 1622
    .local v7, messageId:J
    const/4 v4, 0x2

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1624
    .local v11, error:Ljava/lang/String;
    move-object/from16 v0, p0

    move-wide v1, v7

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailSync;->handleMessageNotHandledValues(JLjava/lang/String;)V

    .line 1617
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1627
    .end local v7           #messageId:J
    .end local v11           #error:Ljava/lang/String;
    .end local v16           #notHandled:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v18

    .line 1628
    .local v18, numSavedOrSent:I
    const/4 v14, 0x0

    .line 1630
    .local v14, handledSendWithoutSyncMessage:Z
    const/4 v15, 0x0

    :goto_1
    move v0, v15

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 1631
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v19

    .line 1633
    .local v19, savedOrSent:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v4, 0x1

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v5

    .line 1635
    .local v5, messageIdOnClient:J
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    move v4, v0

    if-nez v4, :cond_2

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide/from16 v20, v0

    cmp-long v4, v5, v20

    if-nez v4, :cond_2

    .line 1636
    const/4 v14, 0x1

    .line 1638
    :cond_2
    const/4 v4, 0x2

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v7

    .line 1640
    .restart local v7       #messageId:J
    const/4 v4, 0x3

    move-object/from16 v0, v19

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v9

    .local v9, conversationId:J
    move-object/from16 v4, p0

    .line 1642
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/gm/provider/MailSync;->handleMessageSavedOrSentValues(JJJ)V

    .line 1643
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    move v4, v0

    if-nez v4, :cond_4

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    move-wide/from16 v20, v0

    cmp-long v4, v20, v9

    if-eqz v4, :cond_3

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->conversationId:J

    move-wide/from16 v20, v0

    cmp-long v4, v20, v5

    if-nez v4, :cond_4

    :cond_3
    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide/from16 v20, v0

    cmp-long v4, v20, v5

    if-nez v4, :cond_4

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v4, v0

    invoke-interface {v4, v9, v10, v7, v8}, Lcom/google/android/gm/provider/MailStore;->addSendWithoutSyncConversationInfoToCheck(JJ)V

    .line 1630
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1651
    .end local v5           #messageIdOnClient:J
    .end local v7           #messageId:J
    .end local v9           #conversationId:J
    .end local v19           #savedOrSent:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_5
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    move v4, v0

    if-eqz v4, :cond_7

    .line 1653
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v12

    .line 1655
    .local v12, handledOperationId:J
    move-object/from16 v0, p0

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->onServerHasHandledClientOperationdId(J)V

    .line 1656
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->receivedHandledClientOp:Z

    .line 1662
    .end local v12           #handledOperationId:J
    :cond_6
    :goto_2
    return-void

    .line 1657
    :cond_7
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->normalSync:Z

    move v4, v0

    if-nez v4, :cond_6

    if-eqz v14, :cond_6

    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v4, v0

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->messageId:J

    move-wide/from16 v20, v0

    move-object v0, v4

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/provider/MailStore;->removeOperationByMessageId(J)V

    .line 1660
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p2

    iput-boolean v0, v1, Lcom/google/android/gm/provider/MailEngine$SyncInfo;->receivedHandledClientOp:Z

    goto :goto_2
.end method

.method private handlecheckConversationProto(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 1687
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    .line 1688
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    .line 1689
    const-string v4, "Gmail"

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1690
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkConversationProto: conversationId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", messageId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailSync;->handleCheckConversationValues(JJ)V

    .line 1694
    return-void
.end method

.method private incStats(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mCounters:[J

    aget-wide v1, v0, p1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, v0, p1

    .line 588
    return-void
.end method

.method private incStats(IJ)V
    .locals 3
    .parameter "id"
    .parameter "num"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mCounters:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p2

    aput-wide v1, v0, p1

    .line 584
    return-void
.end method

.method private initDictionary(Lcom/google/android/gm/provider/Dictionary;JJZ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2640
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "messageId"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "body"

    aput-object v3, v1, v2

    invoke-interface {v0, v1, p4, p5}, Lcom/google/android/gm/provider/MailStore;->getMessageCursorForConversationId([Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 2644
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2645
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-nez v1, :cond_1

    .line 2646
    if-eqz p6, :cond_0

    .line 2647
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getBodyAsBytes(Landroid/database/Cursor;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gm/provider/Dictionary;->append([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2654
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2656
    :goto_1
    return-void

    .line 2651
    :cond_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getBodyAsBytes(Landroid/database/Cursor;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gm/provider/Dictionary;->append([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2654
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private onFinishedHandlingForwardOperation(JLcom/google/android/gm/provider/MailSyncObserver;)V
    .locals 1
    .parameter "operationId"
    .parameter "observer"

    .prologue
    .line 2108
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 2111
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 2112
    if-eqz p3, :cond_0

    invoke-interface {p3}, Lcom/google/android/gm/provider/MailSyncObserver;->onOperationReceived()V

    .line 2113
    :cond_0
    return-void
.end method

.method private printHtmlResponse(Lorg/apache/http/HttpResponse;)V
    .locals 13
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 881
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 882
    .local v1, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    const-wide/32 v11, 0x7fffffff

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    .line 883
    invoke-static {v1}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v7

    .line 885
    .local v7, responseStream:Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    const-string v9, "UTF-8"

    invoke-direct {v6, v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 886
    .local v6, reader:Ljava/io/Reader;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v9

    long-to-int v2, v9

    .line 887
    .local v2, i:I
    if-gez v2, :cond_0

    .line 888
    const/16 v2, 0x1000

    .line 890
    :cond_0
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 892
    .local v0, buffer:Lorg/apache/http/util/CharArrayBuffer;
    const/16 v9, 0x400

    :try_start_0
    new-array v8, v9, [C

    .line 894
    .local v8, tmp:[C
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 895
    .local v4, now:J
    :cond_1
    invoke-virtual {v6, v8}, Ljava/io/Reader;->read([C)I

    move-result v3

    .local v3, l:I
    const/4 v9, -0x1

    if-eq v3, v9, :cond_2

    .line 896
    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v3}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V

    .line 897
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v4

    const-wide/32 v11, 0x36ee80

    cmp-long v9, v9, v11

    if-lez v9, :cond_1

    .line 898
    const-string v9, "\nRead timed out..."

    invoke-virtual {v0, v9}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 903
    :cond_2
    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    .line 905
    const-string v9, "Gmail"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Html Response from html content = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    .end local v0           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v2           #i:I
    .end local v3           #l:I
    .end local v4           #now:J
    .end local v6           #reader:Ljava/io/Reader;
    .end local v7           #responseStream:Ljava/io/InputStream;
    .end local v8           #tmp:[C
    :goto_0
    return-void

    .line 903
    .restart local v0       #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .restart local v2       #i:I
    .restart local v6       #reader:Ljava/io/Reader;
    .restart local v7       #responseStream:Ljava/io/InputStream;
    :catchall_0
    move-exception v9

    invoke-virtual {v6}, Ljava/io/Reader;->close()V

    throw v9

    .line 907
    .end local v0           #buffer:Lorg/apache/http/util/CharArrayBuffer;
    .end local v2           #i:I
    .end local v6           #reader:Ljava/io/Reader;
    .end local v7           #responseStream:Ljava/io/InputStream;
    :cond_3
    const-string v9, "Gmail"

    const-string v10, "Response too large to print"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readEmailFromProto(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 2678
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2679
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2680
    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2683
    :cond_0
    return-object v0
.end method

.method private static removeFromSetElementsInSet(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 2452
    .local p0, set0:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, set1:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 2461
    :goto_0
    return v3

    .line 2453
    :cond_0
    const/4 v0, 0x0

    .line 2454
    .local v0, changed:Z
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2455
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2456
    .local v1, e:Ljava/lang/Object;,"TE;"
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2457
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2458
    const/4 v0, 0x1

    goto :goto_1

    .end local v1           #e:Ljava/lang/Object;,"TE;"
    :cond_2
    move v3, v0

    .line 2461
    goto :goto_0
.end method

.method private static removeFromSetElementsNotInSet(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;",
            "Ljava/util/Set",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 2466
    .local p0, set0:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    .local p1, set1:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    if-nez p1, :cond_0

    const/4 v3, 0x0

    .line 2475
    :goto_0
    return v3

    .line 2467
    :cond_0
    const/4 v0, 0x0

    .line 2468
    .local v0, changed:Z
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2469
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2470
    .local v1, e:Ljava/lang/Object;,"TE;"
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2471
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2472
    const/4 v0, 0x1

    goto :goto_1

    .end local v1           #e:Ljava/lang/Object;,"TE;"
    :cond_2
    move v3, v0

    .line 2475
    goto :goto_0
.end method

.method private setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3041
    .local p2, value:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 3043
    .local v0, array:[Ljava/lang/Object;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 3044
    const-string v1, " "

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/gm/provider/MailSync;->setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3031
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3032
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3033
    const/4 v0, 0x1

    .line 3035
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static syncRationaleFromProto(I)Lcom/google/android/gm/provider/MailSync$SyncRationale;
    .locals 3
    .parameter

    .prologue
    .line 2258
    packed-switch p0, :pswitch_data_0

    .line 2266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown proto rationale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2260
    :pswitch_0
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 2264
    :goto_0
    return-object v0

    .line 2262
    :pswitch_1
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->DURATION:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    goto :goto_0

    .line 2264
    :pswitch_2
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LABEL:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    goto :goto_0

    .line 2258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static unEscapeString(Ljava/lang/String;CC)Ljava/lang/String;
    .locals 5
    .parameter "str"
    .parameter "escapeChar"
    .parameter "charToEscape"

    .prologue
    .line 1550
    if-nez p0, :cond_0

    .line 1551
    const/4 v4, 0x0

    .line 1568
    :goto_0
    return-object v4

    .line 1553
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1554
    .local v3, result:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1555
    .local v1, hasPreEscape:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1556
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1557
    .local v0, currentChar:C
    if-eqz v1, :cond_1

    if-eq v0, p1, :cond_1

    .line 1558
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1559
    const/4 v1, 0x0

    .line 1555
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1561
    :cond_1
    if-ne v0, p1, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p2, :cond_2

    .line 1562
    const/4 v1, 0x1

    goto :goto_2

    .line 1564
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1568
    .end local v0           #currentChar:C
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private unzipMessageBatch(Lcom/google/common/io/protocol/ProtoBuf;J)Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x1

    .line 1901
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 1902
    invoke-virtual {p1, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v7

    .line 1903
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    .line 1905
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v8

    .line 1906
    new-instance v1, Lcom/google/android/gm/provider/Dictionary;

    invoke-direct {v1}, Lcom/google/android/gm/provider/Dictionary;-><init>()V

    .line 1908
    const/4 v6, 0x1

    move-object v0, p0

    move-wide v4, p2

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gm/provider/MailSync;->initDictionary(Lcom/google/android/gm/provider/Dictionary;JJZ)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1915
    invoke-virtual {v1}, Lcom/google/android/gm/provider/Dictionary;->getChecksum()J

    move-result-wide v2

    .line 1916
    cmp-long v0, v8, v2

    if-eqz v0, :cond_0

    .line 1917
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dictionary checksum mismatch for conversation "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ". Expected 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " but was 0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    move-object v0, v10

    .line 1926
    :goto_0
    return-object v0

    .line 1909
    :catch_0
    move-exception v0

    .line 1910
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Out of memory while creating dictionary for conversation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v10

    .line 1912
    goto :goto_0

    .line 1926
    :cond_0
    new-instance v0, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Dictionary;->getBytes()[B

    move-result-object v1

    invoke-static {v7, v1}, Lcom/google/android/gm/provider/ZipUtils;->inflateToStream([B[B)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private unzipMessageBody([BJJJLcom/google/android/gm/provider/Dictionary;)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2578
    const-string v3, "MS.unzipMessageBody"

    invoke-static {v3}, Lcom/google/android/gm/perf/Timer;->startTiming(Ljava/lang/String;)V

    .line 2580
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2585
    new-instance v10, Ljava/util/zip/Inflater;

    invoke-direct {v10}, Ljava/util/zip/Inflater;-><init>()V

    .line 2586
    invoke-virtual {v10, p1}, Ljava/util/zip/Inflater;->setInput([B)V

    .line 2590
    :try_start_0
    invoke-static {v10}, Lcom/google/android/gm/provider/ZipUtils;->inflate(Ljava/util/zip/Inflater;)[B

    move-result-object v3

    .line 2591
    array-length v4, v3

    if-nez v4, :cond_2

    invoke-virtual {v10}, Ljava/util/zip/Inflater;->needsDictionary()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2592
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/gm/provider/Dictionary;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 2595
    const/4 v9, 0x0

    move-object v3, p0

    move-object/from16 v4, p8

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gm/provider/MailSync;->initDictionary(Lcom/google/android/gm/provider/Dictionary;JJZ)V

    .line 2597
    :cond_0
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/gm/provider/Dictionary;->getChecksum()J

    move-result-wide v3

    .line 2598
    cmp-long v5, p2, v3

    if-eqz v5, :cond_1

    .line 2599
    const-string v5, "Gmail"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dictionary checksum mismatch for message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". Expected 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2, p3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but was 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2605
    const/4 v3, 0x0

    .line 2632
    :goto_0
    return-object v3

    .line 2607
    :cond_1
    invoke-virtual/range {p8 .. p8}, Lcom/google/android/gm/provider/Dictionary;->getBytes()[B

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/zip/Inflater;->setDictionary([B)V

    .line 2608
    invoke-static {v10}, Lcom/google/android/gm/provider/ZipUtils;->inflate(Ljava/util/zip/Inflater;)[B

    move-result-object v3

    .line 2609
    move-object/from16 v0, p8

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/Dictionary;->append([B)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2619
    :cond_2
    :try_start_1
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2625
    const-string v3, "Gmail"

    const-string v5, "Compressed message: %d/%d (%.1fx)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    array-length v8, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    int-to-float v8, v8

    array-length v9, p1

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    const-string v3, "MS.unzipMessageBody"

    invoke-static {v3}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    move-object v3, v4

    .line 2632
    goto :goto_0

    .line 2611
    :catch_0
    move-exception v3

    .line 2612
    const-string v4, "Gmail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error inflating message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2613
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2614
    const/4 v3, 0x0

    goto :goto_0

    .line 2620
    :catch_1
    move-exception v3

    .line 2622
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "UTF-8 not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private waitUntilEarliestAllowedSyncTime()V
    .locals 5

    .prologue
    .line 2372
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2373
    iget-wide v2, p0, Lcom/google/android/gm/provider/MailSync;->mEarliestAllowedSyncTimeAsElapsedRealtime:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 2382
    return-void

    .line 2375
    :cond_0
    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gm/provider/MailSync;->mEarliestAllowedSyncTimeAsElapsedRealtime:J

    sub-long v0, v2, v0

    .line 2376
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2378
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2395
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 2396
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 2400
    invoke-static {v1, p2}, Lcom/google/android/gm/provider/MailSync;->removeFromSetElementsInSet(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v7

    .line 2401
    :goto_0
    invoke-static {v2, p2}, Lcom/google/android/gm/provider/MailSync;->removeFromSetElementsInSet(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v7

    .line 2403
    :cond_0
    invoke-static {v1, p3}, Lcom/google/android/gm/provider/MailSync;->removeFromSetElementsNotInSet(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v7

    .line 2404
    :cond_1
    invoke-static {v2, p3}, Lcom/google/android/gm/provider/MailSync;->removeFromSetElementsNotInSet(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v7

    .line 2406
    :cond_2
    if-nez p3, :cond_6

    .line 2407
    const-string v3, "labelsAll"

    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 2408
    if-eqz p1, :cond_3

    invoke-interface {v3, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 2409
    :cond_3
    if-eqz p2, :cond_4

    invoke-interface {v3, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 2414
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-nez v4, :cond_7

    .line 2448
    :cond_5
    :goto_2
    return-void

    :cond_6
    move v0, v7

    move-object v3, p3

    .line 2412
    goto :goto_1

    .line 2421
    :cond_7
    invoke-static {}, Lcom/google/android/gm/provider/LabelManager;->getForcedIncludedLabels()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2424
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-static {v0}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move v6, v7

    .line 2426
    :goto_4
    if-eqz v6, :cond_10

    .line 2427
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v5, v6

    .line 2428
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v5

    :goto_5
    move v5, v0

    .line 2430
    goto :goto_3

    :cond_9
    move v6, v8

    .line 2424
    goto :goto_4

    .line 2431
    :cond_a
    invoke-static {}, Lcom/google/android/gm/provider/LabelManager;->getForcedIncludedOrPartialLabels()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2432
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v0}, Lcom/google/android/gm/provider/MailCore;->isCanonicalLabelNameLocal(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_b
    move v6, v7

    .line 2434
    :goto_7
    if-eqz v6, :cond_f

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 2435
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v5

    :goto_8
    move v5, v0

    .line 2437
    goto :goto_6

    :cond_c
    move v6, v8

    .line 2432
    goto :goto_7

    .line 2439
    :cond_d
    if-eqz v5, :cond_5

    .line 2440
    const-string v0, "Gmail"

    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2441
    const-string v0, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkLabelsSets changed the label sets to: included("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), partial("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), all("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_e
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 2445
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0, v2}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    .line 2446
    const-string v0, "labelsAll"

    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    goto/16 :goto_2

    :cond_f
    move v0, v5

    goto :goto_8

    :cond_10
    move v0, v5

    goto/16 :goto_5

    :cond_11
    move v0, v8

    goto/16 :goto_0
.end method

.method public clearStats()V
    .locals 1

    .prologue
    .line 579
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->SYNC_STATS_LABELS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mCounters:[J

    .line 580
    return-void
.end method

.method getBooleanSetting(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2984
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2985
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

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

    .line 2987
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getClientId()J
    .locals 2

    .prologue
    .line 1039
    const-string v0, "clientId"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method getClientOperationToAck()J
    .locals 2

    .prologue
    .line 1049
    const-string v0, "clientOpToAck"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getConversationAgeDays()J
    .locals 2

    .prologue
    .line 1130
    const-string v0, "conversationAgeDays"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method getCustomFromPrefs(Ljava/lang/String;Z)Ljava/util/Map;
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomFromPreference;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x5c

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1497
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1500
    const-string v1, "(?<!\\\\)#"

    .line 1501
    const-string v1, "(?<!\\\\),"

    .line 1505
    if-nez p2, :cond_1

    .line 1506
    const-string v1, "(?<!\\\\)#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    move v2, v3

    .line 1513
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 1516
    aget-object v3, v1, v2

    const/16 v4, 0x23

    invoke-static {v3, v9, v4}, Lcom/google/android/gm/provider/MailSync;->unEscapeString(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v3

    .line 1518
    const-string v4, "(?<!\\\\),"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1521
    :try_start_0
    new-instance v4, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/16 v6, 0x5c

    const/16 v7, 0x2c

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/MailSync;->unEscapeString(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    array-length v7, v3

    const/4 v8, 0x4

    if-ge v7, v8, :cond_2

    const/4 v7, 0x1

    aget-object v7, v3, v7

    :goto_2
    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gm/provider/MailStore$CustomFromPreference;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const-string v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1528
    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1509
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    aput-object p1, v1, v3

    goto :goto_0

    .line 1521
    :cond_2
    const/4 v7, 0x3

    :try_start_1
    aget-object v7, v3, v7
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1530
    :catch_0
    move-exception v3

    .line 1531
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected Custom from preference received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1535
    :cond_3
    return-object v0
.end method

.method getCustomLabelColorPrefs(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1464
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1466
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1467
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 1468
    aget-object v3, v1, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1471
    :try_start_0
    new-instance v4, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;

    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/4 v6, 0x2

    aget-object v6, v3, v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/gm/provider/MailStore$CustomLabelColorPreference;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1474
    :catch_0
    move-exception v3

    .line 1475
    const-string v3, "Gmail"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected Custom Color preference received: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1479
    :cond_0
    return-object v0
.end method

.method getIntegerSetting(Ljava/lang/String;)I
    .locals 3
    .parameter

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2974
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2975
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2977
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLabelsAllArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1118
    const-string v0, "labelsAll"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsIncluded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1110
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsIncludedArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1114
    const-string v0, "labelsIncluded"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsPartial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1122
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsPartialArray()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1126
    const-string v0, "labelsPartial"

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLongSetting(Ljava/lang/String;)J
    .locals 3
    .parameter

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2965
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2966
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 2968
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLowestMessageIdInDurationOrZero()J
    .locals 2

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v1, "lowestMessageIdInDuration"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    const-string v0, "lowestMessageIdInDuration"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    .line 1205
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMaxAttachmentSizeMb()J
    .locals 2

    .prologue
    .line 1134
    const-string v0, "maxAttachmentSize"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxUnsyncedMessageIdForLabel(Lcom/google/android/gm/provider/MailCore$Label;)J
    .locals 11
    .parameter "label"

    .prologue
    const-wide/16 v9, 0x0

    .line 1148
    const-string v7, "labelsIncluded"

    invoke-direct {p0, v7}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 1149
    .local v1, labelsIncluded:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "labelsPartial"

    invoke-direct {p0, v7}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 1151
    .local v2, labelsPartial:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v7, p1}, Lcom/google/android/gm/provider/MailStore;->getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, canonicalName:Ljava/lang/String;
    const-string v7, "clientId"

    invoke-virtual {p0, v7}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    move-wide v7, v9

    .line 1194
    :goto_0
    return-wide v7

    .line 1168
    :cond_0
    if-eqz p1, :cond_1

    iget-wide v7, p1, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v7, v8}, Lcom/google/android/gm/provider/MailCore;->isLabelIdLocal(J)Z

    move-result v7

    if-eqz v7, :cond_1

    move-wide v7, v9

    .line 1169
    goto :goto_0

    .line 1173
    :cond_1
    if-nez v0, :cond_3

    .line 1175
    const-wide v5, 0x7fffffffffffffffL

    .line 1189
    .local v5, messageId:J
    :goto_1
    const-wide v3, 0x7fffffffffffffffL

    .line 1190
    .local v3, lowestSyncedConversationId:J
    iget-object v7, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v8, "lowestBackwardConversationId"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1191
    const-string v7, "lowestBackwardConversationId"

    invoke-virtual {p0, v7}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v3

    .line 1193
    :cond_2
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    move-wide v7, v5

    .line 1194
    goto :goto_0

    .line 1176
    .end local v3           #lowestSyncedConversationId:J
    .end local v5           #messageId:J
    :cond_3
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1177
    const-wide/16 v5, 0x0

    .restart local v5       #messageId:J
    goto :goto_1

    .line 1178
    .end local v5           #messageId:J
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1179
    iget-object v7, p0, Lcom/google/android/gm/provider/MailSync;->mSettings:Ljava/util/Map;

    const-string v8, "lowestMessageIdInDuration"

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1180
    const-string v7, "lowestMessageIdInDuration"

    invoke-virtual {p0, v7}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    sub-long v5, v7, v9

    .restart local v5       #messageId:J
    goto :goto_1

    .line 1183
    .end local v5           #messageId:J
    :cond_5
    const-wide v5, 0x7fffffffffffffffL

    .restart local v5       #messageId:J
    goto :goto_1

    .line 1186
    .end local v5           #messageId:J
    :cond_6
    const-wide v5, 0x7fffffffffffffffL

    .restart local v5       #messageId:J
    goto :goto_1
.end method

.method getOrAddLabelIfUserMeaningful(Lcom/google/android/gm/provider/MailSync$MailPullParser;Ljava/lang/String;)Lcom/google/android/gm/provider/MailCore$Label;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/xml/SimplePullParser$ParseException;
        }
    .end annotation

    .prologue
    .line 2300
    sget-object v0, Lcom/google/android/gm/provider/MailSync;->NAMESPACE:Ljava/lang/String;

    const-string v1, "labelId"

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gm/provider/MailSync$MailPullParser;->getLongAttribute(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 2301
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    move-result-object v0

    return-object v0
.end method

.method public getRequestVersion()I
    .locals 5

    .prologue
    const/16 v3, 0x19

    const/16 v4, 0xa

    .line 1053
    const-string v1, "serverVersion"

    invoke-virtual {p0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v0, v1

    .line 1054
    .local v0, serverVersion:I
    if-nez v0, :cond_0

    move v1, v3

    .line 1067
    :goto_0
    return v1

    .line 1058
    :cond_0
    if-ge v0, v4, :cond_1

    .line 1061
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is too old to talk to. Minimum supported version is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 1065
    goto :goto_0

    .line 1067
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method public getServerVersion()J
    .locals 2

    .prologue
    .line 1044
    const-string v0, "serverVersion"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getStats(Landroid/content/SyncResult;)Ljava/lang/String;
    .locals 6
    .parameter "result"

    .prologue
    .line 591
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 592
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->SYNC_STATS_LABELS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 593
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mCounters:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 594
    sget-object v2, Lcom/google/android/gm/provider/MailSync;->SYNC_STATS_LABELS:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mCounters:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 592
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p1}, Landroid/content/SyncResult;->toDebugString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getUnackedSentOperations()Z
    .locals 1

    .prologue
    .line 1138
    const-string v0, "unackedSentOperations"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method handleConfigAcceptedValues(J)V
    .locals 7
    .parameter "clientId"

    .prologue
    const-wide/16 v5, 0x0

    .line 1282
    const-string v2, "Gmail"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1283
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleConfigAcceptedValues: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_0
    const-string v2, "clientId"

    invoke-virtual {p0, v2}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    .line 1286
    .local v0, oldClientId:J
    cmp-long v2, v0, v5

    if-eqz v2, :cond_1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 1287
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Client id is already set but response has different id"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1290
    :cond_1
    const-string v2, "clientId"

    invoke-virtual {p0, v2, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1291
    const-string v2, "configDirty"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1295
    const-string v2, "startSyncNeeded"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1300
    const-string v2, "highestBackwardConversationId"

    invoke-virtual {p0, v2, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1301
    const-string v2, "lowestBackwardConversationId"

    invoke-virtual {p0, v2, v5, v6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1302
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 1303
    return-void
.end method

.method handleConfigInfoValues(JLjava/util/Set;Ljava/util/Set;)V
    .locals 11
    .parameter "durationDays"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, includeLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, inDurationLabels:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1257
    invoke-direct {p0}, Lcom/google/android/gm/provider/MailSync;->getMinServerVersionForConfigInfo()I

    move-result v7

    .line 1258
    .local v7, minServerVersion:I
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->getServerVersion()J

    move-result-wide v8

    .line 1259
    .local v8, serverVersion:J
    int-to-long v0, v7

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    .line 1260
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring config info from server because server version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but gservices says that the min server version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-string v0, "needConfigSuggestion"

    invoke-virtual {p0, v0, v10}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1273
    :goto_0
    return-void

    .line 1267
    :cond_0
    const-string v0, " "

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v0, " "

    invoke-static {v0, p4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/provider/MailSync;->setConfig(Ljava/lang/String;Ljava/lang/String;JJ)Z

    .line 1271
    const-string v0, "needConfigSuggestion"

    invoke-virtual {p0, v0, v10}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1272
    const-string v0, "configDirty"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    goto :goto_0
.end method

.method public handleFetchConversationResponse(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 984
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gm/provider/MailEngine$SyncInfo;

    invoke-direct {v2}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;-><init>()V

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 985
    return-void
.end method

.method handleLabelsValues(Ljava/util/Map;Lcom/google/android/gm/provider/MailSyncObserver;)V
    .locals 10
    .parameter
    .parameter "observer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gm/provider/MailCore$Label;",
            "Lcom/google/android/gm/provider/MailStore$LabelInfo;",
            ">;",
            "Lcom/google/android/gm/provider/MailSyncObserver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, canonicalNameLabelInfos:Ljava/util/Map;,"Ljava/util/Map<Lcom/google/android/gm/provider/MailCore$Label;Lcom/google/android/gm/provider/MailStore$LabelInfo;>;"
    const/4 v9, 0x0

    .line 1312
    const-string v6, "Gmail"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1313
    const-string v6, "Gmail"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleLabelsValues: receiving set of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " labels"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 1318
    .local v4, labelIdLabelInfos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Long;Lcom/google/android/gm/provider/MailStore$LabelInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 1319
    .local v0, canonicalNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1320
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/gm/provider/MailCore$Label;Lcom/google/android/gm/provider/MailStore$LabelInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gm/provider/MailCore$Label;

    .line 1321
    .local v3, label:Lcom/google/android/gm/provider/MailCore$Label;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gm/provider/MailStore$LabelInfo;

    .line 1322
    .local v5, labelInfo:Lcom/google/android/gm/provider/MailStore$LabelInfo;
    iget-wide v6, v3, Lcom/google/android/gm/provider/MailCore$Label;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    iget-object v6, v5, Lcom/google/android/gm/provider/MailStore$LabelInfo;->canonicalName:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1326
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/google/android/gm/provider/MailCore$Label;Lcom/google/android/gm/provider/MailStore$LabelInfo;>;"
    .end local v3           #label:Lcom/google/android/gm/provider/MailCore$Label;
    .end local v5           #labelInfo:Lcom/google/android/gm/provider/MailStore$LabelInfo;
    :cond_1
    iget-object v6, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v6, v4}, Lcom/google/android/gm/provider/MailStore;->setLabels(Ljava/util/Map;)V

    .line 1327
    invoke-virtual {p0, v9, v9, v0}, Lcom/google/android/gm/provider/MailSync;->checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1328
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 1329
    if-eqz p2, :cond_2

    .line 1332
    invoke-interface {p2}, Lcom/google/android/gm/provider/MailSyncObserver;->onOperationReceived()V

    .line 1334
    :cond_2
    return-void
.end method

.method handleLastExaminedServerOperationValues(J)V
    .locals 3
    .parameter

    .prologue
    .line 2357
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2358
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const-string v1, "Received operationId of 0 as last-examined-server-op. Wiping."

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/MailStore;->wipeAndResync(Ljava/lang/String;)V

    .line 2360
    :cond_0
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2361
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last-examined-server-operation operationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_1
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 2366
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 2367
    return-void
.end method

.method handleLowestBackwardConversationIdValues(J)V
    .locals 3
    .parameter

    .prologue
    .line 1677
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lowest-backward-convesation-id conversationid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    :cond_0
    const-string v0, "lowestBackwardConversationId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1684
    return-void
.end method

.method handleMessageSavedOrSentValues(JJJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2097
    iget-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->mFakeIoExceptionWhenHandlingMessageSavedOrSent:Z

    if-eqz v0, :cond_0

    .line 2098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->mFakeIoExceptionWhenHandlingMessageSavedOrSent:Z

    .line 2099
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Faked by mFakeIoExceptionWhenHandlingMessageSavedOrSent"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2101
    :cond_0
    const-string v0, "Gmail"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2102
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message id changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gm/provider/MailStore;->updateSentOrSavedMessage(JJJ)V

    .line 2105
    return-void
.end method

.method handleOperationLabelCreatedValues(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2307
    if-eqz p1, :cond_0

    .line 2309
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 2310
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const v4, 0x7fffffff

    const-string v5, "SHOW"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gm/provider/MailStore;->renameLabel(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2312
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p0, v0, v7, v7}, Lcom/google/android/gm/provider/MailSync;->checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 2313
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 2315
    :cond_0
    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2316
    return-void
.end method

.method handleOperationLabelDeletedValues(Lcom/google/android/gm/provider/MailCore$Label;)V
    .locals 5
    .parameter "labelOrNull"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2320
    if-eqz p1, :cond_1

    .line 2321
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1, p1}, Lcom/google/android/gm/provider/MailStore;->getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v0

    .line 2322
    .local v0, canonicalName:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1, p1}, Lcom/google/android/gm/provider/MailStore;->deleteLabel(Lcom/google/android/gm/provider/MailCore$Label;)V

    .line 2323
    if-eqz v0, :cond_0

    .line 2324
    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {p0, v4, v1, v4}, Lcom/google/android/gm/provider/MailSync;->checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 2326
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 2328
    .end local v0           #canonicalName:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2329
    return-void
.end method

.method handleOperationLabelRenamedValues(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 2334
    if-eqz p1, :cond_1

    .line 2336
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0, v6}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 2337
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    const v4, 0x7fffffff

    const-string v5, "SHOW"

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gm/provider/MailStore;->renameLabel(Lcom/google/android/gm/provider/MailCore$Label;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2339
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "labelsIncluded"

    aput-object v2, v0, v1

    const-string v1, "labelsPartial"

    aput-object v1, v0, v6

    const/4 v1, 0x2

    const-string v2, "labelsAll"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2341
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v1, p1}, Lcom/google/android/gm/provider/MailStore;->getLabelCanonicalNameOrNull(Lcom/google/android/gm/provider/MailCore$Label;)Ljava/lang/String;

    move-result-object v1

    .line 2342
    if-eqz v1, :cond_1

    .line 2343
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2344
    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 2345
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2346
    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2347
    invoke-interface {v3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2348
    invoke-direct {p0, v0, v3}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    goto :goto_0

    .line 2353
    :cond_1
    invoke-direct {p0, v6}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2354
    return-void
.end method

.method public handleQueryResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J
    .locals 5
    .parameter "response"
    .parameter "sink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, contentType:Ljava/lang/String;
    const-string v2, "application/vnd.google-x-gms-proto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1001
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->handleQueryResponseProto(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSync$ConversationSink;)J

    move-result-wide v2

    return-wide v2

    .line 1002
    :cond_0
    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1003
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 1004
    .local v1, statusCode:I
    const-string v2, "Gmail"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1005
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/MailSync;->printHtmlResponse(Lorg/apache/http/HttpResponse;)V

    .line 1008
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Server returned unhandled response content type (text/html status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1011
    .end local v1           #statusCode:I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown response content type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method handleStartSyncInfoValues(JJJ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1574
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartSyncInfoValues: highestServerOperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " highestServerConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " handledClientOperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_0
    const-string v0, "startSyncNeeded"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1583
    const-string v0, "startSyncNeeded"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1584
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1589
    const-string v0, "highestProcessedServerOperationId"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1594
    :cond_1
    const-string v0, "lowestBackwardConversationId"

    const-wide/16 v1, 0x1

    add-long/2addr v1, p3

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1600
    const-string v0, "highestBackwardConversationId"

    invoke-virtual {p0, v0, p3, p4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1605
    :cond_2
    invoke-virtual {p0, p5, p6}, Lcom/google/android/gm/provider/MailSync;->onServerHasHandledClientOperationdId(J)V

    .line 1607
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    .line 1608
    return-void
.end method

.method public handleSyncResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V
    .locals 1
    .parameter "response"
    .parameter "observer"
    .parameter "syncInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 848
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gm/provider/MailSync;->handleResponse(Lorg/apache/http/HttpResponse;Lcom/google/android/gm/provider/MailSyncObserver;ZLcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 849
    return-void
.end method

.method public newFetchConversationRequest(Lcom/google/android/gm/provider/MailSync$ConversationInfo;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 19
    .parameter "info"

    .prologue
    .line 813
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v10, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    const-string v2, "clientId"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v15

    .line 816
    .local v15, clientId:J
    const-string v2, "lowestBackwardConversationId"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v4

    .line 818
    .local v4, lowerFetchedConversationId:J
    const-string v2, "highestProcessedServerOperationId"

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v6

    .line 820
    .local v6, handledServerOperationId:J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v11, messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getClientOperationToAck()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getDirtyConversations()Ljava/util/ArrayList;

    move-result-object v12

    new-instance v13, Lcom/google/android/gm/provider/MailEngine$SyncInfo;

    invoke-direct {v13}, Lcom/google/android/gm/provider/MailEngine$SyncInfo;-><init>()V

    invoke-virtual/range {v2 .. v13}, Lcom/google/android/gm/provider/Urls;->getMainSyncRequestProto(Landroid/content/ContentResolver;JJJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v17

    .line 832
    .local v17, requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object v13, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v14

    const/16 v18, 0x1

    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gm/provider/Urls;->newProtoRequest(Landroid/content/ContentResolver;IJLcom/google/common/io/protocol/ProtoBuf;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    return-object v2
.end method

.method newParserForProtoResponse(Lorg/apache/http/HttpResponse;)Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 2810
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 2811
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2812
    new-instance v1, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No response body received. Status is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2815
    :cond_0
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    .line 2816
    new-instance v1, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error returned from server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2819
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    .line 2821
    new-instance v1, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;

    invoke-direct {v1, v0}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;-><init>(Ljava/io/InputStream;)V

    .line 2823
    invoke-virtual {v1}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->readNextChunkPart()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2824
    if-nez v0, :cond_2

    .line 2825
    new-instance v0, Lcom/google/android/gm/provider/MailSync$ResponseParseException;

    const-string v1, "End of stream while reading next chunk part"

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync$ResponseParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2828
    :cond_2
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2829
    const-string v2, "Gmail"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2830
    invoke-static {v0}, Lcom/google/android/gm/provider/ProtoBufHelpers;->printHttpResponseProto(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 2834
    :cond_3
    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 2835
    const-string v3, "serverVersion"

    int-to-long v4, v2

    invoke-virtual {p0, v3, v4, v5}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 2837
    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2839
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The server (version "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") does not support the protocol version that we used"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2844
    :cond_4
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    .line 2845
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_5

    .line 2846
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 2847
    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gm/provider/MailSync;->mEarliestAllowedSyncTimeAsElapsedRealtime:J

    .line 2849
    :cond_5
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2850
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2851
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received mustWipe error from server: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/google/android/gm/provider/MailStore;->wipeAndResync(Ljava/lang/String;)V

    .line 2855
    :cond_6
    invoke-virtual {v0, v6}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 2856
    invoke-virtual {v1, v0}, Lcom/google/android/gm/provider/MailSync$MailProtocolInputStream;->setResponseVersion(I)V

    .line 2859
    return-object v1
.end method

.method public newQueryRequest(Ljava/lang/String;JII)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 8
    .parameter "query"
    .parameter "highestMessageId"
    .parameter "maxResults"
    .parameter "maxSenders"

    .prologue
    .line 802
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v2

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gm/provider/Urls;->getConversationListUrl(Landroid/content/ContentResolver;ILjava/lang/String;JII)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public nextSyncRequest(ZZLcom/google/android/gm/provider/MailEngine$SyncInfo;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 55
    .parameter "force"
    .parameter "justLive"
    .parameter "syncInfo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/google/android/gm/provider/MailEngine$SyncInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/provider/MailSync$ConversationInfo;",
            ">;)",
            "Lorg/apache/http/client/methods/HttpUriRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    .local p4, conversationsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->waitUntilEarliestAllowedSyncTime()V

    .line 619
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z

    .line 621
    const-string v5, "needConfigSuggestion"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 624
    const/16 v37, 0xc8

    .line 625
    .local v37, maxMessageCount:I
    const/16 v32, 0x32

    .line 626
    .local v32, alwaysDownloadLabelLimit:I
    const-wide v51, 0x3fe999999999999aL

    .line 627
    .local v51, unreadFractionLimit:D
    const-wide/16 v46, 0x5

    .line 628
    .local v46, recentLabelDurationDays:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v7

    const/16 v8, 0xc8

    const/16 v9, 0x32

    const-wide v10, 0x3fe999999999999aL

    const-wide/16 v12, 0x5

    invoke-virtual/range {v5 .. v13}, Lcom/google/android/gm/provider/Urls;->getGetSyncConfigSuggestionRequest(Landroid/content/ContentResolver;IIIDJ)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    .line 786
    .end local v32           #alwaysDownloadLabelLimit:I
    .end local v37           #maxMessageCount:I
    .end local v46           #recentLabelDurationDays:J
    .end local v51           #unreadFractionLimit:D
    .end local p3
    :goto_0
    return-object v5

    .line 634
    .restart local p3
    :cond_0
    const-string v5, "clientId"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v8

    .line 635
    .local v8, clientId:J
    const-string v5, "configDirty"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v33

    .line 636
    .local v33, configDirty:Z
    const-wide/16 v5, 0x0

    cmp-long v5, v8, v5

    if-eqz v5, :cond_1

    if-eqz v33, :cond_3

    if-nez p2, :cond_3

    .line 637
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v8, v5

    if-nez v5, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 638
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v7

    const-string v10, "labelsIncluded"

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    const-string v11, "labelsPartial"

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getStringSetSetting(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v11

    const-string v12, "conversationAgeDays"

    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "maxAttachmentSize"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual/range {v5 .. v15}, Lcom/google/android/gm/provider/Urls;->getSyncConfigRequest(Landroid/content/ContentResolver;IJLjava/util/Set;Ljava/util/Set;JJ)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    goto :goto_0

    .line 646
    :cond_3
    const-string v5, "highestProcessedServerOperationId"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v10

    .line 648
    .local v10, handledServerOperationId:J
    const-string v5, "highestBackwardConversationId"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v12

    .line 650
    .local v12, upperFetchedConversationId:J
    const-string v5, "lowestBackwardConversationId"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getLongSetting(Ljava/lang/String;)J

    move-result-wide v14

    .line 653
    .local v14, lowerFetchedConversationId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "gmail_start_sync_interval"

    const/16 v7, 0x32

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v50

    .line 659
    .local v50, syncInterval:I
    new-instance v36, Ljava/util/Random;

    invoke-direct/range {v36 .. v36}, Ljava/util/Random;-><init>()V

    .line 660
    .local v36, generator:Ljava/util/Random;
    move-object/from16 v0, v36

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    rem-int v5, v5, v50

    if-nez v5, :cond_6

    const/4 v5, 0x1

    move/from16 v49, v5

    .line 662
    .local v49, shouldStartSync:Z
    :goto_1
    const-string v5, "startSyncNeeded"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "unackedSentOperations"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v49, :cond_7

    .line 678
    :cond_4
    cmp-long v5, v12, v14

    if-gez v5, :cond_5

    .line 679
    const-wide/16 v12, 0x0

    .line 680
    const-wide/16 v14, 0x0

    .line 682
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getClientOperationToAck()J

    move-result-wide v16

    invoke-virtual/range {v5 .. v17}, Lcom/google/android/gm/provider/Urls;->getStartSyncRequest(Landroid/content/ContentResolver;IJJJJJ)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v5

    goto/16 :goto_0

    .line 660
    .end local v49           #shouldStartSync:Z
    :cond_6
    const/4 v5, 0x0

    move/from16 v49, v5

    goto :goto_1

    .line 693
    .restart local v49       #shouldStartSync:Z
    :cond_7
    if-eqz p2, :cond_8

    .line 694
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 695
    .local v24, conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v25

    .line 705
    .local v25, messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_2
    const/16 v42, 0x0

    .line 707
    .local v42, operationSink:Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getClientOperationToAck()J

    move-result-wide v22

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getDirtyConversations()Ljava/util/ArrayList;

    move-result-object v26

    move-wide/from16 v18, v14

    move-wide/from16 v20, v10

    move-object/from16 v27, p3

    invoke-virtual/range {v16 .. v27}, Lcom/google/android/gm/provider/Urls;->getMainSyncRequestProto(Landroid/content/ContentResolver;JJJLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v21

    .line 718
    .local v21, requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z

    move v5, v0

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    goto/16 :goto_0

    .line 697
    .end local v21           #requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v24           #conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    .end local v25           #messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v42           #operationSink:Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;
    :cond_8
    if-eqz p4, :cond_9

    move-object/from16 v24, p4

    .line 700
    .restart local v24       #conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v5, v0

    invoke-interface {v5}, Lcom/google/android/gm/provider/MailStore;->getMessageIdsToFetch()Ljava/util/ArrayList;

    move-result-object v25

    .restart local v25       #messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_2

    .line 697
    .end local v24           #conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    .end local v25           #messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/google/android/gm/provider/MailStore;->getConversationInfosToFetch(Lcom/google/android/gm/provider/MailEngine$SyncInfo;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v24, v5

    goto :goto_3

    .line 719
    .restart local v21       #requestProto:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v24       #conversationInfosToCheck:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/provider/MailSync$ConversationInfo;>;"
    .restart local v25       #messageIdsToFetch:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v42       #operationSink:Lcom/google/android/gm/provider/MailSync$AbstractOperationSink;
    :cond_a
    const/4 v5, 0x7

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v53

    .line 720
    .local v53, uphillSyncProto:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v45, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;

    move-object/from16 v0, v45

    move-object/from16 v1, p0

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;-><init>(Lcom/google/android/gm/provider/MailSync;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 721
    .local v45, protoOperationSink:Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v45

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lcom/google/android/gm/provider/MailStore;->provideOperations(Lcom/google/android/gm/provider/MailStore$OperationSink;Lcom/google/android/gm/provider/MailEngine$SyncInfo;)V

    .line 722
    invoke-virtual/range {v45 .. v45}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->getParts()Ljava/util/ArrayList;

    move-result-object v39

    .line 723
    .local v39, messageParts:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/http/Part;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->getRequestVersion()I

    move-result v18

    const/16 v22, 0x0

    move-wide/from16 v19, v8

    invoke-virtual/range {v16 .. v22}, Lcom/google/android/gm/provider/Urls;->newProtoRequest(Landroid/content/ContentResolver;IJLcom/google/common/io/protocol/ProtoBuf;Z)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v48

    .line 726
    .local v48, request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "gmail_use_multipart_protobuf"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    move/from16 v54, v5

    .line 729
    .local v54, useMultiPartProtoBuf:Z
    :goto_4
    if-eqz v54, :cond_f

    :try_start_0
    invoke-virtual/range {v45 .. v45}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->hasAttachments()Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz v39, :cond_f

    .line 736
    new-instance v26, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;

    const-string v28, "PROTOBUFDATA"

    invoke-virtual/range {v21 .. v21}, Lcom/google/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v5

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v31

    move-object/from16 v27, p0

    invoke-direct/range {v26 .. v31}, Lcom/google/android/gm/provider/MailSync$ProtoBufPartSource;-><init>(Lcom/google/android/gm/provider/MailSync;Ljava/lang/String;J[B)V

    .line 738
    .local v26, partSource:Lcom/google/android/common/http/PartSource;
    new-instance v44, Lcom/google/android/common/http/FilePart;

    const-string v5, "PROTOBUFDATA"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v44

    move-object v1, v5

    move-object/from16 v2, v26

    move-object v3, v6

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/common/http/FilePart;-><init>(Ljava/lang/String;Lcom/google/android/common/http/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    .local v44, part:Lcom/google/android/common/http/FilePart;
    move-object/from16 v0, v39

    move-object/from16 v1, v44

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v5, Lcom/google/android/common/http/MultipartEntity;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/google/android/common/http/Part;

    move-object/from16 v0, v39

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, [Lcom/google/android/common/http/Part;

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/google/android/common/http/MultipartEntity;-><init>([Lcom/google/android/common/http/Part;)V

    move-object/from16 v0, v48

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 764
    .end local v26           #partSource:Lcom/google/android/common/http/PartSource;
    .end local v44           #part:Lcom/google/android/common/http/FilePart;
    :goto_5
    move-object/from16 v42, v45

    .line 766
    const/4 v5, 0x5

    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->getNumOperations()I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    move v1, v5

    move-wide v2, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gm/provider/MailSync;->incStats(IJ)V

    .line 768
    const-string v5, "moreForwardSyncNeeded"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/gm/provider/MailSync;->getBooleanSetting(Ljava/lang/String;)Z

    move-result v40

    .line 770
    .local v40, moreForwardSyncNeeded:Z
    if-nez p2, :cond_11

    const-wide/16 v5, 0x0

    cmp-long v5, v14, v5

    if-nez v5, :cond_b

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_b

    if-nez v40, :cond_b

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_b

    if-eqz p1, :cond_11

    :cond_b
    const/4 v5, 0x1

    move/from16 v41, v5

    .line 776
    .local v41, nonLiveSync:Z
    :goto_6
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->getNumOperations()I

    move-result v5

    if-nez v5, :cond_c

    if-eqz v41, :cond_12

    .line 777
    :cond_c
    const-string v5, "moreForwardSyncNeeded"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 778
    invoke-virtual/range {v42 .. v42}, Lcom/google/android/gm/provider/MailSync$ProtoOperationSink;->getNumOperations()I

    move-result v5

    if-eqz v5, :cond_d

    .line 779
    const-string v5, "unackedSentOperations"

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 781
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    move-object/from16 v5, v48

    .line 782
    goto/16 :goto_0

    .line 726
    .end local v40           #moreForwardSyncNeeded:Z
    .end local v41           #nonLiveSync:Z
    .end local v54           #useMultiPartProtoBuf:Z
    .restart local p3
    :cond_e
    const/4 v5, 0x0

    move/from16 v54, v5

    goto/16 :goto_4

    .line 742
    .restart local v54       #useMultiPartProtoBuf:Z
    :cond_f
    :try_start_1
    new-instance v43, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v43 .. v43}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 743
    .local v43, os:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, v21

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "gmail_max_gzip_size_bytes"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mUrls:Lcom/google/android/gm/provider/Urls;

    move-object v7, v0

    const v7, 0x3d090

    invoke-static {v5, v6, v7}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v38

    .line 753
    .local v38, maxSize:I
    invoke-virtual/range {v43 .. v43}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v38

    if-gt v0, v1, :cond_10

    .line 754
    invoke-virtual/range {v43 .. v43}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/provider/MailSync;->mResolver:Landroid/content/ContentResolver;

    move-object v6, v0

    invoke-static {v5, v6}, Landroid/net/http/AndroidHttpClient;->getCompressedEntity([BLandroid/content/ContentResolver;)Lorg/apache/http/entity/AbstractHttpEntity;

    move-result-object v35

    .line 759
    .local v35, entity:Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_7
    move-object/from16 v0, v48

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    .line 761
    .end local v35           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v38           #maxSize:I
    .end local v43           #os:Ljava/io/ByteArrayOutputStream;
    .end local p3
    :catch_0
    move-exception v5

    move-object/from16 v34, v5

    .line 762
    .local v34, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Should not get IO errors while writing to ram"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 757
    .end local v34           #e:Ljava/io/IOException;
    .restart local v38       #maxSize:I
    .restart local v43       #os:Ljava/io/ByteArrayOutputStream;
    .restart local p3
    :cond_10
    :try_start_2
    new-instance v35, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v43 .. v43}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    move-object/from16 v0, v35

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v35       #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    goto :goto_7

    .line 770
    .end local v35           #entity:Lorg/apache/http/entity/AbstractHttpEntity;
    .end local v38           #maxSize:I
    .end local v43           #os:Ljava/io/ByteArrayOutputStream;
    .end local p3
    .restart local v40       #moreForwardSyncNeeded:Z
    :cond_11
    const/4 v5, 0x0

    move/from16 v41, v5

    goto/16 :goto_6

    .line 786
    .restart local v41       #nonLiveSync:Z
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method onServerHasHandledClientOperationdId(J)V
    .locals 2
    .parameter

    .prologue
    .line 1666
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    const-string v0, "Gmail"

    const-string v1, "Received handled client operation id from server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gm/provider/MailStore;->removeOperations(J)V

    .line 1671
    const-string v0, "unackedSentOperations"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1672
    const-string v0, "clientOpToAck"

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    .line 1673
    return-void
.end method

.method public onSyncCanceled()V
    .locals 1

    .prologue
    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->mIsSyncCanceled:Z

    .line 552
    return-void
.end method

.method public onSyncLoopEnd()V
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync;->dirtyConversations:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1222
    return-void
.end method

.method readMessageFromProto(Lcom/google/common/io/protocol/ProtoBuf;JLcom/google/android/gm/provider/Dictionary;)Lcom/google/android/gm/provider/MailSync$Message;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        }
    .end annotation

    .prologue
    .line 2484
    new-instance v9, Lcom/google/android/gm/provider/MailSync$Message;

    invoke-direct {v9}, Lcom/google/android/gm/provider/MailSync$Message;-><init>()V

    .line 2485
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    .line 2486
    iput-wide p2, v9, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    .line 2487
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->readEmailFromProto(Lcom/google/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->fromAddress:Ljava/lang/String;

    .line 2489
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->dateSentMs:J

    .line 2490
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->dateReceivedMs:J

    .line 2491
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->subject:Ljava/lang/String;

    .line 2492
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->snippet:Ljava/lang/String;

    .line 2493
    const-string v0, ""

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->listInfo:Ljava/lang/String;

    .line 2494
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->personalLevel:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2496
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->bodyEmbedsExternalResources:Z

    .line 2499
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2500
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->refMsgId:Ljava/lang/String;

    .line 2503
    :cond_0
    const/16 v0, 0xe

    iget-object v1, v9, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllLongs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2504
    iget-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->labelIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2508
    iget-object v3, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v3, v1, v2}, Lcom/google/android/gm/provider/MailStore;->getOrAddLabel(J)Lcom/google/android/gm/provider/MailCore$Label;

    goto :goto_0

    .line 2511
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->toAddresses:Ljava/util/List;

    .line 2512
    const/16 v0, 0x9

    iget-object v1, v9, Lcom/google/android/gm/provider/MailSync$Message;->toAddresses:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->addAddressesInProto(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/List;)V

    .line 2513
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->ccAddresses:Ljava/util/List;

    .line 2514
    const/16 v0, 0xa

    iget-object v1, v9, Lcom/google/android/gm/provider/MailSync$Message;->ccAddresses:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->addAddressesInProto(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/List;)V

    .line 2515
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->bccAddresses:Ljava/util/List;

    .line 2516
    const/16 v0, 0xb

    iget-object v1, v9, Lcom/google/android/gm/provider/MailSync$Message;->bccAddresses:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->addAddressesInProto(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/List;)V

    .line 2517
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->replyToAddresses:Ljava/util/List;

    .line 2518
    const/16 v0, 0xc

    iget-object v1, v9, Lcom/google/android/gm/provider/MailSync$Message;->replyToAddresses:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gm/provider/MailSync;->addAddressesInProto(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/List;)V

    .line 2521
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2522
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    iget-wide v4, v9, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    iget-wide v6, v9, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    move-object v0, p0

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gm/provider/MailSync;->unzipMessageBody([BJJJLcom/google/android/gm/provider/Dictionary;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    .line 2533
    :goto_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    .line 2535
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2536
    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Lcom/google/android/gm/provider/ProtoBufHelpers;->getAllProtoBufs(Lcom/google/common/io/protocol/ProtoBuf;ILjava/util/Collection;)V

    .line 2537
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/io/protocol/ProtoBuf;

    .line 2538
    new-instance v1, Lcom/google/android/gm/provider/Gmail$Attachment;

    invoke-direct {v1}, Lcom/google/android/gm/provider/Gmail$Attachment;-><init>()V

    .line 2539
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    .line 2540
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gm/provider/Gmail$Attachment;->name:Ljava/lang/String;

    .line 2541
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gm/provider/Gmail$Attachment;->contentType:Ljava/lang/String;

    .line 2543
    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    iput v2, v1, Lcom/google/android/gm/provider/Gmail$Attachment;->size:I

    .line 2544
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gm/provider/Gmail$Attachment;->simpleContentType:Ljava/lang/String;

    .line 2546
    sget-object v2, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->SERVER_ATTACHMENT:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    iput-object v2, v1, Lcom/google/android/gm/provider/Gmail$Attachment;->origin:Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;

    .line 2547
    iget-wide v2, v9, Lcom/google/android/gm/provider/MailSync$Message;->conversationId:J

    iget-wide v4, v9, Lcom/google/android/gm/provider/MailSync$Message;->messageId:J

    iget-object v6, v1, Lcom/google/android/gm/provider/Gmail$Attachment;->partId:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/google/android/gm/provider/Gmail$AttachmentOrigin;->serverExtras(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gm/provider/Gmail$Attachment;->originExtras:Ljava/lang/String;

    .line 2549
    const-string v2, "Gmail"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2550
    const-string v2, "Gmail"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readMessageFromProto: attachment = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gm/provider/Gmail$Attachment;->toJoinedString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :cond_2
    iget-object v2, v9, Lcom/google/android/gm/provider/MailSync$Message;->attachments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2553
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/google/android/gm/provider/MailSync;->incStats(I)V

    goto :goto_2

    .line 2530
    :cond_3
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gm/provider/MailSync$Message;->body:Ljava/lang/String;

    goto/16 :goto_1

    .line 2556
    :cond_4
    const-string v0, "Gmail"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2557
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readMessageFromProto: message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/android/gm/provider/MailSync$Message;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    :cond_5
    return-object v9
.end method

.method public responseContainsAuthFailure(Lorg/apache/http/HttpResponse;)Z
    .locals 2
    .parameter "response"

    .prologue
    .line 1211
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method saveDirtySettings()V
    .locals 4

    .prologue
    .line 3050
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    const-string v3, "labelsIncluded"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    const-string v3, "labelsPartial"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    const-string v3, "conversationAgeDays"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    const-string v3, "maxAttachmentSize"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    move v0, v2

    .line 3056
    .local v0, configChanged:Z
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    .line 3057
    .local v1, dirtySettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mDirtySettings:Ljava/util/Map;

    .line 3058
    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync;->mStore:Lcom/google/android/gm/provider/MailStore;

    invoke-interface {v2, v1, v0}, Lcom/google/android/gm/provider/MailStore;->setSettings(Ljava/util/Map;Z)V

    .line 3059
    return-void

    .line 3050
    .end local v0           #configChanged:Z
    .end local v1           #dirtySettings:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method setBooleanSetting(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3025
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailSync;->setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setConfig(Ljava/lang/String;Ljava/lang/String;JJ)Z
    .locals 6
    .parameter "labelsIncluded"
    .parameter "labelsPartial"
    .parameter "conversationAgeDays"
    .parameter "maxAttachmentSizeMb"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1084
    const/4 v0, 0x0

    .line 1087
    .local v0, dirty:Z
    const-string v1, "labelsIncluded"

    sget-object v2, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1090
    const-string v1, "labelsPartial"

    sget-object v2, Lcom/google/android/gm/provider/MailSync;->LABEL_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gm/provider/MailSync;->setStringSetSetting(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1093
    const-string v1, "conversationAgeDays"

    invoke-virtual {p0, v1, p3, p4}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1094
    const-string v1, "maxAttachmentSize"

    invoke-virtual {p0, v1, p5, p6}, Lcom/google/android/gm/provider/MailSync;->setLongSetting(Ljava/lang/String;J)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1095
    const-string v1, "needConfigSuggestion"

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1096
    if-eqz v0, :cond_0

    .line 1097
    const-string v1, "Gmail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config changed locally to changed the label sets to: included("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), partial("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const-string v1, "configDirty"

    invoke-virtual {p0, v1, v5}, Lcom/google/android/gm/provider/MailSync;->setBooleanSetting(Ljava/lang/String;Z)Z

    .line 1101
    invoke-virtual {p0, v4, v4, v4}, Lcom/google/android/gm/provider/MailSync;->checkLabelsSets(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 1102
    invoke-virtual {p0}, Lcom/google/android/gm/provider/MailSync;->saveDirtySettings()V

    move v1, v5

    .line 1105
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method setIntegerSetting(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3015
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailSync;->setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method setLongSetting(Ljava/lang/String;J)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 3020
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/provider/MailSync;->setStringSetting(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public throwOneIoExceptionWhenHandlingSavedOrSentForTesting()V
    .locals 1

    .prologue
    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/MailSync;->mFakeIoExceptionWhenHandlingMessageSavedOrSent:Z

    .line 2092
    return-void
.end method
