.class public Lcom/android/contacts/editor/ContactEditorFragment;
.super Landroid/app/Fragment;
.source "ContactEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
.implements Lcom/android/contacts/editor/AggregationSuggestionView$Listener;
.implements Lcom/android/contacts/editor/ExternalRawContactEditorView$Listener;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;,
        Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;,
        Lcom/android/contacts/editor/ContactEditorFragment$Listener;,
        Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/editor/ContactEditorFragment$Status;,
        Lcom/android/contacts/editor/ContactEditorFragment$SaveMode;
    }
.end annotation


# static fields
.field private static final PHOTO_DIR:Ljava/io/File;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

.field private mAggregationSuggestionView:Landroid/view/View;

.field private mAggregationSuggestionsRawContactId:J

.field private mAutoAddToDefaultGroup:Z

.field private final mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

.field private mContactIdForJoin:J

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrentPhotoFile:Ljava/io/File;

.field private final mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private final mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupMetaData:Landroid/database/Cursor;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

.field private mLoaderStartTime:J

.field private mLookupUri:Landroid/net/Uri;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mRawContactIdRequestingPhoto:J

.field private mRawContactIdRequestingPhotoAfterLoad:J

.field private mRequestFocus:Z

.field private mState:Lcom/android/contacts/model/EntityDeltaList;

.field private mStatus:I

.field private mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 194
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/Camera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->PHOTO_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 238
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 186
    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    .line 187
    iput-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    .line 188
    iput-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    .line 190
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 1482
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$3;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1523
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorFragment$4;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 239
    return-void
.end method

