.class public Lcom/android/inputmethod/latin/LatinImeLogger;
.super Ljava/lang/Object;
.source "LatinImeLogger.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinImeLogger$1;,
        Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;,
        Lcom/android/inputmethod/latin/LatinImeLogger$LogSerializer;,
        Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;,
        Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;
    }
.end annotation


# static fields
.field private static sConfigDefaultKeyboardThemeId:Ljava/lang/String;

.field public static sDBG:Z

.field private static sDebugKeyEnabler:Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;

.field private static sKeyboardHeight:I

.field private static sKeyboardWidth:I

.field static sLastAutoSuggestAfter:Ljava/lang/String;

.field static sLastAutoSuggestBefore:Ljava/lang/String;

.field private static sLastAutoSuggestDataType:I

.field private static sLastAutoSuggestDicTypeId:I

.field static sLastAutoSuggestSeparator:Ljava/lang/String;

.field private static sLastAutoSuggestXCoordinates:[I

.field private static sLastAutoSuggestYCoordinates:[I

.field static sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

.field static sLogEnabled:Z

.field private static sPRINTLOGGING:Z

.field private static sPreviousWords:[Ljava/lang/String;

.field private static sSuggestDicMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sUsabilityStudy:Z


# instance fields
.field private mActualCharCount:I

.field private mAddTextToDropBoxTask:Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;

.field private mAutoCancelledCountPerDic:[I

.field private mAutoSuggestCountPerDic:[I

.field private mCurrentLanguage:Ljava/lang/String;

.field private mDeleteCount:I

.field private mDropBox:Landroid/os/DropBoxManager;

.field private mInputCount:I

.field private mLastTimeActive:J

.field private mLastTimeCountEntry:J

.field private mLastTimeSend:J

.field private mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

.field private mLogBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mManualSuggestCountPerDic:[I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrivacyLogBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

.field private mSelectedLanguages:Ljava/lang/String;

.field private mThemeId:Ljava/lang/String;

.field private mWordCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    sput-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    .line 47
    sput-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    .line 87
    sput-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    .line 88
    sput-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    .line 89
    new-instance v0, Lcom/android/inputmethod/latin/LatinImeLogger;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/LatinImeLogger;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    .line 104
    new-instance v0, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;-><init>(Lcom/android/inputmethod/latin/LatinImeLogger$1;)V

    sput-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDebugKeyEnabler:Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;

    .line 105
    sput v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sKeyboardWidth:I

    .line 106
    sput v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sKeyboardHeight:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    .line 110
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrivacyLogBuffer:Ljava/util/ArrayList;

    .line 111
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    .line 113
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    .line 114
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrefs:Landroid/content/SharedPreferences;

    .line 115
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDropBox:Landroid/os/DropBoxManager;

    .line 127
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoSuggestCountPerDic:[I

    .line 128
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mManualSuggestCountPerDic:[I

    .line 129
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoCancelledCountPerDic:[I

    .line 881
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/inputmethod/latin/LatinImeLogger;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeSend:J

    return-wide p1
.end method

.method private addCountEntry(J)V
    .locals 7
    .parameter "time"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 243
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    if-eqz v0, :cond_0

    .line 244
    const-string v0, "LatinIMELogs"

    const-string v1, "Log counts. (4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/4 v2, 0x4

    new-array v3, v6, [Ljava/lang/String;

    iget v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDeleteCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/4 v2, 0x3

    new-array v3, v6, [Ljava/lang/String;

    iget v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mInputCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/4 v2, 0x5

    new-array v3, v6, [Ljava/lang/String;

    iget v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mWordCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/4 v2, 0x6

    new-array v3, v6, [Ljava/lang/String;

    iget v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mActualCharCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iput v5, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDeleteCount:I

    .line 255
    iput v5, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mInputCount:I

    .line 256
    iput v5, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mWordCount:I

    .line 257
    iput v5, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mActualCharCount:I

    .line 258
    iput-wide p1, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeCountEntry:J

    .line 259
    return-void
.end method

.method private addData(ILjava/lang/Object;)V
    .locals 8
    .parameter "tag"
    .parameter "data"

    .prologue
    const-wide/16 v6, 0x4e20

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 370
    sparse-switch p1, :sswitch_data_0

    .line 435
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v2, :cond_0

    .line 436
    const-string v2, "LatinIMELogs"

    const-string v3, "Log Tag is not entried."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 372
    .restart local p2
    :sswitch_0
    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeActive:J

    iget-wide v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeCountEntry:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDeleteCount:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mInputCount:I

    if-nez v2, :cond_2

    .line 374
    :cond_1
    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeActive:J

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->addCountEntry(J)V

    .line 376
    :cond_2
    iget v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDeleteCount:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDeleteCount:I

    goto :goto_0

    .line 379
    .restart local p2
    :sswitch_1
    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeActive:J

    iget-wide v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeCountEntry:J

    sub-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-gtz v2, :cond_3

    iget v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDeleteCount:I

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mInputCount:I

    if-nez v2, :cond_4

    .line 381
    :cond_3
    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeActive:J

    invoke-direct {p0, v2, v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->addCountEntry(J)V

    .line 383
    :cond_4
    iget v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mInputCount:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mInputCount:I

    goto :goto_0

    .line 387
    .restart local p2
    :sswitch_2
    iget v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mWordCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mWordCount:I

    .line 388
    check-cast p2, [Ljava/lang/String;

    .end local p2
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 389
    .local v1, dataStrings:[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, v3, :cond_5

    .line 390
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v2, :cond_0

    .line 391
    const-string v2, "LatinIMELogs"

    const-string v3, "The length of logged string array is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    :cond_5
    iget v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mActualCharCount:I

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mActualCharCount:I

    .line 396
    aget-object v2, v1, v5

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->checkStringDataSafe(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->checkStringDataSafe(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 397
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrivacyLogBuffer:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, p1, v1}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 400
    :cond_6
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v2, :cond_0

    .line 401
    const-string v2, "LatinIMELogs"

    const-string v3, "Skipped to add an entry because data is unsafe."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 406
    .end local v1           #dataStrings:[Ljava/lang/String;
    .restart local p2
    :sswitch_3
    iget v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mWordCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mWordCount:I

    .line 407
    check-cast p2, [Ljava/lang/String;

    .end local p2
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 408
    .restart local v1       #dataStrings:[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, v3, :cond_7

    .line 409
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v2, :cond_0

    .line 410
    const-string v2, "LatinIMELogs"

    const-string v3, "The length of logged string array is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    :cond_7
    iget v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mActualCharCount:I

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mActualCharCount:I

    .line 415
    aget-object v2, v1, v5

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->checkStringDataSafe(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->checkStringDataSafe(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 416
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrivacyLogBuffer:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, p1, v1}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 419
    :cond_8
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v2, :cond_0

    .line 420
    const-string v2, "LatinIMELogs"

    const-string v3, "Skipped to add an entry because data is unsafe."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 425
    .end local v1           #dataStrings:[Ljava/lang/String;
    .restart local p2
    :sswitch_4
    check-cast p2, [Ljava/lang/String;

    .end local p2
    move-object v0, p2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    .line 426
    .restart local v1       #dataStrings:[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, v3, :cond_9

    .line 427
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v2, :cond_0

    .line 428
    const-string v2, "LatinIMELogs"

    const-string v3, "The length of logged string array is invalid."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 432
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v1}, Lcom/android/inputmethod/latin/LatinImeLogger;->addExceptionEntry(J[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xa -> :sswitch_4
        0xf -> :sswitch_2
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch
.end method

.method private addExceptionEntry(J[Ljava/lang/String;)V
    .locals 3
    .parameter "time"
    .parameter "data"

    .prologue
    .line 345
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    if-eqz v0, :cond_0

    .line 346
    const-string v0, "LatinIMELogs"

    const-string v1, "Log Exception. (1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/16 v2, 0xa

    invoke-direct {v1, p1, p2, v2, p3}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    return-void
.end method

.method private addLanguagesEntry(J)V
    .locals 6
    .parameter "time"

    .prologue
    .line 306
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    if-eqz v0, :cond_0

    .line 307
    const-string v0, "LatinIMELogs"

    const-string v1, "Log language settings. (1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mCurrentLanguage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mCurrentLanguage:Ljava/lang/String;

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/16 v2, 0xe

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mCurrentLanguage:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mSelectedLanguages:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method private addSettingsEntry(J)V
    .locals 7
    .parameter "time"

    .prologue
    .line 319
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    if-eqz v2, :cond_0

    .line 320
    const-string v2, "LatinIMELogs"

    const-string v3, "Log settings. (1)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, defaultAutoCorrectionThreshold:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "auto_correction_threshold"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, currentAutoCorrectionThreshold:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/16 v4, 0x8

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-direct {v3, p1, p2, v4, v5}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method private addSuggestionCountEntry(J)V
    .locals 6
    .parameter "time"

    .prologue
    const/4 v5, 0x0

    .line 262
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    if-eqz v2, :cond_0

    .line 263
    const-string v2, "LatinIMELogs"

    const-string v3, "log suggest counts. (1)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoSuggestCountPerDic:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 266
    .local v1, s:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoSuggestCountPerDic:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/16 v4, 0xd

    invoke-direct {v3, p1, p2, v4, v1}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoCancelledCountPerDic:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoCancelledCountPerDic:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    :cond_2
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/16 v4, 0xc

    invoke-direct {v3, p1, p2, v4, v1}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mManualSuggestCountPerDic:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 278
    const/4 v0, 0x0

    :goto_2
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 279
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mManualSuggestCountPerDic:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 281
    :cond_3
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/16 v4, 0xb

    invoke-direct {v3, p1, p2, v4, v1}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoSuggestCountPerDic:[I

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    .line 284
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mManualSuggestCountPerDic:[I

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    .line 285
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoCancelledCountPerDic:[I

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    .line 286
    return-void
.end method

.method private addThemeIdEntry(J)V
    .locals 6
    .parameter "time"

    .prologue
    .line 289
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "LatinIMELogs"

    const-string v1, "Log theme Id. (1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mThemeId:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    const-string v0, "6"

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mThemeId:Ljava/lang/String;

    .line 301
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/4 v2, 0x7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mThemeId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p1, p2, v2, v3}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    return-void

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mThemeId:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 296
    const-string v0, "7"

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mThemeId:Ljava/lang/String;

    goto :goto_0

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mThemeId:Ljava/lang/String;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    const-string v0, "8"

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mThemeId:Ljava/lang/String;

    goto :goto_0
.end method

.method private addVersionNameEntry(J)V
    .locals 8
    .parameter "time"

    .prologue
    .line 331
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "LatinIMELogs"

    const-string v3, "Log Version. (1)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 337
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    const/16 v4, 0x9

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-direct {v3, p1, p2, v4, v5}, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;-><init>(JI[Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 339
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 340
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "LatinIMELogs"

    const-string v3, "Could not find version name."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkStringDataSafe(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    .line 231
    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "LatinIMELogs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Check String safety: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    const/4 v1, 0x0

    .line 239
    :goto_1
    return v1

    .line 234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static commit()V
    .locals 4

    .prologue
    .line 541
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    if-eqz v0, :cond_1

    .line 542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-wide v2, v2, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeActive:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrivacyLogBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    const-wide/16 v2, 0x28

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 545
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->commitInternal()V

    .line 548
    :cond_1
    return-void
.end method

.method private commitInternal()V
    .locals 6

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAddTextToDropBoxTask:Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAddTextToDropBoxTask:Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 446
    :cond_0
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    if-eqz v0, :cond_1

    .line 447
    const-string v0, "LatinIMELogs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_1
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinImeLogger;->flushPrivacyLogSafely()V

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 451
    .local v3, now:J
    invoke-direct {p0, v3, v4}, Lcom/android/inputmethod/latin/LatinImeLogger;->addCountEntry(J)V

    .line 452
    invoke-direct {p0, v3, v4}, Lcom/android/inputmethod/latin/LatinImeLogger;->addThemeIdEntry(J)V

    .line 453
    invoke-direct {p0, v3, v4}, Lcom/android/inputmethod/latin/LatinImeLogger;->addLanguagesEntry(J)V

    .line 454
    invoke-direct {p0, v3, v4}, Lcom/android/inputmethod/latin/LatinImeLogger;->addSettingsEntry(J)V

    .line 455
    invoke-direct {p0, v3, v4}, Lcom/android/inputmethod/latin/LatinImeLogger;->addVersionNameEntry(J)V

    .line 456
    invoke-direct {p0, v3, v4}, Lcom/android/inputmethod/latin/LatinImeLogger;->addSuggestionCountEntry(J)V

    .line 457
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/inputmethod/latin/LatinImeLogger$LogSerializer;->createStringFromEntries(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    .line 458
    .local v5, s:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinImeLogger;->reset()V

    .line 459
    new-instance v0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDropBox:Landroid/os/DropBoxManager;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;-><init>(Lcom/android/inputmethod/latin/LatinImeLogger;Landroid/os/DropBoxManager;JLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAddTextToDropBoxTask:Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;

    .line 462
    .end local v3           #now:J
    .end local v5           #s:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private commitInternalAndStopSelf()V
    .locals 2

    .prologue
    .line 465
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_0

    .line 466
    const-string v0, "LatinIMELogs"

    const-string v1, "Exception was thrown and let\'s die."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinImeLogger;->commitInternal()V

    .line 469
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->hideWindow()V

    .line 470
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->stopSelf()V

    .line 471
    return-void
.end method

.method private flushPrivacyLogSafely()V
    .locals 7

    .prologue
    .line 352
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    if-eqz v4, :cond_0

    .line 353
    const-string v4, "LatinIMELogs"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Log obfuscated data. ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrivacyLogBuffer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 356
    .local v2, now:J
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrivacyLogBuffer:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 357
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrivacyLogBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;

    .line 358
    .local v1, l:Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;
    iput-wide v2, v1, Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;->mTime:J

    .line 359
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 361
    .end local v1           #l:Lcom/android/inputmethod/latin/LatinImeLogger$LogEntry;
    :cond_1
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrivacyLogBuffer:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 362
    return-void
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 1
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 537
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/latin/LatinImeLogger;->initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 538
    return-void
.end method

.method private initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "context"
    .parameter "prefs"

    .prologue
    const/4 v2, 0x0

    .line 179
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    .line 180
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrefs:Landroid/content/SharedPreferences;

    .line 181
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDropBox:Landroid/os/DropBoxManager;

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeSend:J

    .line 183
    iget-wide v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeSend:J

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeActive:J

    .line 184
    iget-wide v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeSend:J

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeCountEntry:J

    .line 185
    iput v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDeleteCount:I

    .line 186
    iput v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mInputCount:I

    .line 187
    iput v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mWordCount:I

    .line 188
    iput v2, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mActualCharCount:I

    .line 189
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoSuggestCountPerDic:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 190
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mManualSuggestCountPerDic:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 191
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoCancelledCountPerDic:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrivacyLogBuffer:Ljava/util/ArrayList;

    .line 194
    const-string v0, "usability_study_mode"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    .line 195
    const-string v0, "enable_logging"

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    .line 196
    const/high16 v0, 0x7f0c

    invoke-virtual {p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sConfigDefaultKeyboardThemeId:Ljava/lang/String;

    .line 198
    const-string v0, "pref_keyboard_layout_20100902"

    sget-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sConfigDefaultKeyboardThemeId:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mThemeId:Ljava/lang/String;

    .line 200
    const-string v0, "selected_languages"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mSelectedLanguages:Ljava/lang/String;

    .line 201
    const-string v0, "input_language"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mCurrentLanguage:Ljava/lang/String;

    .line 202
    const-string v0, "debug_mode"

    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    .line 203
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    .line 204
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    invoke-static {p1, v0, v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->init(Landroid/inputmethodservice/InputMethodService;ZZ)Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    .line 205
    invoke-interface {p2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 206
    return-void

    :cond_1
    move v0, v2

    .line 195
    goto :goto_0
.end method

.method public static logOnAutoSuggestion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 646
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    if-eqz v0, :cond_1

    .line 647
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 648
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_0

    .line 649
    const-string v0, "LatinIMELogs"

    const-string v1, "logOnAutoSuggestion was cancelled: from unknown dic."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 729
    :cond_1
    return-void

    .line 652
    :cond_2
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getLastChar()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 653
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestDicTypeId:I

    .line 654
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestDataType:I

    .line 655
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoSuggestCountPerDic:[I

    sget v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestDicTypeId:I

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    .line 656
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    if-eqz v0, :cond_3

    .line 657
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 658
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[----]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V

    .line 665
    :cond_3
    :goto_1
    sget v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestDicTypeId:I

    if-eq v0, v12, :cond_a

    .line 666
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v0, :cond_4

    .line 667
    const-string v0, "LatinIMELogs"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logOnAutoSuggestion was cancelled: not from main dic.:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestDicTypeId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_4
    const-string v0, ""

    .line 671
    const-string v2, ""

    .line 672
    const/4 v3, 0x0

    sput-object v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sPreviousWords:[Ljava/lang/String;

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    .line 676
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 677
    const-string v0, ""

    .line 678
    const-string v2, ""

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    .line 689
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 690
    sget-object v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sPreviousWords:[Ljava/lang/String;

    if-nez v4, :cond_7

    move v4, v11

    .line 692
    :goto_3
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x6

    add-int/2addr v5, v4

    new-array v5, v5, [Ljava/lang/String;

    .line 694
    new-array v6, v3, [I

    sput-object v6, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestXCoordinates:[I

    .line 695
    new-array v6, v3, [I

    sput-object v6, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestYCoordinates:[I

    .line 697
    aput-object v2, v5, v11

    .line 698
    aput-object v0, v5, v12

    .line 699
    const/4 v6, 0x2

    aput-object v1, v5, v6

    .line 700
    const/4 v6, 0x3

    sget v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestDataType:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 701
    const/4 v6, 0x4

    sget v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sKeyboardWidth:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 702
    const/4 v6, 0x5

    sget v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sKeyboardHeight:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move v6, v11

    .line 704
    :goto_4
    if-ge v6, v3, :cond_8

    .line 705
    sget-object v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v7, v7, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int v9, v3, v6

    sub-int/2addr v9, v12

    invoke-virtual {v7, v8, v9}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getPreviousX(CI)I

    move-result v7

    .line 707
    sget-object v8, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v8, v8, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int v10, v3, v6

    sub-int/2addr v10, v12

    invoke-virtual {v8, v9, v10}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getPreviousY(CI)I

    move-result v8

    .line 709
    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v9, v9, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    .line 710
    mul-int/lit8 v9, v6, 0x2

    add-int/lit8 v9, v9, 0x6

    add-int/lit8 v9, v9, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v9

    .line 711
    sget-object v9, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestXCoordinates:[I

    aput v7, v9, v6

    .line 712
    sget-object v7, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestYCoordinates:[I

    aput v8, v7, v6

    .line 704
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 661
    :cond_6
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Auto]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 690
    :cond_7
    sget-object v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sPreviousWords:[Ljava/lang/String;

    array-length v4, v4

    goto/16 :goto_3

    :cond_8
    move v6, v11

    .line 715
    :goto_5
    if-ge v6, v4, :cond_9

    .line 716
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x6

    add-int/2addr v7, v6

    sget-object v8, Lcom/android/inputmethod/latin/LatinImeLogger;->sPreviousWords:[Ljava/lang/String;

    aget-object v8, v8, v6

    aput-object v8, v5, v7

    .line 715
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 719
    :cond_9
    sget-object v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    const/16 v4, 0x11

    invoke-direct {v3, v4, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->sendLogToDropBox(ILjava/lang/Object;)V

    .line 721
    const-class v3, Lcom/android/inputmethod/latin/LatinImeLogger;

    monitor-enter v3

    .line 722
    :try_start_0
    sput-object v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestBefore:Ljava/lang/String;

    .line 723
    sput-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestAfter:Ljava/lang/String;

    .line 724
    sput-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestSeparator:Ljava/lang/String;

    .line 725
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_a
    move-object v0, p1

    move-object v2, p0

    goto/16 :goto_2
.end method

.method public static logOnAutoSuggestionCanceled()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 732
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    if-eqz v0, :cond_4

    .line 733
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoCancelledCountPerDic:[I

    sget v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestDicTypeId:I

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 734
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestBefore:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestAfter:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 735
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    if-eqz v0, :cond_0

    .line 736
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestBefore:Ljava/lang/String;

    sget-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestAfter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Cancel]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestBefore:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestAfter:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V

    .line 750
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestXCoordinates:[I

    if-nez v0, :cond_1

    move v0, v4

    .line 753
    :goto_0
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 754
    sget-object v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestBefore:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 755
    const/4 v2, 0x1

    sget-object v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestAfter:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 756
    const/4 v2, 0x2

    sget-object v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestSeparator:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 757
    const/4 v2, 0x3

    sget v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestDataType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 758
    const/4 v2, 0x4

    sget v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sKeyboardWidth:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 759
    const/4 v2, 0x5

    sget v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sKeyboardHeight:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move v2, v4

    .line 760
    :goto_1
    if-ge v2, v0, :cond_2

    .line 761
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x6

    sget-object v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestXCoordinates:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 763
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestYCoordinates:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 760
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 750
    :cond_1
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestXCoordinates:[I

    array-length v0, v0

    goto :goto_0

    .line 766
    :cond_2
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    const/16 v2, 0x12

    invoke-direct {v0, v2, v1}, Lcom/android/inputmethod/latin/LatinImeLogger;->sendLogToDropBox(ILjava/lang/Object;)V

    .line 769
    :cond_3
    const-class v0, Lcom/android/inputmethod/latin/LatinImeLogger;

    monitor-enter v0

    .line 770
    :try_start_0
    const-string v1, ""

    sput-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestBefore:Ljava/lang/String;

    .line 771
    const-string v1, ""

    sput-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestAfter:Ljava/lang/String;

    .line 772
    const-string v1, ""

    sput-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestSeparator:Ljava/lang/String;

    .line 773
    monitor-exit v0

    .line 775
    :cond_4
    return-void

    .line 773
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static logOnDelete()V
    .locals 4

    .prologue
    .line 778
    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    if-eqz v1, :cond_2

    .line 779
    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    if-eqz v1, :cond_0

    .line 780
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->writeBackSpace()V

    .line 782
    :cond_0
    sget-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getLastString()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, mLastWord:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLastAutoSuggestBefore:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnAutoSuggestionCanceled()V

    .line 787
    :cond_1
    sget-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->pop()C

    .line 788
    sget-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->sendLogToDropBox(ILjava/lang/Object;)V

    .line 790
    .end local v0           #mLastWord:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public static logOnException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .parameter "metaData"
    .parameter "e"

    .prologue
    const/4 v7, 0x0

    .line 799
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    if-eqz v3, :cond_1

    .line 800
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 801
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 802
    .local v2, ps:Ljava/io/PrintStream;
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 803
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    const/16 v5, 0x190

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-direct {v3, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 805
    .local v1, exceptionString:Ljava/lang/String;
    sget-object v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    const/16 v4, 0xa

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p0, v5, v7

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->sendLogToDropBox(ILjava/lang/Object;)V

    .line 807
    sget-boolean v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v3, :cond_0

    .line 808
    const-string v3, "LatinIMELogs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    :cond_0
    sget-object v3, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    invoke-direct {v3}, Lcom/android/inputmethod/latin/LatinImeLogger;->commitInternalAndStopSelf()V

    .line 821
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #exceptionString:Ljava/lang/String;
    .end local v2           #ps:Ljava/io/PrintStream;
    :cond_1
    return-void
.end method

.method public static logOnInputChar()V
    .locals 3

    .prologue
    .line 793
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    if-eqz v0, :cond_0

    .line 794
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->sendLogToDropBox(ILjava/lang/Object;)V

    .line 796
    :cond_0
    return-void
.end method

.method public static logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 6
    .parameter "before"
    .parameter "after"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 558
    .local p3, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 561
    sget-object p3, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    .end local p3           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/16 v0, 0xf

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .end local p2
    aput-object p2, v1, v2

    const/4 p2, 0x3

    const-string v2, ""

    aput-object v2, v1, p2

    invoke-direct {p3, v0, v1}, Lcom/android/inputmethod/latin/LatinImeLogger;->sendLogToDropBox(ILjava/lang/Object;)V

    .line 641
    :cond_0
    :goto_0
    sget-object p2, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 643
    :cond_1
    return-void

    .line 563
    .restart local p2
    .restart local p3       #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 564
    sget-boolean p2, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    .end local p2
    if-eqz p2, :cond_0

    .line 565
    const-string p2, "LatinIMELogs"

    const-string p3, "logOnManualSuggestion was cancelled: from unknown dic."

    .end local p3           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    .restart local p2
    .restart local p3       #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_3
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 569
    .local v0, dicTypeId:I
    sget-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v1, v1, Lcom/android/inputmethod/latin/LatinImeLogger;->mManualSuggestCountPerDic:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    .line 570
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 571
    sget-boolean p0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    .end local p0
    if-eqz p0, :cond_4

    .line 572
    const-string p0, "LatinIMELogs"

    const-string p1, "logOnManualSuggestion was cancelled: not from main dic."

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_4
    const-string p0, ""

    .line 575
    .restart local p0
    const-string p1, ""

    .line 576
    .restart local p1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPreviousWords:[Ljava/lang/String;

    .line 580
    .end local v0           #dicTypeId:I
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 581
    const-string p0, ""

    .line 582
    const-string p1, ""

    .line 604
    :cond_6
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPreviousWords:[Ljava/lang/String;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    .line 605
    .local v1, previousWordsLength:I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .line 607
    .local v3, suggestionLength:I
    const/4 v0, 0x0

    .line 608
    .local v0, COLUMN_BEFORE_ID:I
    const/4 v0, 0x1

    .line 609
    .local v0, COLUMN_AFTER_ID:I
    const/4 v0, 0x2

    .line 610
    .local v0, COLUMN_PICKED_POSITION_ID:I
    const/4 v0, 0x3

    .line 611
    .local v0, COLUMN_SUGGESTION_LENGTH_ID:I
    const/4 v0, 0x4

    .line 612
    .local v0, COLUMN_PREVIOUS_WORDS_COUNT_ID:I
    const/4 v0, 0x5

    .line 614
    .local v0, BASE_COLUMN_SIZE:I
    mul-int/lit8 v0, v3, 0x2

    add-int/lit8 v0, v0, 0x5

    add-int/2addr v0, v1

    new-array v2, v0, [Ljava/lang/String;

    .line 616
    .end local v0           #BASE_COLUMN_SIZE:I
    .local v2, strings:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p0, v2, v0

    .line 617
    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 618
    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .end local p2
    aput-object p2, v2, v0

    .line 619
    const/4 p2, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p2

    .line 620
    const/4 p2, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p2

    .line 622
    const/4 p2, 0x0

    .local p2, i:I
    :goto_2
    if-ge p2, v3, :cond_9

    .line 623
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 624
    .local v0, s:Ljava/lang/String;
    sget-object v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 625
    add-int/lit8 v4, p2, 0x5

    aput-object v0, v2, v4

    .line 626
    add-int/lit8 v4, v3, 0x5

    add-int/2addr v4, p2

    sget-object v5, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #s:Ljava/lang/String;
    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    .line 622
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 604
    .end local v1           #previousWordsLength:I
    .end local v2           #strings:[Ljava/lang/String;
    .end local v3           #suggestionLength:I
    .local p2, position:I
    :cond_7
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPreviousWords:[Ljava/lang/String;

    array-length v0, v0

    move v1, v0

    goto :goto_1

    .line 629
    .restart local v0       #s:Ljava/lang/String;
    .restart local v1       #previousWordsLength:I
    .restart local v2       #strings:[Ljava/lang/String;
    .restart local v3       #suggestionLength:I
    .local p2, i:I
    :cond_8
    add-int/lit8 v0, p2, 0x5

    const-string v4, ""

    .end local v0           #s:Ljava/lang/String;
    aput-object v4, v2, v0

    .line 630
    add-int/lit8 v0, v3, 0x5

    add-int/2addr v0, p2

    const-string v4, ""

    aput-object v4, v2, v0

    goto :goto_3

    .line 634
    :cond_9
    const/4 p2, 0x0

    .end local p3           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_4
    if-ge p2, v1, :cond_a

    .line 635
    mul-int/lit8 p3, v3, 0x2

    add-int/lit8 p3, p3, 0x5

    add-int/2addr p3, p2

    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPreviousWords:[Ljava/lang/String;

    aget-object v0, v0, p2

    aput-object v0, v2, p3

    .line 634
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 638
    :cond_a
    sget-object p2, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    .end local p2           #i:I
    const/16 p3, 0xf

    invoke-direct {p2, p3, v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->sendLogToDropBox(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V
    .locals 4
    .parameter "word"
    .parameter "typeId"
    .parameter "dataType"

    .prologue
    .line 840
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    if-eqz v0, :cond_0

    .line 841
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/inputmethod/latin/Dictionary$DataType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :cond_0
    return-void
.end method

.method public static onDestroy()V
    .locals 1

    .prologue
    .line 551
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->commitInternal()V

    .line 552
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinImeLogger;->destroy()V

    .line 553
    return-void
.end method

.method public static onPrintAllUsabilityStudyLogs()V
    .locals 2

    .prologue
    .line 896
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getLastString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "logloglog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->printAll()V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLatinImeLogger:Lcom/android/inputmethod/latin/LatinImeLogger;

    iget-object v0, v0, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->getLastString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loglogclear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->clearAll()V

    goto :goto_0
.end method

.method public static onSetKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 1
    .parameter "kb"

    .prologue
    .line 846
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getMinWidth()I

    move-result v0

    sput v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sKeyboardWidth:I

    .line 848
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getHeight()I

    move-result v0

    sput v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sKeyboardHeight:I

    .line 850
    :cond_0
    return-void
.end method

.method public static onStartSuggestion(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "previousWords"

    .prologue
    .line 832
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    if-eqz v0, :cond_0

    .line 833
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sSuggestDicMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 834
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const-string v2, ""

    :goto_0
    aput-object v2, v0, v1

    sput-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPreviousWords:[Ljava/lang/String;

    .line 837
    :cond_0
    return-void

    .line 834
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    iput v1, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mDeleteCount:I

    .line 213
    iput v1, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mInputCount:I

    .line 214
    iput v1, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mWordCount:I

    .line 215
    iput v1, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mActualCharCount:I

    .line 216
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoSuggestCountPerDic:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 217
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mManualSuggestCountPerDic:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 218
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAutoCancelledCountPerDic:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 219
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLogBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 220
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mPrivacyLogBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    return-void
.end method

.method private declared-synchronized sendLogToDropBox(ILjava/lang/Object;)V
    .locals 14
    .parameter "tag"
    .parameter "s"

    .prologue
    .line 474
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 475
    .local v4, now:J
    sget-boolean v8, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v8, :cond_2

    .line 476
    const-string v6, ""

    .line 477
    .local v6, out:Ljava/lang/String;
    move-object/from16 v0, p2

    instance-of v0, v0, [Ljava/lang/String;

    move v8, v0

    if-eqz v8, :cond_0

    .line 478
    move-object/from16 v0, p2

    check-cast v0, [Ljava/lang/String;

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v7, v1, v2

    .line 479
    .local v7, str:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v7           #str:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Integer;

    move v8, v0

    if-eqz v8, :cond_1

    .line 482
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 484
    :cond_1
    const-string v8, "LatinIMELogs"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SendLog: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> will be sent after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeSend:J

    sub-long v10, v4, v10

    const-wide/32 v12, 0x493e0

    sub-long/2addr v10, v12

    neg-long v10, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " sec."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    .end local v6           #out:Ljava/lang/String;
    :cond_2
    iget-wide v8, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeActive:J

    sub-long v8, v4, v8

    const-wide/32 v10, 0x493e0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 489
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinImeLogger;->commitInternal()V

    .line 490
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->addData(ILjava/lang/Object;)V

    .line 498
    :goto_1
    iput-wide v4, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeActive:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    monitor-exit p0

    return-void

    .line 491
    :cond_3
    :try_start_1
    iget-wide v8, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeSend:J

    sub-long v8, v4, v8

    const-wide/32 v10, 0x493e0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 493
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->addData(ILjava/lang/Object;)V

    .line 494
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinImeLogger;->commitInternal()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 474
    .end local v4           #now:J
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 496
    .restart local v4       #now:J
    :cond_4
    :try_start_2
    invoke-direct/range {p0 .. p2}, Lcom/android/inputmethod/latin/LatinImeLogger;->addData(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mAddTextToDropBoxTask:Lcom/android/inputmethod/latin/LatinImeLogger$AddTextToDropBoxTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Utils;->cancelTask(Landroid/os/AsyncTask;Z)V

    .line 225
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 502
    const-string v0, "enable_logging"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 503
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    if-eqz v0, :cond_3

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    .line 505
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->init(Landroid/inputmethodservice/InputMethodService;ZZ)Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    .line 534
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 504
    goto :goto_0

    .line 507
    :cond_3
    sput-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    goto :goto_1

    .line 509
    :cond_4
    const-string v0, "pref_keyboard_layout_20100902"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 510
    const-string v0, "pref_keyboard_layout_20100902"

    sget-object v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sConfigDefaultKeyboardThemeId:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mThemeId:Ljava/lang/String;

    .line 512
    iget-wide v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeActive:J

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinImeLogger;->addThemeIdEntry(J)V

    goto :goto_1

    .line 513
    :cond_5
    const-string v0, "debug_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 514
    const-string v0, "debug_mode"

    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    .line 515
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sPRINTLOGGING:Z

    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    goto :goto_1

    .line 516
    :cond_6
    const-string v0, "input_language"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 517
    const-string v0, "input_language"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mCurrentLanguage:Ljava/lang/String;

    .line 519
    iget-wide v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLastTimeActive:J

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinImeLogger;->addLanguagesEntry(J)V

    goto :goto_1

    .line 520
    :cond_7
    const-string v0, "input_language"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 521
    const-string v0, "selected_languages"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mSelectedLanguages:Ljava/lang/String;

    goto :goto_1

    .line 523
    :cond_8
    const-string v0, "auto_cap"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 524
    sget-object v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDebugKeyEnabler:Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinImeLogger$DebugKeyEnabler;->check()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->launchDebugSettings()V

    goto :goto_1

    .line 527
    :cond_9
    const-string v0, "usability_study_mode"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    const-string v0, "usability_study_mode"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    .line 530
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    if-eqz v0, :cond_b

    :cond_a
    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    .line 532
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mLatinIME:Lcom/android/inputmethod/latin/LatinIME;

    sget-boolean v1, Lcom/android/inputmethod/latin/LatinImeLogger;->sLogEnabled:Z

    sget-boolean v2, Lcom/android/inputmethod/latin/LatinImeLogger;->sUsabilityStudy:Z

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/Utils$RingCharBuffer;->init(Landroid/inputmethodservice/InputMethodService;ZZ)Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinImeLogger;->mRingCharBuffer:Lcom/android/inputmethod/latin/Utils$RingCharBuffer;

    goto/16 :goto_1

    :cond_b
    move v0, v1

    .line 530
    goto :goto_2
.end method
