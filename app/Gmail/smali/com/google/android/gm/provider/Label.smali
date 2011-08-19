.class public Lcom/google/android/gm/provider/Label;
.super Ljava/lang/Object;
.source "Label.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/provider/Label$LabelContentObserver;
    }
.end annotation


# static fields
.field private static final LABEL_COMPONENT_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static sLabelUpdateHandler:Landroid/os/Handler;

.field private static sSystemLabelCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static sSystemLabelCacheLock:Ljava/lang/Object;


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private mCanonicalName:Ljava/lang/String;

.field private mColor:Ljava/lang/String;

.field private mCountsInitialized:Z

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private final mFactorySystemLabelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mId:J

.field private final mIsHidden:Z

.field private mIsSystemLabel:Z

.field private mLabelCountBehavior:I

.field private mLabelSyncPolicy:I

.field private mName:Ljava/lang/String;

.field private mNumConversations:I

.field private mNumUnreadConversations:I

.field private mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

.field private mSerializedInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/Label;->sSystemLabelCacheLock:Ljava/lang/Object;

    .line 134
    const-string v0, "\\^\\*\\^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gm/provider/Label;->LABEL_COMPONENT_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZIILjava/util/Map;)V
    .locals 11
    .parameter "context"
    .parameter "account"
    .parameter "id"
    .parameter "canonicalName"
    .parameter "name"
    .parameter "color"
    .parameter "numConversations"
    .parameter "numUnreadConversations"
    .parameter "isHidden"
    .parameter "labelCountBehavior"
    .parameter "labelSyncPolicy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZII",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p13, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gm/provider/Label;->mLabelCountBehavior:I

    .line 100
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I

    .line 116
    new-instance v2, Landroid/database/DataSetObservable;

    invoke-direct {v2}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/provider/Label;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 370
    iput-object p2, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    .line 371
    iput-wide p3, p0, Lcom/google/android/gm/provider/Label;->mId:J

    .line 372
    move/from16 v0, p10

    move-object v1, p0

    iput-boolean v0, v1, Lcom/google/android/gm/provider/Label;->mIsHidden:Z

    .line 373
    move-object/from16 v0, p13

    move-object v1, p0

    iput-object v0, v1, Lcom/google/android/gm/provider/Label;->mFactorySystemLabelMap:Ljava/util/Map;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p11

    move/from16 v10, p12

    .line 375
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gm/provider/Label;->loadInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 377
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "id"
    .parameter "canonicalName"
    .parameter "name"
    .parameter "color"
    .parameter "isHidden"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p9, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput v1, p0, Lcom/google/android/gm/provider/Label;->mLabelCountBehavior:I

    .line 100
    iput v1, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I

    .line 116
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/Label;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 348
    iput-object p2, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    .line 349
    iput-wide p3, p0, Lcom/google/android/gm/provider/Label;->mId:J

    .line 350
    iput-object p5, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    .line 351
    invoke-static {p5}, Lcom/google/android/gm/provider/Gmail;->isSystemLabel(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsSystemLabel:Z

    .line 352
    iput-object p9, p0, Lcom/google/android/gm/provider/Label;->mFactorySystemLabelMap:Ljava/util/Map;

    .line 354
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsSystemLabel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/Label;->getHumanSystemLabelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;

    .line 361
    :goto_0
    iput-object p7, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    .line 362
    iput-boolean v1, p0, Lcom/google/android/gm/provider/Label;->mCountsInitialized:Z

    .line 363
    iput-boolean p8, p0, Lcom/google/android/gm/provider/Label;->mIsHidden:Z

    .line 364
    return-void

    .line 359
    :cond_0
    iput-object p6, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/gm/provider/Label;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/gm/provider/Label;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/google/android/gm/provider/Label;->mId:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/gm/provider/Label;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/android/gm/provider/Label;->load(Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gm/provider/Label;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/gm/provider/Label;->notifyDataSetChanged()V

    return-void
.end method

.method private getHumanSystemLabelName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "c"

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 267
    .local v1, humanReadable:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/gm/provider/Label;->mFactorySystemLabelMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/google/android/gm/provider/Label;->mFactorySystemLabelMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #humanReadable:Ljava/lang/CharSequence;
    check-cast v1, Ljava/lang/CharSequence;

    .line 277
    .restart local v1       #humanReadable:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    :goto_1
    return-object v2

    .line 269
    :cond_1
    if-eqz p1, :cond_0

    .line 271
    sget-object v3, Lcom/google/android/gm/provider/Label;->sSystemLabelCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 272
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/Label;->initLabelCache(Landroid/content/Context;)V

    .line 273
    sget-object v2, Lcom/google/android/gm/provider/Label;->sSystemLabelCache:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/CharSequence;

    move-object v1, v0

    .line 274
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 277
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method static getLabelUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    .locals 2
    .parameter "account"
    .parameter "labelId"

    .prologue
    .line 739
    invoke-static {p0}, Lcom/google/android/gm/provider/Gmail;->getLabelUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 740
    .local v0, labelUri:Landroid/net/Uri;
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 741
    return-object v0
.end method

.method private getSelfUpdateHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 569
    sget-object v1, Lcom/google/android/gm/provider/Label;->sLabelUpdateHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 570
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Label self updater"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 572
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 574
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gm/provider/Label;->sLabelUpdateHandler:Landroid/os/Handler;

    .line 576
    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    sget-object v1, Lcom/google/android/gm/provider/Label;->sLabelUpdateHandler:Landroid/os/Handler;

    return-object v1
.end method

.method static getSystemLabelNameMap(Landroid/content/Context;)Ljava/util/Map;
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    const/4 v0, 0x0

    .line 282
    .local v0, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    if-eqz p0, :cond_0

    .line 283
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 284
    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Label;->loadSystemLabelNameMap(Landroid/content/Context;Ljava/util/Map;)V

    .line 287
    :cond_0
    return-object v0
.end method

.method private initLabelCache(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 312
    sget-object v0, Lcom/google/android/gm/provider/Label;->sSystemLabelCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gm/provider/Label;->sSystemLabelCache:Ljava/util/HashMap;

    .line 316
    :cond_0
    sget-object v0, Lcom/google/android/gm/provider/Label;->sSystemLabelCache:Ljava/util/HashMap;

    invoke-static {p1, v0}, Lcom/google/android/gm/provider/Label;->loadSystemLabelNameMap(Landroid/content/Context;Ljava/util/Map;)V

    .line 317
    return-void
.end method

.method private declared-synchronized load(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 611
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 612
    :try_start_0
    const-string v2, "canonicalName"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 613
    .local v11, canonicalNameIndex:I
    const-string v2, "name"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 614
    .local v15, nameIndex:I
    const-string v2, "numConversations"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 616
    .local v16, numConversationsIndex:I
    const-string v2, "numUnreadConversations"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 618
    .local v17, numUnreadConversationsIndex:I
    const-string v2, "color"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 619
    .local v12, colorIndex:I
    const-string v2, "labelCountDisplayBehavior"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 621
    .local v13, labelCountBehaviorIndex:I
    const-string v2, "labelSyncPolicy"

    move-object/from16 v0, p2

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 623
    .local v14, labelSyncPolicyIndex:I
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    move-object/from16 v0, p2

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, canonicalName:Ljava/lang/String;
    move-object/from16 v0, p2

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 626
    .local v5, name:Ljava/lang/String;
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 627
    .local v7, numConversations:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 628
    .local v8, numUnreadConversations:I
    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 629
    .local v6, color:Ljava/lang/String;
    move-object/from16 v0, p2

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 630
    .local v9, labelCountBehavior:I
    move-object/from16 v0, p2

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .local v10, labelSyncPolicy:I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 632
    invoke-virtual/range {v2 .. v10}, Lcom/google/android/gm/provider/Label;->loadInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    .end local v4           #canonicalName:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #color:Ljava/lang/String;
    .end local v7           #numConversations:I
    .end local v8           #numUnreadConversations:I
    .end local v9           #labelCountBehavior:I
    .end local v10           #labelSyncPolicy:I
    .end local v11           #canonicalNameIndex:I
    .end local v12           #colorIndex:I
    .end local v13           #labelCountBehaviorIndex:I
    .end local v14           #labelSyncPolicyIndex:I
    .end local v15           #nameIndex:I
    .end local v16           #numConversationsIndex:I
    .end local v17           #numUnreadConversationsIndex:I
    :cond_0
    monitor-exit p0

    return-void

    .line 611
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static loadSystemLabelNameMap(Landroid/content/Context;Ljava/util/Map;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    const-string v0, "^f"

    const v1, 0x7f0d0108

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v0, "^^out"

    const v1, 0x7f0d0109

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "^i"

    const v1, 0x7f0d010a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "^r"

    const v1, 0x7f0d010b

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "^b"

    const v1, 0x7f0d010c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "^all"

    const v1, 0x7f0d010d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "^u"

    const v1, 0x7f0d010e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "^k"

    const v1, 0x7f0d010f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v0, "^s"

    const v1, 0x7f0d0110

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v0, "^t"

    const v1, 0x7f0d0111

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v0, "^g"

    const v1, 0x7f0d0112

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v0, "^io_im"

    const v1, 0x7f0d0113

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v0, "^iim"

    const v1, 0x7f0d0114

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-void
.end method

.method private notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 730
    return-void
.end method

.method public static parseJoinedString(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;
    .locals 1
    .parameter "joinedString"

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gm/provider/Label;->parseJoinedString(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/Label;

    move-result-object v0

    return-object v0
.end method

.method static parseJoinedString(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/Label;
    .locals 10
    .parameter "account"
    .parameter "joinedString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/google/android/gm/provider/Label;"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    sget-object v0, Lcom/google/android/gm/provider/Label;->LABEL_COMPONENT_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, fragments:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 227
    const/4 p0, 0x0

    .line 254
    .end local v0           #fragments:[Ljava/lang/String;
    .end local p0
    .end local p1
    .end local p2           #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :goto_0
    return-object p0

    .line 230
    .restart local v0       #fragments:[Ljava/lang/String;
    .restart local p0
    .restart local p1
    .restart local p2       #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :cond_0
    const/4 v1, 0x0

    .line 231
    .local v1, i:I
    const-wide/16 v3, 0x0

    .line 233
    .local v3, labelId:J
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 238
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-object v5, v0, v2

    .line 241
    .local v5, canonicalName:Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aget-object v6, v0, v1

    .line 242
    .local v6, labelName:Ljava/lang/String;
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aget-object v7, v0, v2

    .line 243
    .local v7, color:Ljava/lang/String;
    const/4 v8, 0x0

    .line 245
    .local v8, isHidden:Z
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    :try_start_1
    aget-object v0, v0, v1

    .end local v0           #fragments:[Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p1

    .end local p1
    if-lez p1, :cond_1

    const/4 p1, 0x1

    move v8, p1

    .line 251
    :goto_1
    new-instance v0, Lcom/google/android/gm/provider/Label;

    const/4 v1, 0x0

    move-object v2, p0

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/provider/Label;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    .end local v2           #i:I
    .local v0, label:Lcom/google/android/gm/provider/Label;
    move-object p0, v0

    .line 254
    goto :goto_0

    .line 234
    .end local v5           #canonicalName:Ljava/lang/String;
    .end local v6           #labelName:Ljava/lang/String;
    .end local v7           #color:Ljava/lang/String;
    .end local v8           #isHidden:Z
    .local v0, fragments:[Ljava/lang/String;
    .restart local v2       #i:I
    .restart local p1
    :catch_0
    move-exception p0

    .line 235
    .local p0, e:Ljava/lang/NumberFormatException;
    const-string p2, "Gmail"

    .end local p2           #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #fragments:[Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem parsing labelId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/lang/NumberFormatException;
    const-string v0, " original string: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 p0, 0x0

    goto :goto_0

    .line 245
    .end local p1
    .restart local v5       #canonicalName:Ljava/lang/String;
    .restart local v6       #labelName:Ljava/lang/String;
    .restart local v7       #color:Ljava/lang/String;
    .restart local v8       #isHidden:Z
    .local p0, account:Ljava/lang/String;
    .restart local p2       #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :cond_1
    const/4 p1, 0x0

    move v8, p1

    goto :goto_1

    .line 246
    .restart local p1
    :catch_1
    move-exception p0

    .line 247
    .local p0, e:Ljava/lang/NumberFormatException;
    const-string p2, "Gmail"

    .end local p2           #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Problem parsing isHidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/lang/NumberFormatException;
    const-string v0, " original string: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method static parseJoinedString(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gm/provider/Label;
    .locals 12
    .parameter "joinedString"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lcom/google/android/gm/provider/Label;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    sget-object v0, Lcom/google/android/gm/provider/Label;->LABEL_COMPONENT_SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;

    move-result-object v10

    .line 167
    .local v10, fragments:[Ljava/lang/String;
    array-length v0, v10

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 168
    const/4 p0, 0x0

    .line 208
    .end local p0
    .end local p1           #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :goto_0
    return-object p0

    .line 171
    .restart local p0
    .restart local p1       #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :cond_0
    const/4 v0, 0x0

    .line 172
    .local v0, i:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    aget-object v9, v10, v0

    .line 174
    .local v9, encodedAccount:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 176
    .local v3, labelId:J
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    :try_start_0
    aget-object v1, v10, v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 181
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    aget-object v5, v10, v0

    .line 182
    .local v5, canonicalName:Ljava/lang/String;
    add-int/lit8 v11, v1, 0x1

    .end local v1           #i:I
    .local v11, i:I
    aget-object v1, v10, v1

    .line 183
    .local v1, encodeLabelName:Ljava/lang/String;
    const-string v6, ""

    .line 184
    .local v6, labelName:Ljava/lang/String;
    const-string v2, ""

    .line 185
    .local v2, account:Ljava/lang/String;
    const-string v7, ""

    .line 186
    .local v7, color:Ljava/lang/String;
    const/4 v8, 0x0

    .line 189
    .local v8, isHidden:Z
    :try_start_1
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    .line 194
    .end local v2           #account:Ljava/lang/String;
    .end local v7           #color:Ljava/lang/String;
    :goto_1
    :try_start_2
    const-string v0, "UTF-8"

    invoke-static {v9, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 199
    .restart local v2       #account:Ljava/lang/String;
    add-int/lit8 v0, v11, 0x1

    .end local v11           #i:I
    .restart local v0       #i:I
    aget-object v7, v10, v11

    .line 201
    .restart local v7       #color:Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    :try_start_3
    aget-object v0, v10, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result p0

    .end local p0
    if-lez p0, :cond_1

    const/4 p0, 0x1

    move v8, p0

    .line 206
    :goto_2
    new-instance v0, Lcom/google/android/gm/provider/Label;

    const/4 v1, 0x0

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gm/provider/Label;-><init>(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;)V

    .end local v1           #i:I
    .end local v9           #encodedAccount:Ljava/lang/String;
    .local v0, label:Lcom/google/android/gm/provider/Label;
    move-object p0, v0

    .line 208
    goto :goto_0

    .line 177
    .end local v2           #account:Ljava/lang/String;
    .end local v5           #canonicalName:Ljava/lang/String;
    .end local v6           #labelName:Ljava/lang/String;
    .end local v7           #color:Ljava/lang/String;
    .end local v8           #isHidden:Z
    .local v0, i:I
    .restart local v9       #encodedAccount:Ljava/lang/String;
    .restart local p0
    :catch_0
    move-exception p1

    .line 178
    .local p1, e:Ljava/lang/NumberFormatException;
    const-string v0, "Gmail"

    .end local v0           #i:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem parsing labelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #e:Ljava/lang/NumberFormatException;
    const-string v1, " original string: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 p0, 0x0

    goto :goto_0

    .line 190
    .local v1, encodeLabelName:Ljava/lang/String;
    .restart local v2       #account:Ljava/lang/String;
    .restart local v5       #canonicalName:Ljava/lang/String;
    .restart local v6       #labelName:Ljava/lang/String;
    .restart local v7       #color:Ljava/lang/String;
    .restart local v8       #isHidden:Z
    .restart local v11       #i:I
    .restart local p0
    .local p1, systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :catch_1
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v2, "Gmail"

    .end local v2           #account:Ljava/lang/String;
    const-string v7, "illegal argument"

    .end local v7           #color:Ljava/lang/String;
    invoke-static {v2, v7, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 192
    move-object v6, v1

    goto :goto_1

    .line 195
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception p0

    .line 196
    .local p0, e:Ljava/io/UnsupportedEncodingException;
    const-string p1, "Gmail"

    .end local p1           #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    const-string v0, "unsupported encoding"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 201
    .end local v11           #i:I
    .end local p0           #e:Ljava/io/UnsupportedEncodingException;
    .local v1, i:I
    .restart local v2       #account:Ljava/lang/String;
    .restart local v7       #color:Ljava/lang/String;
    .restart local p1       #systemLabelNameMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :cond_1
    const/4 p0, 0x0

    move v8, p0

    goto :goto_2

    .line 202
    .local p0, joinedString:Ljava/lang/String;
    :catch_3
    move-exception p1

    .line 203
    .local p1, e:Ljava/lang/NumberFormatException;
    const-string v0, "Gmail"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #i:I
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem parsing isHidden: "

    .end local v2           #account:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #e:Ljava/lang/NumberFormatException;
    const-string v1, " original string: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #joinedString:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 p0, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized disableSelfUpdate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

    if-eqz v0, :cond_0

    .line 563
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/Label;->unregisterContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 564
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    :cond_0
    monitor-exit p0

    return-void

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableSelfUpdate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Lcom/google/android/gm/provider/Label$LabelContentObserver;

    invoke-direct {p0}, Lcom/google/android/gm/provider/Label;->getSelfUpdateHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gm/provider/Label$LabelContentObserver;-><init>(Lcom/google/android/gm/provider/Label;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

    .line 553
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mSelfUpdateObserver:Lcom/google/android/gm/provider/Label$LabelContentObserver;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gm/provider/Label;->registerContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :cond_0
    monitor-exit p0

    return-void

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getBackgroundColor()I
    .locals 3

    .prologue
    .line 439
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    const-string v2, "^g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-static {}, Lcom/google/android/gm/utils/LabelColorUtils;->getMutedColorInts()[I

    move-result-object v0

    .line 444
    .local v0, labelColors:[I
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Label;->isSystemLabel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0xffffff

    :goto_1
    monitor-exit p0

    return v1

    .line 442
    .end local v0           #labelColors:[I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Label;->getColor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gm/utils/LabelColorUtils;->getLabelColorInts(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .restart local v0       #labelColors:[I
    goto :goto_0

    .line 444
    :cond_1
    const/4 v1, 0x0

    aget v1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 439
    .end local v0           #labelColors:[I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getCanonicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Label;->isSystemLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "2147483647"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDisplayNoConversationCount()Z
    .locals 2

    .prologue
    .line 480
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mLabelCountBehavior:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDisplayTotalConversationCount()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 470
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mLabelCountBehavior:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getForceSyncAll()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 514
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getForceSyncAllOrPartial()Z
    .locals 2

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getForceSyncNone()Z
    .locals 2

    .prologue
    .line 524
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHidden()Z
    .locals 1

    .prologue
    .line 543
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsHidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getId()J
    .locals 2

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gm/provider/Label;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumConversations()I
    .locals 2

    .prologue
    .line 489
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mCountsInitialized:Z

    if-nez v0, :cond_0

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "conversation counts were not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 492
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mNumConversations:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getNumUnreadConversations()I
    .locals 2

    .prologue
    .line 501
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mCountsInitialized:Z

    if-nez v0, :cond_0

    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unread conversation counts were not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 504
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/google/android/gm/provider/Label;->mNumUnreadConversations:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getTextColor()I
    .locals 3

    .prologue
    .line 455
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    const-string v2, "^g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    invoke-static {}, Lcom/google/android/gm/utils/LabelColorUtils;->getMutedColorInts()[I

    move-result-object v0

    .line 460
    .local v0, labelColors:[I
    :goto_0
    const/4 v1, 0x1

    aget v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    .line 458
    .end local v0           #labelColors:[I
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Label;->getColor()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gm/utils/LabelColorUtils;->getLabelColorInts(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .restart local v0       #labelColors:[I
    goto :goto_0

    .line 455
    .end local v0           #labelColors:[I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isSystemLabel()Z
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsSystemLabel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method loadInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 2
    .parameter "context"
    .parameter "canonicalName"
    .parameter "name"
    .parameter "color"
    .parameter "numConversations"
    .parameter "numUnreadConversations"
    .parameter "labelCountBehavior"
    .parameter "labelSyncPolicy"

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    iput-object p2, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    .line 647
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->isSystemLabel(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsSystemLabel:Z

    .line 648
    iput-object v1, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    invoke-static {p4, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    iput-object p4, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    .line 652
    iput-object v1, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    .line 658
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mIsSystemLabel:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/gm/provider/Label;->getHumanSystemLabelName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object p3, v0

    .line 660
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 661
    iput-object p3, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;

    .line 662
    iput-object v1, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    .line 665
    :cond_4
    iput p5, p0, Lcom/google/android/gm/provider/Label;->mNumConversations:I

    .line 666
    iput p6, p0, Lcom/google/android/gm/provider/Label;->mNumUnreadConversations:I

    .line 667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/Label;->mCountsInitialized:Z

    .line 668
    iput p7, p0, Lcom/google/android/gm/provider/Label;->mLabelCountBehavior:I

    .line 669
    iput p8, p0, Lcom/google/android/gm/provider/Label;->mLabelSyncPolicy:I

    .line 670
    return-void
.end method

.method public declared-synchronized registerContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 4
    .parameter "resolver"
    .parameter "observer"

    .prologue
    .line 680
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gm/provider/Label;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gm/provider/Label;->getLabelUri(Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v0

    .line 682
    .local v0, labelUri:Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    monitor-exit p0

    return-void

    .line 680
    .end local v0           #labelUri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;Z)V
    .locals 1
    .parameter "observer"
    .parameter "sendInitial"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 709
    if-eqz p2, :cond_0

    .line 710
    invoke-virtual {p1}, Landroid/database/DataSetObserver;->onChanged()V

    .line 712
    :cond_0
    return-void
.end method

.method public requery(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/google/android/gm/provider/Label;->getSelfUpdateHandler()Landroid/os/Handler;

    move-result-object v1

    .line 585
    .local v1, handler:Landroid/os/Handler;
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 587
    .local v0, callerHandler:Landroid/os/Handler;
    new-instance v2, Lcom/google/android/gm/provider/Label$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gm/provider/Label$1;-><init>(Lcom/google/android/gm/provider/Label;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    return-void
.end method

.method public declared-synchronized serialize()Ljava/lang/String;
    .locals 6

    .prologue
    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 323
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :goto_0
    monitor-exit p0

    return-object v4

    .line 326
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .local v3, result:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 328
    .local v1, encodedAccount:Ljava/lang/String;
    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    .local v2, encodedLabelName:Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mAccount:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mName:Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 335
    :goto_1
    :try_start_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^*^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-wide v4, p0, Lcom/google/android/gm/provider/Label;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^*^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mCanonicalName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^*^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^*^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mColor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "^*^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    iget-boolean v4, p0, Lcom/google/android/gm/provider/Label;->mIsHidden:Z

    if-eqz v4, :cond_1

    const-string v4, "1"

    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    .line 343
    iget-object v4, p0, Lcom/google/android/gm/provider/Label;->mSerializedInfo:Ljava/lang/String;

    goto :goto_0

    .line 332
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 333
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, "Gmail"

    const-string v5, "unsupported encoding"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 322
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #encodedAccount:Ljava/lang/String;
    .end local v2           #encodedLabelName:Ljava/lang/String;
    .end local v3           #result:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 340
    .restart local v1       #encodedAccount:Ljava/lang/String;
    .restart local v2       #encodedLabelName:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_4
    const-string v4, "0"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized unregisterContentObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "resolver"
    .parameter "observer"

    .prologue
    .line 695
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    monitor-exit p0

    return-void

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/gm/provider/Label;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 723
    return-void
.end method