.method static synthetic access$1000(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/editor/ContactEditorFragment;JLandroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/editor/ContactEditorFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasMoreThanOnePhoto()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    return-wide p1
.end method

.method static synthetic access$1900()Ljava/io/File;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment;->PHOTO_DIR:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/contacts/editor/ContactEditorFragment;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getPhotoFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->requestAggregationSuggestionOnScreen(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/editor/ContactEditorFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 92
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/contacts/editor/ContactEditorFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-wide p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLoaderStartTime:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/editor/ContactEditorFragment;)Lcom/android/contacts/editor/ContactEditorFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/contacts/editor/ContactEditorFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    return p1
.end method

.method private adjustAggregationSuggestionViewLayout(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 4
    .parameter "rawContactView"

    .prologue
    .line 1218
    invoke-virtual {p1}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v1

    .line 1219
    .local v1, nameEditor:Lcom/android/contacts/editor/TextFieldsEditorView;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1220
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {v1, v2}, Lcom/android/contacts/editor/TextFieldsEditorView;->acquireEditorBounds(Landroid/graphics/Rect;)V

    .line 1221
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1223
    .local v0, layoutParams:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1224
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1225
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1226
    return-void
.end method

.method private bindEditors()V
    .locals 25

    .prologue
    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mComparator:Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "layout_inflater"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 527
    .local v11, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    .line 528
    .local v6, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v18

    .line 529
    .local v18, size:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/EntityDelta;

    .line 532
    .local v9, entity:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v9}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v20

    .line 533
    .local v20, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v21

    if-nez v21, :cond_1

    .line 529
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 535
    :cond_1
    const-string v21, "account_type"

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, accountType:Ljava/lang/String;
    invoke-virtual {v6, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v19

    .line 537
    .local v19, type:Lcom/android/contacts/model/AccountType;
    const-string v21, "_id"

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 540
    .local v16, rawContactId:J
    invoke-virtual/range {v19 .. v19}, Lcom/android/contacts/model/AccountType;->isExternal()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 541
    const v21, 0x7f040022

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v11

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 543
    .local v8, editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    move-object v0, v8

    check-cast v0, Lcom/android/contacts/editor/ExternalRawContactEditorView;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ExternalRawContactEditorView;->setListener(Lcom/android/contacts/editor/ExternalRawContactEditorView$Listener;)V

    .line 548
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    move/from16 v21, v0

    move-object v0, v8

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setEnabled(Z)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    move-object/from16 v21, v0

    move-object v0, v8

    move-object v1, v9

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setState(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/editor/ViewIdGenerator;)V

    .line 554
    invoke-virtual {v8}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getPhotoEditor()Lcom/android/contacts/editor/PhotoEditorView;

    move-result-object v21

    new-instance v22, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/contacts/model/AccountType;->readOnly:Z

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v8

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/editor/ContactEditorFragment$PhotoEditorListener;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/BaseRawContactEditorView;ZLcom/android/contacts/editor/ContactEditorFragment$1;)V

    invoke-virtual/range {v21 .. v22}, Lcom/android/contacts/editor/PhotoEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 556
    move-object v0, v8

    instance-of v0, v0, Lcom/android/contacts/editor/RawContactEditorView;

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 557
    move-object v0, v8

    check-cast v0, Lcom/android/contacts/editor/RawContactEditorView;

    move-object v15, v0

    .line 558
    .local v15, rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;
    new-instance v12, Lcom/android/contacts/editor/ContactEditorFragment$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 572
    .local v12, listener:Lcom/android/contacts/editor/Editor$EditorListener;
    invoke-virtual {v15}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v13

    .line 573
    .local v13, nameEditor:Lcom/android/contacts/editor/TextFieldsEditorView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 574
    invoke-virtual {v13}, Lcom/android/contacts/editor/TextFieldsEditorView;->requestFocus()Z

    .line 575
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 577
    :cond_2
    invoke-virtual {v13, v12}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 579
    invoke-virtual {v15}, Lcom/android/contacts/editor/RawContactEditorView;->getPhoneticNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v14

    .line 581
    .local v14, phoneticNameEditor:Lcom/android/contacts/editor/TextFieldsEditorView;
    invoke-virtual {v14, v12}, Lcom/android/contacts/editor/TextFieldsEditorView;->setEditorListener(Lcom/android/contacts/editor/Editor$EditorListener;)V

    .line 582
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    move/from16 v21, v0

    move-object v0, v15

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->setAutoAddToDefaultGroup(Z)V

    .line 584
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    move-wide/from16 v21, v0

    cmp-long v21, v16, v21

    if-nez v21, :cond_0

    .line 585
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->acquireAggregationSuggestions(Lcom/android/contacts/editor/RawContactEditorView;)V

    goto/16 :goto_1

    .line 545
    .end local v8           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v12           #listener:Lcom/android/contacts/editor/Editor$EditorListener;
    .end local v13           #nameEditor:Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v14           #phoneticNameEditor:Lcom/android/contacts/editor/TextFieldsEditorView;
    .end local v15           #rawContactEditor:Lcom/android/contacts/editor/RawContactEditorView;
    :cond_3
    const v21, 0x7f04003e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v11

    move/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .restart local v8       #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    goto/16 :goto_2

    .line 590
    .end local v5           #accountType:Ljava/lang/String;
    .end local v8           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    .end local v9           #entity:Lcom/android/contacts/model/EntityDelta;
    .end local v16           #rawContactId:J
    .end local v19           #type:Lcom/android/contacts/model/AccountType;
    .end local v20           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_4
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 592
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindGroupMetaData()V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 600
    .local v7, activity:Landroid/app/Activity;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 602
    :cond_5
    return-void
.end method

.method private bindEditorsForExistingContact(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 2
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 411
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/model/EntityDeltaList;->fromIterator(Ljava/util/Iterator;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 412
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->setIntentExtras(Landroid/os/Bundle;)V

    .line 413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 415
    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 417
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 418
    return-void
.end method

.method private bindEditorsForNewContact(Landroid/accounts/Account;Lcom/android/contacts/model/AccountType;)V
    .locals 5
    .parameter "account"
    .parameter "accountType"

    .prologue
    const/4 v4, 0x1

    .line 480
    iput v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 482
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 483
    .local v1, values:Landroid/content/ContentValues;
    if-eqz p1, :cond_0

    .line 484
    const-string v2, "account_name"

    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v2, "account_type"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_0
    new-instance v0, Lcom/android/contacts/model/EntityDelta;

    invoke-static {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/model/EntityDelta;-><init>(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 493
    .local v0, insert:Lcom/android/contacts/model/EntityDelta;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v2, p2, v0, v3}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 497
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 498
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 499
    const-string v2, "vnd.android.cursor.item/note"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 500
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 501
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 502
    const-string v2, "vnd.android.cursor.item/website"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 503
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-static {v0, p2, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-nez v2, :cond_1

    .line 507
    invoke-static {v0}, Lcom/android/contacts/model/EntityDeltaList;->fromSingle(Lcom/android/contacts/model/EntityDelta;)Lcom/android/contacts/model/EntityDeltaList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 513
    :goto_1
    iput-boolean v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRequestFocus:Z

    .line 515
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 516
    return-void

    .line 487
    .end local v0           #insert:Lcom/android/contacts/model/EntityDelta;
    :cond_0
    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 488
    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    .restart local v0       #insert:Lcom/android/contacts/model/EntityDelta;
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v2, v0}, Lcom/android/contacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private bindGroupMetaData()V
    .locals 4

    .prologue
    .line 605
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 614
    :cond_0
    return-void

    .line 609
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 610
    .local v1, editorCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 611
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    .line 612
    .local v0, editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupMetaData:Landroid/database/Cursor;

    invoke-virtual {v0, v3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setGroupMetaData(Landroid/database/Cursor;)V

    .line 610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private createContact(Landroid/accounts/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 466
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 467
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    if-eqz p1, :cond_1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 470
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getCreateContactActivityClassName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 471
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v2, p1, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomCreateContactActivityRequested(Landroid/accounts/Account;Landroid/os/Bundle;)V

    .line 477
    :cond_0
    :goto_1
    return-void

    .line 467
    .end local v0           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 475
    .restart local v0       #accountType:Lcom/android/contacts/model/AccountType;
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForNewContact(Landroid/accounts/Account;Lcom/android/contacts/model/AccountType;)V

    goto :goto_1
.end method

.method private doDeleteAction()Z
    .locals 2

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    const/4 v0, 0x0

    .line 661
    :goto_0
    return v0

    .line 656
    :cond_0
    const-string v0, "android.intent.action.INSERT"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    .line 661
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 659
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onDeleteRequested(Landroid/net/Uri;)V

    goto :goto_1
.end method

.method private doJoinContactAction()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 675
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 689
    :goto_0
    return v1

    .line 681
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 682
    .local v0, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v1, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 684
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0c01a3

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v3

    .line 686
    goto :goto_0

    .line 689
    :cond_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v1

    goto :goto_0
.end method

.method private doRevertAction()V
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 842
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onReverted()V

    .line 843
    :cond_0
    return-void
.end method

.method private doSplitContactAction()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 665
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 671
    :goto_0
    return v1

    .line 667
    :cond_0
    new-instance v0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;-><init>()V

    .line 669
    .local v0, dialog:Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;
    invoke-virtual {v0, p0, v2}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 670
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SplitContactConfirmationDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 671
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 5
    .parameter

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 759
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 760
    const-string v1, "image/*"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 763
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 764
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 766
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 767
    return-object v0
.end method

.method private getPhotoFileName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 719
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 720
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 721
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhotoPickIntent()Landroid/content/Intent;
    .locals 5

    .prologue
    const/16 v4, 0x60

    const/4 v3, 0x1

    .line 696
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 697
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 699
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 700
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 701
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 702
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 703
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 704
    return-object v0
.end method

.method private getRelativeBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 6
    .parameter "ascendant"
    .parameter "view"

    .prologue
    .line 1363
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1364
    .local v1, rect:Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1366
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1367
    .local v0, parent:Landroid/view/View;
    :goto_0
    if-eq v0, p1, :cond_0

    .line 1368
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1369
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .restart local v0       #parent:Landroid/view/View;
    goto :goto_0

    .line 1371
    :cond_0
    return-object v1
.end method

.method public static getTakePickIntent(Ljava/io/File;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 728
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 729
    const-string v1, "output"

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 730
    return-object v0
.end method

.method private hasMoreThanOnePhoto()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1463
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .line 1464
    .local v2, count:I
    const/4 v3, 0x0

    .line 1465
    .local v3, countWithPicture:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 1466
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1467
    .local v1, childView:Landroid/view/View;
    instance-of v6, v1, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v6, :cond_0

    .line 1468
    move-object v0, v1

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-object v4, v0

    .line 1469
    .local v4, editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v4}, Lcom/android/contacts/editor/BaseRawContactEditorView;->hasSetPhoto()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1470
    add-int/lit8 v3, v3, 0x1

    .line 1471
    if-le v3, v7, :cond_0

    move v6, v7

    .line 1476
    .end local v1           #childView:Landroid/view/View;
    .end local v4           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    :goto_1
    return v6

    .line 1465
    .restart local v1       #childView:Landroid/view/View;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1476
    .end local v1           #childView:Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private hasValidState()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isContactWritable()Z
    .locals 7

    .prologue
    .line 955
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 956
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v3

    .line 957
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 958
    iget-object v6, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v6, v2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 959
    .local v5, values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 960
    .local v0, accountType:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v4

    .line 961
    .local v4, type:Lcom/android/contacts/model/AccountType;
    iget-boolean v6, v4, Lcom/android/contacts/model/AccountType;->readOnly:Z

    if-nez v6, :cond_0

    .line 962
    const/4 v6, 0x1

    .line 965
    .end local v0           #accountType:Ljava/lang/String;
    .end local v4           #type:Lcom/android/contacts/model/AccountType;
    .end local v5           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :goto_1
    return v6

    .line 957
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v4       #type:Lcom/android/contacts/model/AccountType;
    .restart local v5       #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 965
    .end local v0           #accountType:Ljava/lang/String;
    .end local v4           #type:Lcom/android/contacts/model/AccountType;
    .end local v5           #values:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private joinAggregate(J)V
    .locals 8
    .parameter

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isContactWritable()Z

    move-result v5

    const-class v6, Lcom/android/contacts/activities/ContactEditorActivity;

    const-string v7, "joinCompleted"

    move-wide v3, p1

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/ContactSaveService;->createJoinContactsIntent(Landroid/content/Context;JJZLjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 948
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 949
    return-void
.end method

.method private requestAggregationSuggestionOnScreen(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1338
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->getRelativeBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1339
    .local v1, rect:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1340
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1341
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->getRelativeBounds(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1343
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 1344
    return-void
.end method

.method private revert()Z
    .locals 2

    .prologue
    .line 830
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 831
    .local v0, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v1, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 832
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V

    .line 836
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 834
    :cond_1
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/editor/ContactEditorFragment;)V

    goto :goto_0
.end method

.method private selectAccountAndCreateContact()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 441
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 444
    .local v0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Landroid/accounts/Account;)V

    .line 459
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 452
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    invoke-direct {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Landroid/accounts/Account;)V

    goto :goto_0

    .line 456
    :cond_1
    new-instance v1, Lcom/android/contacts/editor/SelectAccountDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/editor/SelectAccountDialogFragment;-><init>()V

    .line 457
    .local v1, dialog:Lcom/android/contacts/editor/SelectAccountDialogFragment;
    invoke-virtual {v1, p0, v3}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 458
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "SelectAccountDialogFragment"

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPhoto(JLandroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1435
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    .line 1436
    if-eqz v0, :cond_0

    .line 1437
    invoke-virtual {v0, p3}, Lcom/android/contacts/editor/BaseRawContactEditorView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    .line 1441
    :goto_0
    return-void

    .line 1439
    :cond_0
    const-string v0, "ContactEditorFragment"

    const-string v1, "The contact that requested the photo is no longer present."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showJoinAggregateActivity(Landroid/net/Uri;)V
    .locals 4
    .parameter

    .prologue
    .line 931
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 935
    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 936
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    const-string v1, "com.android.contacts.action.CONTACT_ID"

    iget-wide v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 938
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public acquireAggregationSuggestions(Lcom/android/contacts/editor/RawContactEditorView;)V
    .locals 6
    .parameter "rawContactEditor"

    .prologue
    .line 1128
    invoke-virtual {p1}, Lcom/android/contacts/editor/RawContactEditorView;->getRawContactId()J

    move-result-wide v1

    .line 1129
    .local v1, rawContactId:J
    iget-wide v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1131
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    .line 1133
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    .line 1136
    :cond_0
    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 1138
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-nez v3, :cond_1

    .line 1139
    new-instance v3, Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    .line 1140
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V

    .line 1141
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->start()V

    .line 1144
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getContactId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->setContactId(J)V

    .line 1146
    invoke-virtual {p1}, Lcom/android/contacts/editor/RawContactEditorView;->getNameEditor()Lcom/android/contacts/editor/TextFieldsEditorView;

    move-result-object v0

    .line 1147
    .local v0, nameEditor:Lcom/android/contacts/editor/LabeledEditorView;
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/LabeledEditorView;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->onNameChange(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)V

    .line 1148
    return-void
.end method

.method protected doCropPhoto(Ljava/io/File;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 739
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 746
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->getCropImageIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 747
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 748
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :goto_0
    return-void

    .line 749
    :catch_0
    move-exception v0

    .line 750
    const-string v1, "ContactEditorFragment"

    const-string v2, "Cannot crop image"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0049

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected doEditSuggestedContact(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 1326
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1327
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onEditOtherContactRequested(Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 1330
    :cond_0
    return-void
.end method

.method protected doJoinSuggestedContact([J)V
    .locals 2
    .parameter "rawContactIds"

    .prologue
    const/4 v1, 0x1

    .line 1276
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v1, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0, p1}, Lcom/android/contacts/model/EntityDeltaList;->setJoinWithRawContacts([J)V

    .line 1281
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    goto :goto_0
.end method

.method protected getContactId()J
    .locals 3

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/contacts/model/EntityDelta;

    .line 1115
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    const-string v2, "contact_id"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 1116
    if-eqz v1, :cond_0

    .line 1117
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1121
    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;
    .locals 6
    .parameter "rawContactId"

    .prologue
    .line 1447
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1448
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1449
    .local v1, childView:Landroid/view/View;
    instance-of v4, v1, Lcom/android/contacts/editor/BaseRawContactEditorView;

    if-eqz v4, :cond_0

    .line 1450
    move-object v0, v1

    check-cast v0, Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-object v2, v0

    .line 1451
    .local v2, editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    invoke-virtual {v2}, Lcom/android/contacts/editor/BaseRawContactEditorView;->getRawContactId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move-object v4, v2

    .line 1456
    .end local v1           #childView:Landroid/view/View;
    .end local v2           #editor:Lcom/android/contacts/editor/BaseRawContactEditorView;
    :goto_1
    return-object v4

    .line 1447
    .restart local v1       #childView:Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1456
    .end local v1           #childView:Landroid/view/View;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .parameter "action"
    .parameter "lookupUri"
    .parameter "intentExtras"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 333
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 334
    iput-object p3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 335
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v1, "addToDefaultDirectory"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAutoAddToDefaultGroup:Z

    .line 337
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccountChosen(Landroid/accounts/Account;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 1552
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Landroid/accounts/Account;)V

    .line 1553
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 1

    .prologue
    .line 1560
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onAccountSelectorAborted()V

    .line 1563
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 293
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 295
    const-string v2, "ContactEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityCreated("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz p1, :cond_2

    move v1, v5

    .line 300
    .local v1, hasIncomingState:Z
    :goto_0
    if-nez v1, :cond_1

    .line 301
    const-string v2, "android.intent.action.EDIT"

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    const v3, 0x7f0c003a

    invoke-interface {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->setTitleTo(I)V

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v5, v6, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 323
    :cond_1
    :goto_1
    return-void

    .line 298
    .end local v1           #hasIncomingState:Z
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 304
    .restart local v1       #hasIncomingState:Z
    :cond_3
    const-string v2, "android.intent.action.INSERT"

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 305
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    const v3, 0x7f0c003b

    invoke-interface {v2, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->setTitleTo(I)V

    .line 307
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v2, :cond_5

    move-object v0, v6

    .line 310
    .local v0, account:Landroid/accounts/Account;
    :goto_2
    if-eqz v0, :cond_6

    .line 312
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->createContact(Landroid/accounts/Account;)V

    goto :goto_1

    .line 307
    .end local v0           #account:Landroid/accounts/Account;
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v3, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    move-object v0, v2

    goto :goto_2

    .line 316
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->selectAccountAndCreateContact()V

    goto :goto_1

    .line 318
    .end local v0           #account:Landroid/accounts/Account;
    :cond_7
    const-string v2, "saveCompleted"

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown Action String "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Only support "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.intent.action.EDIT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.intent.action.INSERT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1398
    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1399
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 1403
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 1429
    :cond_1
    :goto_0
    return-void

    .line 1404
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1422
    :pswitch_0
    if-eqz p3, :cond_1

    .line 1423
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1424
    invoke-direct {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->joinAggregate(J)V

    goto :goto_0

    .line 1410
    :pswitch_1
    const-string v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    .line 1411
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mPhoto:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setPhoto(JLandroid/graphics/Bitmap;)V

    .line 1412
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhotoAfterLoad:J

    .line 1413
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    goto :goto_0

    .line 1418
    :pswitch_2
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->doCropPhoto(Ljava/io/File;)V

    goto :goto_0

    .line 1404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onAggregationSuggestionChange()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1152
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v11, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1156
    :cond_1
    iget-wide v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->getRawContactEditorView(J)Lcom/android/contacts/editor/BaseRawContactEditorView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/RawContactEditorView;

    .line 1158
    if-eqz v0, :cond_0

    .line 1162
    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1163
    if-eqz v1, :cond_2

    .line 1164
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1168
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-nez v1, :cond_3

    move v5, v11

    .line 1169
    :goto_1
    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/RawContactEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    .line 1171
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestedContactCount()I

    move-result v1

    .line 1172
    if-nez v1, :cond_4

    .line 1173
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v5, v10

    .line 1168
    goto :goto_1

    .line 1177
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getSuggestions()Ljava/util/List;

    move-result-object v2

    .line 1179
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const v3, 0x7f070020

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1181
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1183
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    .line 1185
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    .line 1186
    const v3, 0x7f040003

    const/4 v4, 0x0

    invoke-virtual {v6, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/editor/AggregationSuggestionView;

    .line 1189
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v4, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v4

    if-ne v4, v11, :cond_5

    iget-object v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v4, v10}, Lcom/android/contacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta;->isContactInsert()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v11

    :goto_3
    invoke-virtual {v3, v4}, Lcom/android/contacts/editor/AggregationSuggestionView;->setNewContact(Z)V

    .line 1193
    invoke-virtual {v3, p0}, Lcom/android/contacts/editor/AggregationSuggestionView;->setListener(Lcom/android/contacts/editor/AggregationSuggestionView$Listener;)V

    .line 1194
    invoke-virtual {v3, v2}, Lcom/android/contacts/editor/AggregationSuggestionView;->bindSuggestion(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;)V

    .line 1195
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    move v4, v10

    .line 1192
    goto :goto_3

    .line 1198
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->adjustAggregationSuggestionViewLayout(Lcom/android/contacts/editor/RawContactEditorView;)V

    .line 1199
    iget-boolean v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->setAggregationSuggestionViewEnabled(Z)V

    .line 1200
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1202
    if-eqz v5, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/contacts/editor/ContactEditorFragment$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/editor/ContactEditorFragment$2;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 259
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    .line 260
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 345
    if-eqz p1, :cond_0

    .line 348
    const-string v1, "uri"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    .line 349
    const-string v1, "action"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    .line 352
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 354
    if-nez p1, :cond_1

    .line 356
    new-instance v1, Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-direct {v1}, Lcom/android/contacts/editor/ViewIdGenerator;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 372
    :goto_0
    return-void

    .line 359
    :cond_1
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDeltaList;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 360
    const-string v1, "photorequester"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    .line 362
    const-string v1, "viewidgenerator"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/editor/ViewIdGenerator;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    .line 363
    const-string v1, "currentphotofile"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, fileName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 365
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    .line 367
    :cond_2
    const-string v1, "contactidforjoin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    .line 368
    const-string v1, "showJoinSuggestions"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    .line 369
    const-string v1, "enabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 370
    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 618
    const v0, 0x7f100001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 619
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 277
    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, view:Landroid/view/View;
    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    .line 281
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->setHasOptionsMenu(Z)V

    .line 284
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditors()V

    .line 288
    :cond_0
    return-object v0
.end method

.method public onEditAction(Landroid/net/Uri;)V
    .locals 3
    .parameter

    .prologue
    .line 1286
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;-><init>()V

    .line 1288
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1289
    const-string v2, "contactUri"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1290
    invoke-virtual {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1291
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1292
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "edit"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$SuggestionEditConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1293
    return-void
.end method

.method public onExternalEditorRequest(Landroid/accounts/Account;Landroid/net/Uri;)V
    .locals 3
    .parameter "account"
    .parameter "uri"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Landroid/accounts/Account;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    .line 406
    return-void
.end method

.method public onJoinAction(JLjava/util/List;)V
    .locals 6
    .parameter
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
    const/4 v5, 0x0

    .line 1230
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [J

    move v2, v5

    .line 1231
    :goto_0
    array-length v0, v1

    if-ge v2, v0, :cond_0

    .line 1232
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 1231
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1234
    :cond_0
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;-><init>()V

    .line 1236
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1237
    const-string v3, "rawContactIds"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1238
    invoke-virtual {v0, v2}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1239
    invoke-virtual {v0, p0, v5}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1241
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "join"

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/editor/ContactEditorFragment$JoinSuggestedContactDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1245
    :goto_1
    return-void

    .line 1242
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onJoinCompleted(Landroid/net/Uri;)V
    .locals 2
    .parameter "uri"

    .prologue
    .line 846
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZILandroid/net/Uri;)V

    .line 847
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 632
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 644
    :goto_0
    return v0

    .line 634
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    move-result v0

    goto :goto_0

    .line 636
    :pswitch_1
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->revert()Z

    move-result v0

    goto :goto_0

    .line 638
    :pswitch_2
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doDeleteAction()Z

    move-result v0

    goto :goto_0

    .line 640
    :pswitch_3
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doSplitContactAction()Z

    move-result v0

    goto :goto_0

    .line 642
    :pswitch_4
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->doJoinContactAction()Z

    move-result v0

    goto :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x7f0700cb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 623
    const v2, 0x7f0700ce

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDeltaList;->size()I

    move-result v3

    if-le v3, v4, :cond_0

    move v3, v4

    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 624
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    .line 625
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 626
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 625
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 623
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 628
    .restart local v0       #i:I
    .restart local v1       #size:I
    :cond_1
    return-void
.end method

.method public onSaveCompleted(ZILandroid/net/Uri;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 850
    if-eqz p3, :cond_2

    move v0, v6

    .line 851
    :goto_0
    const-string v1, "ContactEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSaveCompleted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    if-eqz p1, :cond_0

    .line 853
    if-eqz v0, :cond_3

    .line 854
    if-eq p2, v7, :cond_0

    .line 855
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0058

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 861
    :cond_0
    :goto_1
    packed-switch p2, :pswitch_data_0

    .line 923
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v4

    .line 850
    goto :goto_0

    .line 858
    :cond_3
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0059

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 866
    :pswitch_0
    if-eqz v0, :cond_6

    if-eqz p3, :cond_6

    .line 867
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v0, :cond_4

    move-object v0, v5

    .line 870
    :goto_3
    const-string v1, "contacts"

    .line 872
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 873
    const-string v2, "contacts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 875
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 877
    const-string v0, "content://contacts/people"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 878
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 880
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 886
    :goto_4
    const/4 v0, -0x1

    .line 892
    :goto_5
    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 893
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    const/4 v3, 0x4

    if-ne p2, v3, :cond_7

    move v3, v6

    :goto_6
    invoke-interface {v2, v0, v1, v3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onSaveFinished(ILandroid/content/Intent;Z)V

    goto :goto_2

    .line 867
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 883
    :cond_5
    invoke-virtual {v1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_4

    :cond_6
    move v0, v4

    move-object v1, v5

    .line 889
    goto :goto_5

    :cond_7
    move v3, v4

    .line 893
    goto :goto_6

    .line 899
    :pswitch_1
    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 902
    iput-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 903
    const-string v0, "android.intent.action.EDIT"

    invoke-virtual {p0, v0, p3, v5}, Lcom/android/contacts/editor/ContactEditorFragment;->load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 904
    iput v4, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 905
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v6, v5, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 908
    if-ne p2, v7, :cond_1

    .line 909
    invoke-direct {p0, p3}, Lcom/android/contacts/editor/ContactEditorFragment;->showJoinAggregateActivity(Landroid/net/Uri;)V

    goto :goto_2

    .line 915
    :pswitch_2
    iput v7, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 916
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v0, :cond_8

    .line 917
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    invoke-interface {v0, p3}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onContactSplit(Landroid/net/Uri;)V

    goto/16 :goto_2

    .line 919
    :cond_8
    const-string v0, "ContactEditorFragment"

    const-string v1, "No listener registered, can not call onSplitFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 861
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1376
    const-string v0, "uri"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1377
    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    const-string v0, "state"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1384
    :cond_0
    const-string v0, "photorequester"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mRawContactIdRequestingPhoto:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1385
    const-string v0, "viewidgenerator"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mViewIdGenerator:Lcom/android/contacts/editor/ViewIdGenerator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1386
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 1387
    const-string v0, "currentphotofile"

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mCurrentPhotoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    :cond_1
    const-string v0, "contactidforjoin"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContactIdForJoin:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1390
    const-string v0, "showJoinSuggestions"

    iget-wide v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionsRawContactId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1391
    const-string v0, "enabled"

    iget-boolean v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1392
    const-string v0, "status"

    iget v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1393
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1394
    return-void
.end method

.method public onSplitContactConfirmed()V
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDeltaList;->markRawContactsForSplitting()V

    .line 1544
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 1545
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mGroupLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 328
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 329
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 264
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 265
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionEngine:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->quit()Z

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-ne v0, v1, :cond_1

    .line 271
    invoke-virtual {p0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->save(I)Z

    .line 273
    :cond_1
    return-void
.end method

.method public save(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 775
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->hasValidState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    if-eq v0, v6, :cond_1

    :cond_0
    move v0, v2

    .line 798
    :goto_0
    return v0

    .line 780
    :cond_1
    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_3

    .line 781
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 784
    :cond_3
    iput v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mStatus:I

    .line 786
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-static {v1, v0}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 788
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/contacts/editor/ContactEditorFragment;->onSaveCompleted(ZILandroid/net/Uri;)V

    move v0, v6

    .line 789
    goto :goto_0

    .line 792
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/ContactEditorFragment;->setEnabled(Z)V

    .line 794
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    const-string v2, "saveMode"

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "saveCompleted"

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/ContactSaveService;->createSaveContactIntent(Landroid/content/Context;Lcom/android/contacts/model/EntityDeltaList;Ljava/lang/String;ILjava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 797
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v0, v6

    .line 798
    goto :goto_0
.end method

.method public setAggregationSuggestionViewEnabled(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1357
    :cond_0
    return-void

    .line 1351
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mAggregationSuggestionView:Landroid/view/View;

    const v1, 0x7f070020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    .line 1353
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 1354
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1355
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 13
    .parameter "data"

    .prologue
    const/4 v12, 0x1

    .line 376
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    if-eqz v8, :cond_1

    .line 377
    const-string v8, "ContactEditorFragment"

    const-string v9, "Ignoring background change. This will have to be rebased later"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v1

    .line 383
    .local v1, entities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Entity;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v8, v12, :cond_2

    .line 384
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    .line 385
    .local v2, entity:Landroid/content/Entity;
    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 386
    .local v3, entityValues:Landroid/content/ContentValues;
    const-string v8, "account_type"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 387
    .local v7, type:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 388
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountType;->getEditContactActivityClassName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 389
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    if-eqz v8, :cond_0

    .line 390
    const-string v8, "account_name"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, name:Ljava/lang/String;
    const-string v8, "_id"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 392
    .local v5, rawContactId:J
    iget-object v8, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    new-instance v9, Landroid/accounts/Account;

    invoke-direct {v9, v4, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v10, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/android/contacts/editor/ContactEditorFragment$Listener;->onCustomEditContactActivityRequested(Landroid/accounts/Account;Landroid/net/Uri;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 400
    .end local v0           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v2           #entity:Landroid/content/Entity;
    .end local v3           #entityValues:Landroid/content/ContentValues;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #rawContactId:J
    .end local v7           #type:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->bindEditorsForExistingContact(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 242
    iget-boolean v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    if-eq v3, p1, :cond_1

    .line 243
    iput-boolean p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mEnabled:Z

    .line 244
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 246
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 247
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment;->setAggregationSuggestionViewEnabled(Z)V

    .line 251
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 252
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 254
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    return-void
.end method

.method public setIntentExtras(Landroid/os/Bundle;)V
    .locals 7
    .parameter "extras"

    .prologue
    .line 424
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 429
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v5}, Lcom/android/contacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 430
    .local v3, state:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, accountType:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v4

    .line 432
    .local v4, type:Lcom/android/contacts/model/AccountType;
    iget-boolean v5, v4, Lcom/android/contacts/model/AccountType;->readOnly:Z

    if-nez v5, :cond_2

    .line 434
    iget-object v5, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v3, p1}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/editor/ContactEditorFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment;->mListener:Lcom/android/contacts/editor/ContactEditorFragment$Listener;

    .line 341
    return-void
.end method
