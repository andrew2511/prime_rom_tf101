.class public Lcom/google/android/talk/RosterListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RosterListAdapter.java"

# interfaces
.implements Lcom/google/android/talk/IRosterListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;,
        Lcom/google/android/talk/RosterListAdapter$MergeItem;,
        Lcom/google/android/talk/RosterListAdapter$Bind;,
        Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;,
        Lcom/google/android/talk/RosterListAdapter$CallState;
    }
.end annotation


# static fields
.field private static sValidator:Lcom/android/common/Rfc822Validator;


# instance fields
.field private mAccountId:J

.field private mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

.field private mApp:Lcom/google/android/talk/TalkApp;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mFocusAccount:J

.field private mFocusContact:Ljava/lang/String;

.field private mIncludeSelfItem:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

.field private mIsOnline:Z

.field private mMarkup:Lcom/google/android/talk/util/Markup;

.field private mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

.field private mNarrowLayout:Z

.field private mObserver:Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;

.field private mPresenceClickedHandler:Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;

.field private mSearchString:Ljava/lang/String;

.field private mSelfCursor:Landroid/database/Cursor;

.field private mSuppressIndent:Z

.field private mTabletMode:Z

.field private mUsernameColumn:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 480
    new-instance v0, Lcom/android/common/Rfc822Validator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/talk/RosterListAdapter;->sValidator:Lcom/android/common/Rfc822Validator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 217
    new-array v0, v1, [Lcom/google/android/talk/RosterListAdapter$MergeItem;

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .line 224
    iput-boolean v1, p0, Lcom/google/android/talk/RosterListAdapter;->mDataValid:Z

    .line 226
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;-><init>(Lcom/google/android/talk/RosterListAdapter;Lcom/google/android/talk/RosterListAdapter$1;)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mObserver:Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mIsOnline:Z

    .line 236
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusAccount:J

    .line 249
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mContext:Landroid/content/Context;

    .line 250
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-direct {v0, p0, p1, v2}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;-><init>(Lcom/google/android/talk/RosterListAdapter;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    .line 251
    new-instance v0, Lcom/google/android/talk/util/Markup;

    invoke-direct {v0, p1}, Lcom/google/android/talk/util/Markup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mMarkup:Lcom/google/android/talk/util/Markup;

    .line 253
    invoke-static {p1}, Lcom/google/android/talk/ActivityUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z

    .line 254
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/talk/RosterListAdapter;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/talk/RosterListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mSuppressIndent:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/RosterListAdapter$CallState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/TalkApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mPresenceClickedHandler:Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/RosterListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/talk/RosterListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/talk/RosterListAdapter;->mUsernameColumn:I

    return v0
.end method

.method static synthetic access$2000(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/talk/RosterListAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mSelfCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/google/android/talk/RosterListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter;->mDataValid:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/talk/RosterListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/talk/RosterListAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusAccount:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/RosterListAdapter;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/talk/RosterListAdapter;->mAccountId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/RosterListAdapter;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusContact:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/talk/RosterListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mIsOnline:Z

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/RosterListAdapter;)Lcom/google/android/talk/util/Markup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mMarkup:Lcom/google/android/talk/util/Markup;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/RosterListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mNarrowLayout:Z

    return v0
.end method

.method private getInnerPosition(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 549
    move v2, p1

    .line 550
    .local v2, retval:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 551
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$2300(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I

    move-result v0

    .line 552
    .local v0, headerPosition:I
    if-ge p1, v0, :cond_1

    .line 561
    .end local v0           #headerPosition:I
    :cond_0
    :goto_1
    return v2

    .line 554
    .restart local v0       #headerPosition:I
    :cond_1
    if-ne p1, v0, :cond_2

    .line 555
    add-int/lit8 v3, v1, 0x1

    neg-int v2, v3

    .line 556
    goto :goto_1

    .line 558
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private makeHeaderMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .locals 6
    .parameter "position"
    .parameter "string"

    .prologue
    .line 421
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MergeItem;

    const/4 v3, 0x0

    const v4, 0x7f040022

    const/4 v5, 0x3

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/RosterListAdapter$MergeItem;-><init>(Lcom/google/android/talk/RosterListAdapter;IZII)V

    .line 423
    .local v0, item:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    new-instance v1, Lcom/google/android/talk/RosterListAdapter$5;

    invoke-direct {v1, p0, p2}, Lcom/google/android/talk/RosterListAdapter$5;-><init>(Lcom/google/android/talk/RosterListAdapter;I)V

    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1802(Lcom/google/android/talk/RosterListAdapter$MergeItem;Lcom/google/android/talk/RosterListAdapter$Bind;)Lcom/google/android/talk/RosterListAdapter$Bind;

    .line 433
    return-object v0
.end method

.method private makeHeaderMergeItems(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 17
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/RosterListAdapter$MergeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 437
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/RosterListAdapter$MergeItem;>;"
    const/4 v15, 0x2

    new-array v11, v15, [Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .line 439
    .local v11, retVal:[Lcom/google/android/talk/RosterListAdapter$MergeItem;
    const-string v15, "mode"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 440
    .local v10, presenceColumn:I
    const-string v15, "ChatsTableId"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 441
    .local v3, chatColumn:I
    const-string v15, "subscriptionType"

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 442
    .local v14, subscriptionTypeColumn:I
    const/4 v15, -0x1

    move-object/from16 v0, p1

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 448
    const/4 v6, 0x0

    .line 449
    .local v6, foundActive:Z
    const/4 v7, 0x0

    .line 450
    .local v7, foundOnline:Z
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 451
    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    int-to-long v8, v15

    .line 452
    .local v8, presence:J
    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 453
    .local v4, chatId:J
    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 454
    .local v12, subscriptionType:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z

    move v15, v0

    if-nez v15, :cond_1

    if-nez v6, :cond_1

    .line 455
    const-wide/16 v15, 0x5

    cmp-long v15, v12, v15

    if-eqz v15, :cond_1

    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-eqz v15, :cond_1

    .line 457
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v16

    add-int v15, v15, v16

    const v16, 0x7f0c0138

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/RosterListAdapter;->makeHeaderMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    const/4 v6, 0x1

    .line 462
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/talk/RosterListAdapter;->mTabletMode:Z

    move v15, v0

    if-nez v15, :cond_2

    if-nez v7, :cond_2

    .line 463
    const-wide/16 v15, 0x5

    cmp-long v15, v12, v15

    if-eqz v15, :cond_2

    const-wide/16 v15, 0x5

    cmp-long v15, v8, v15

    if-nez v15, :cond_2

    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-nez v15, :cond_2

    .line 466
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v16

    add-int v15, v15, v16

    const v16, 0x7f0c0137

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/RosterListAdapter;->makeHeaderMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    const/4 v7, 0x1

    .line 471
    :cond_2
    const-wide/16 v15, 0x5

    cmp-long v15, v12, v15

    if-eqz v15, :cond_0

    const-wide/16 v15, 0x0

    cmp-long v15, v8, v15

    if-nez v15, :cond_0

    const-wide/16 v15, 0x0

    cmp-long v15, v4, v15

    if-nez v15, :cond_0

    .line 474
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v16

    add-int v15, v15, v16

    const v16, 0x7f0c0136

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/google/android/talk/RosterListAdapter;->makeHeaderMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    .end local v4           #chatId:J
    .end local v8           #presence:J
    .end local v12           #subscriptionType:J
    :cond_3
    return-void
.end method

.method private makeInviteMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .locals 6
    .parameter "cursorCount"
    .parameter "previousCount"

    .prologue
    .line 337
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MergeItem;

    add-int v2, p1, p2

    const/4 v3, 0x1

    const v4, 0x7f04002b

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/RosterListAdapter$MergeItem;-><init>(Lcom/google/android/talk/RosterListAdapter;IZII)V

    .line 339
    .local v0, item:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    new-instance v1, Lcom/google/android/talk/RosterListAdapter$2;

    invoke-direct {v1, p0}, Lcom/google/android/talk/RosterListAdapter$2;-><init>(Lcom/google/android/talk/RosterListAdapter;)V

    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1802(Lcom/google/android/talk/RosterListAdapter$MergeItem;Lcom/google/android/talk/RosterListAdapter$Bind;)Lcom/google/android/talk/RosterListAdapter$Bind;

    .line 370
    return-object v0
.end method

.method private makeSearchMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .locals 6
    .parameter "cursorCount"
    .parameter "previousCount"

    .prologue
    .line 299
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MergeItem;

    add-int v2, p1, p2

    const/4 v3, 0x1

    const v4, 0x7f04002b

    const/4 v5, 0x2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/RosterListAdapter$MergeItem;-><init>(Lcom/google/android/talk/RosterListAdapter;IZII)V

    .line 301
    .local v0, item:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    new-instance v1, Lcom/google/android/talk/RosterListAdapter$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/RosterListAdapter$1;-><init>(Lcom/google/android/talk/RosterListAdapter;)V

    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1802(Lcom/google/android/talk/RosterListAdapter$MergeItem;Lcom/google/android/talk/RosterListAdapter$Bind;)Lcom/google/android/talk/RosterListAdapter$Bind;

    .line 333
    return-object v0
.end method

.method private makeSelfMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .locals 6
    .parameter "cursorCount"
    .parameter "previousCount"

    .prologue
    const/4 v2, 0x0

    .line 391
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MergeItem;

    const/4 v3, 0x1

    const v4, 0x7f040024

    move-object v1, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/RosterListAdapter$MergeItem;-><init>(Lcom/google/android/talk/RosterListAdapter;IZII)V

    .line 393
    .local v0, item:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    new-instance v1, Lcom/google/android/talk/RosterListAdapter$4;

    invoke-direct {v1, p0}, Lcom/google/android/talk/RosterListAdapter$4;-><init>(Lcom/google/android/talk/RosterListAdapter;)V

    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1802(Lcom/google/android/talk/RosterListAdapter$MergeItem;Lcom/google/android/talk/RosterListAdapter$Bind;)Lcom/google/android/talk/RosterListAdapter$Bind;

    .line 417
    return-object v0
.end method

.method private makeSpacerMergeItem()Lcom/google/android/talk/RosterListAdapter$MergeItem;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 374
    new-instance v0, Lcom/google/android/talk/RosterListAdapter$MergeItem;

    const/4 v3, 0x0

    const v4, 0x7f040025

    move-object v1, p0

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/talk/RosterListAdapter$MergeItem;-><init>(Lcom/google/android/talk/RosterListAdapter;IZII)V

    .line 375
    .local v0, item:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    new-instance v1, Lcom/google/android/talk/RosterListAdapter$3;

    invoke-direct {v1, p0}, Lcom/google/android/talk/RosterListAdapter$3;-><init>(Lcom/google/android/talk/RosterListAdapter;)V

    invoke-static {v0, v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1802(Lcom/google/android/talk/RosterListAdapter$MergeItem;Lcom/google/android/talk/RosterListAdapter$Bind;)Lcom/google/android/talk/RosterListAdapter$Bind;

    .line 387
    return-object v0
.end method

.method private setupMergeItems()V
    .locals 5

    .prologue
    .line 483
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_0

    .line 484
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/talk/RosterListAdapter$MergeItem;

    iput-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .line 507
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 489
    .local v0, cursorCount:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v1, mergeItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/RosterListAdapter$MergeItem;>;"
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 492
    sget-object v3, Lcom/google/android/talk/RosterListAdapter;->sValidator:Lcom/android/common/Rfc822Validator;

    iget-object v4, p0, Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 494
    .local v2, validEmail:Z
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v1}, Lcom/google/android/talk/RosterListAdapter;->makeHeaderMergeItems(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    .line 495
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/talk/RosterListAdapter;->makeSearchMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    if-eqz v2, :cond_1

    .line 497
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/talk/RosterListAdapter;->makeInviteMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v2           #validEmail:Z
    :cond_1
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/talk/RosterListAdapter$MergeItem;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/talk/RosterListAdapter$MergeItem;

    iput-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    goto :goto_0

    .line 500
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/talk/RosterListAdapter;->mIncludeSelfItem:Z

    if-eqz v3, :cond_3

    .line 501
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/talk/RosterListAdapter;->makeSelfMergeItem(II)Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-direct {p0}, Lcom/google/android/talk/RosterListAdapter;->makeSpacerMergeItem()Lcom/google/android/talk/RosterListAdapter$MergeItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_3
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v3, v1}, Lcom/google/android/talk/RosterListAdapter;->makeHeaderMergeItems(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method public changeCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .parameter "c"
    .parameter "searchString"

    .prologue
    .line 274
    iput-object p2, p0, Lcom/google/android/talk/RosterListAdapter;->mSearchString:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mObserver:Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 279
    :cond_0
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    .line 280
    const-string v0, "username"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/talk/RosterListAdapter;->mUsernameColumn:I

    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mDataValid:Z

    .line 282
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mObserver:Lcom/google/android/talk/RosterListAdapter$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 288
    :cond_1
    invoke-direct {p0}, Lcom/google/android/talk/RosterListAdapter;->setupMergeItems()V

    .line 289
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->changeCursor(Landroid/database/Cursor;)V

    .line 290
    return-void
.end method

.method public getActiveCallState()Lcom/google/android/talk/RosterListAdapter$CallState;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mDataValid:Z

    if-nez v0, :cond_0

    .line 539
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter;->getInnerPosition(I)I

    move-result v0

    .line 566
    .local v0, innerPosition:I
    if-gez v0, :cond_0

    .line 567
    const/4 v1, 0x0

    .line 569
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 5
    .parameter "position"

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter;->getInnerPosition(I)I

    move-result v0

    .line 575
    .local v0, innerPosition:I
    if-gez v0, :cond_0

    .line 577
    const-wide v1, 0x7fffffffffffffffL

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 579
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .parameter "position"

    .prologue
    .line 584
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter;->getInnerPosition(I)I

    move-result v0

    .line 585
    .local v0, innerPosition:I
    if-gez v0, :cond_0

    .line 586
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getViewTypeCount()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    add-int/lit8 v3, v0, 0x1

    neg-int v3, v3

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1700(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I

    move-result v2

    add-int/2addr v1, v2

    .line 588
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v1, v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getItemViewType(I)I

    move-result v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 593
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter;->getInnerPosition(I)I

    move-result v1

    .line 594
    .local v1, innerPosition:I
    if-gez v1, :cond_2

    .line 595
    mul-int/lit8 v3, v1, -0x1

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 596
    .local v0, header:I
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    aget-object v2, v3, v0

    .line 597
    .local v2, m:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    .line 598
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$2400(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1502(Lcom/google/android/talk/RosterListAdapter$MergeItem;Landroid/view/View;)Landroid/view/View;

    .line 599
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 600
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/talk/RosterListAdapter$Bind;->onInflate(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V

    .line 604
    :cond_0
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 605
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/talk/RosterListAdapter$Bind;->bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V

    .line 607
    :cond_1
    invoke-static {v2}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v3

    .line 609
    .end local v0           #header:I
    .end local v2           #m:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    :goto_0
    return-object v3

    :cond_2
    iget-object v3, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v3, v1, p2, p3}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 615
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->getViewTypeCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x4

    .line 616
    .local v0, c:I
    return v0
.end method

.method public hasActiveChats()Z
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->hasActiveChats()Z

    move-result v0

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 620
    const/4 v0, 0x1

    return v0
.end method

.method public init(JLandroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 1
    .parameter "accountId"
    .parameter "activity"
    .parameter "runnable"

    .prologue
    .line 514
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 516
    invoke-static {p3}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mApp:Lcom/google/android/talk/TalkApp;

    .line 517
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 519
    invoke-virtual {p0, p1, p2}, Lcom/google/android/talk/RosterListAdapter;->setAccountId(J)V

    .line 520
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p4}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->init(Ljava/lang/Runnable;)V

    .line 521
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 529
    invoke-direct {p0, p1}, Lcom/google/android/talk/RosterListAdapter;->getInnerPosition(I)I

    move-result v0

    .line 530
    .local v0, p:I
    if-gez v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    add-int/lit8 v2, v0, 0x1

    neg-int v2, v2

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$2200(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Z

    move-result v1

    .line 533
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->isScrolling()Z

    move-result v0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->notifyDataSetChanged()V

    .line 700
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "first"
    .parameter "visible"
    .parameter "total"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->onScroll(Landroid/widget/AbsListView;III)V

    .line 730
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 734
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 629
    return-void
.end method

.method public setAccountId(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 648
    iput-wide p1, p0, Lcom/google/android/talk/RosterListAdapter;->mAccountId:J

    .line 649
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->notifyDataSetInvalidated()V

    .line 650
    return-void
.end method

.method public setActiveCallState(Lcom/google/android/talk/RosterListAdapter$CallState;)V
    .locals 3
    .parameter "callState"

    .prologue
    .line 703
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    const/4 v0, 0x0

    .line 708
    .local v0, isDifferent:Z
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    if-eqz v1, :cond_2

    if-nez p1, :cond_4

    .line 709
    :cond_2
    const/4 v0, 0x1

    .line 718
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 719
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    .line 720
    invoke-virtual {p0}, Lcom/google/android/talk/RosterListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 710
    :cond_4
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-object v1, v1, Lcom/google/android/talk/RosterListAdapter$CallState;->mBareJid:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/talk/RosterListAdapter$CallState;->mBareJid:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 711
    const/4 v0, 0x1

    goto :goto_1

    .line 712
    :cond_5
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-boolean v1, v1, Lcom/google/android/talk/RosterListAdapter$CallState;->mIsVideo:Z

    iget-boolean v2, p1, Lcom/google/android/talk/RosterListAdapter$CallState;->mIsVideo:Z

    if-eq v1, v2, :cond_6

    .line 713
    const/4 v0, 0x1

    goto :goto_1

    .line 714
    :cond_6
    iget-object v1, p0, Lcom/google/android/talk/RosterListAdapter;->mActiveCallState:Lcom/google/android/talk/RosterListAdapter$CallState;

    iget-boolean v1, v1, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    iget-boolean v2, p1, Lcom/google/android/talk/RosterListAdapter$CallState;->mPending:Z

    if-eq v1, v2, :cond_3

    .line 715
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setFocus(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 668
    if-eqz p1, :cond_0

    .line 669
    const-string v0, "accountId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusAccount:J

    .line 670
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusContact:Ljava/lang/String;

    .line 675
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->notifyDataSetChanged()V

    .line 676
    return-void

    .line 672
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusAccount:J

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mFocusContact:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIncludeSelfItem(Z)V
    .locals 0
    .parameter "include"

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter;->mIncludeSelfItem:Z

    .line 258
    invoke-direct {p0}, Lcom/google/android/talk/RosterListAdapter;->setupMergeItems()V

    .line 259
    return-void
.end method

.method public setIsOnline(Z)Z
    .locals 1
    .parameter "isOnline"

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mIsOnline:Z

    if-eq v0, p1, :cond_0

    .line 661
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter;->mIsOnline:Z

    .line 662
    const/4 v0, 0x1

    .line 664
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNarrowLayout(Z)V
    .locals 1
    .parameter "narrow"

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mNarrowLayout:Z

    if-eq v0, p1, :cond_0

    .line 654
    iput-boolean p1, p0, Lcom/google/android/talk/RosterListAdapter;->mNarrowLayout:Z

    .line 656
    :cond_0
    return-void
.end method

.method public setNeedForceLoad(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 644
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->setNeedForceLoad(Z)V

    .line 645
    return-void
.end method

.method public setOnPresenceClickedListener(Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 743
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mPresenceClickedHandler:Lcom/google/android/talk/IRosterListAdapter$PresenceClickHandler;

    .line 744
    return-void
.end method

.method public setSelfStatusCursor(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 262
    iput-object p1, p0, Lcom/google/android/talk/RosterListAdapter;->mSelfCursor:Landroid/database/Cursor;

    .line 266
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mMergeItems:[Lcom/google/android/talk/RosterListAdapter$MergeItem;

    .local v0, arr$:[Lcom/google/android/talk/RosterListAdapter$MergeItem;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 267
    .local v3, m:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1700(Lcom/google/android/talk/RosterListAdapter$MergeItem;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1500(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 268
    invoke-static {v3}, Lcom/google/android/talk/RosterListAdapter$MergeItem;->access$1800(Lcom/google/android/talk/RosterListAdapter$MergeItem;)Lcom/google/android/talk/RosterListAdapter$Bind;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/talk/RosterListAdapter$Bind;->bind(Lcom/google/android/talk/RosterListAdapter$MergeItem;)V

    .line 266
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    .end local v3           #m:Lcom/google/android/talk/RosterListAdapter$MergeItem;
    :cond_1
    return-void
.end method

.method public suppressIndent()V
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/talk/RosterListAdapter;->mSuppressIndent:Z

    .line 696
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/talk/RosterListAdapter;->mInnerAdapter:Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/RosterListAdapter$RosterListAdapterInner;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 633
    return-void
.end method
