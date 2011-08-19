.class public Lcom/android/inputmethod/keyboard/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# static fields
.field private static EMPTY_INT_ARRAY:[I

.field private static SEARCH_DISTANCE:F


# instance fields
.field public final GRID_HEIGHT:I

.field private final GRID_SIZE:I

.field public final GRID_WIDTH:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mDefaultHeight:I

.field private mDefaultHorizontalGap:I

.field private mDefaultVerticalGap:I

.field private mDefaultWidth:I

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private mGridNeighbors:[[I

.field public final mId:Lcom/android/inputmethod/keyboard/KeyboardId;

.field private mKeyboardHeight:I

.field private final mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPopupColumn:I

.field private mMinWidth:I

.field private final mNormalShiftIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupKeyboardResId:I

.field private final mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

.field private mProximityThreshold:I

.field private final mShiftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mShiftLockEnabled:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

.field private final mShiftedIcons:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/inputmethod/keyboard/Keyboard;->EMPTY_INT_ARRAY:[I

    .line 145
    const v0, 0x3f99999a

    sput v0, Lcom/android/inputmethod/keyboard/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/inputmethod/keyboard/KeyboardId;)V
    .locals 6
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "id"

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Landroid/content/Context;ILcom/android/inputmethod/keyboard/KeyboardId;II)V

    .line 159
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILcom/android/inputmethod/keyboard/KeyboardId;II)V
    .locals 4
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "id"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftKeys:Ljava/util/List;

    .line 105
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/HashMap;

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mNormalShiftIcons:Ljava/util/HashMap;

    .line 107
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftLockEnabled:Ljava/util/HashSet;

    .line 108
    new-instance v1, Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-direct {v1}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 164
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_WIDTH:I

    .line 165
    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_HEIGHT:I

    .line 166
    iget v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_WIDTH:I

    iget v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_SIZE:I

    .line 168
    iput p4, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDisplayWidth:I

    .line 169
    iput p5, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDisplayHeight:I

    .line 171
    iput v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 172
    iget v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/keyboard/Keyboard;->setKeyWidth(I)V

    .line 173
    iput v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 174
    iget v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultWidth:I

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultHeight:I

    .line 175
    iput-object p3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/Keyboard;->loadKeyboard(Landroid/content/Context;I)V

    .line 177
    new-instance v1, Lcom/android/inputmethod/keyboard/ProximityInfo;

    iget v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_WIDTH:I

    iget v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_HEIGHT:I

    invoke-direct {v1, v2, v3}, Lcom/android/inputmethod/keyboard/ProximityInfo;-><init>(II)V

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    .line 178
    return-void
.end method

.method private loadKeyboard(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "xmlLayoutResId"

    .prologue
    .line 408
    :try_start_0
    new-instance v1, Lcom/android/inputmethod/keyboard/KeyboardParser;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;-><init>(Lcom/android/inputmethod/keyboard/Keyboard;Landroid/content/res/Resources;)V

    .line 409
    .local v1, parser:Lcom/android/inputmethod/keyboard/KeyboardParser;
    invoke-virtual {v1, p2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseKeyboard(I)V

    .line 411
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getMaxRowWidth()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMinWidth:I

    .line 412
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getTotalHeight()I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mTotalHeight:I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 420
    return-void

    .line 413
    .end local v1           #parser:Lcom/android/inputmethod/keyboard/KeyboardParser;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 414
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "Keyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyboard XML parse error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 416
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 417
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Keyboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyboard XML parse error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static setDefaultBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    const/4 v2, 0x0

    .line 423
    if-eqz p0, :cond_0

    .line 424
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 426
    :cond_0
    return-void
.end method


# virtual methods
.method public computeNearestNeighbors()V
    .locals 23

    .prologue
    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getMinWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_WIDTH:I

    move/from16 v19, v0

    add-int v18, v18, v19

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_WIDTH:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mCellWidth:I

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_HEIGHT:I

    move/from16 v19, v0

    add-int v18, v18, v19

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_HEIGHT:I

    move/from16 v19, v0

    div-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mCellHeight:I

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_SIZE:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Keyboard;->mGridNeighbors:[[I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object v13, v0

    .line 363
    .local v13, indices:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_WIDTH:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mCellWidth:I

    move/from16 v19, v0

    mul-int v11, v18, v19

    .line 364
    .local v11, gridWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_HEIGHT:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mCellHeight:I

    move/from16 v19, v0

    mul-int v10, v18, v19

    .line 365
    .local v10, gridHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityThreshold:I

    move v15, v0

    .line 366
    .local v15, threshold:I
    const/16 v16, 0x0

    .local v16, x:I
    :goto_0
    move/from16 v0, v16

    move v1, v11

    if-ge v0, v1, :cond_3

    .line 367
    const/16 v17, 0x0

    .local v17, y:I
    :goto_1
    move/from16 v0, v17

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mCellWidth:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v6, v16, v18

    .line 369
    .local v6, centerX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mCellHeight:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v7, v17, v18

    .line 370
    .local v7, centerY:I
    const/4 v8, 0x0

    .line 371
    .local v8, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move v0, v12

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/inputmethod/keyboard/Key;

    .line 373
    .local v14, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-virtual {v14, v6, v7}, Lcom/android/inputmethod/keyboard/Key;->squaredDistanceToEdge(II)I

    move-result v18

    move/from16 v0, v18

    move v1, v15

    if-ge v0, v1, :cond_0

    .line 374
    add-int/lit8 v9, v8, 0x1

    .end local v8           #count:I
    .local v9, count:I
    aput v12, v13, v8

    move v8, v9

    .line 371
    .end local v9           #count:I
    .restart local v8       #count:I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 376
    .end local v14           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_1
    new-array v5, v8, [I

    .line 377
    .local v5, cell:[I
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v13

    move/from16 v1, v18

    move-object v2, v5

    move/from16 v3, v19

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mGridNeighbors:[[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mCellHeight:I

    move/from16 v19, v0

    div-int v19, v17, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_WIDTH:I

    move/from16 v20, v0

    mul-int v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mCellWidth:I

    move/from16 v20, v0

    div-int v20, v16, v20

    add-int v19, v19, v20

    aput-object v5, v18, v19

    .line 367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mCellHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    goto/16 :goto_1

    .line 366
    .end local v5           #cell:[I
    .end local v6           #centerX:I
    .end local v7           #centerY:I
    .end local v8           #count:I
    .end local v12           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mCellWidth:I

    move/from16 v18, v0

    add-int v16, v16, v18

    goto/16 :goto_0

    .line 381
    .end local v17           #y:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mGridNeighbors:[[I

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getMinWidth()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v22}, Lcom/android/inputmethod/keyboard/ProximityInfo;->setProximityInfo([[IIILjava/util/List;)V

    .line 382
    return-void
.end method

.method public enableShiftLock()V
    .locals 4

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getShiftKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/Key;

    .line 284
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftLockEnabled:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mNormalShiftIcons:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 287
    .end local v1           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_0
    return-void
.end method

.method public getDisplayHeight()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDisplayHeight:I

    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDisplayWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mTotalHeight:I

    return v0
.end method

.method public getHorizontalGap()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method public getKeyWidth()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public getKeyboardHeight()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyboardHeight:I

    return v0
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public getMaxPopupKeyboardColumn()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMaxPopupColumn:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMinWidth:I

    return v0
.end method

.method public getNearestKeys(II)[I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mGridNeighbors:[[I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->computeNearestNeighbors()V

    .line 397
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getMinWidth()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getHeight()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 398
    iget v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mCellHeight:I

    div-int v1, p2, v1

    iget v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_WIDTH:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mCellWidth:I

    div-int v2, p1, v2

    add-int v0, v1, v2

    .line 399
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->GRID_SIZE:I

    if-ge v0, v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    .line 403
    .end local v0           #index:I
    :goto_0
    return-object v1

    :cond_1
    sget-object v1, Lcom/android/inputmethod/keyboard/Keyboard;->EMPTY_INT_ARRAY:[I

    goto :goto_0
.end method

.method public getPopupKeyboardResId()I
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mPopupKeyboardResId:I

    return v0
.end method

.method public getProximityInfo()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityInfo:Lcom/android/inputmethod/keyboard/ProximityInfo;

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/ProximityInfo;->getNativeProximityInfo(Lcom/android/inputmethod/keyboard/Keyboard;)I

    move-result v0

    return v0
.end method

.method public getRowHeight()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method public getShiftKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftKeys:Ljava/util/List;

    return-object v0
.end method

.method public getShiftedIcons()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftedIcons:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVerticalGap()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public isAlphaKeyboard()Z
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isAlphabetKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutomaticTemporaryUpperCase()Z
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->isAutomaticTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInside(Lcom/android/inputmethod/keyboard/Key;II)Z
    .locals 1
    .parameter "key"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 385
    invoke-virtual {p1, p2, p3}, Lcom/android/inputmethod/keyboard/Key;->isOnKey(II)Z

    move-result v0

    return v0
.end method

.method public isManualTemporaryUpperCase()Z
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->isManualTemporaryUpperCase()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualTemporaryUpperCaseFromAuto()Z
    .locals 1

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isAlphaKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->isManualTemporaryUpperCaseFromAuto()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNumberKeyboard()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isNumberKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneKeyboard()Z
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardId;->isPhoneKeyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShiftLockEnabled(Lcom/android/inputmethod/keyboard/Key;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftLockEnabled:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShiftLocked()Z
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->isShiftLocked()Z

    move-result v0

    return v0
.end method

.method public isShiftedOrShiftLocked()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->isShiftedOrShiftLocked()Z

    move-result v0

    return v0
.end method

.method public setAutomaticTemporaryUpperCase()V
    .locals 1

    .prologue
    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/keyboard/Keyboard;->setShifted(Z)Z

    .line 325
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->setAutomaticTemporaryUpperCase()V

    .line 326
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 231
    iput p1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mTotalHeight:I

    .line 232
    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 193
    iput p1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultHorizontalGap:I

    .line 194
    return-void
.end method

.method public setKeyWidth(I)V
    .locals 3
    .parameter "width"

    .prologue
    .line 217
    iput p1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultWidth:I

    .line 218
    int-to-float v1, p1

    sget v2, Lcom/android/inputmethod/keyboard/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 219
    .local v0, threshold:I
    mul-int v1, v0, v0

    iput v1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mProximityThreshold:I

    .line 220
    return-void
.end method

.method public setKeyboardHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 255
    iput p1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mKeyboardHeight:I

    .line 256
    return-void
.end method

.method public setMaxPopupKeyboardColumn(I)V
    .locals 0
    .parameter "column"

    .prologue
    .line 271
    iput p1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMaxPopupColumn:I

    .line 272
    return-void
.end method

.method public setMinWidth(I)V
    .locals 0
    .parameter "minWidth"

    .prologue
    .line 239
    iput p1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mMinWidth:I

    .line 240
    return-void
.end method

.method public setPopupKeyboardResId(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 263
    iput p1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mPopupKeyboardResId:I

    .line 264
    return-void
.end method

.method public setRowHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 209
    iput p1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultHeight:I

    .line 210
    return-void
.end method

.method public setShiftLocked(Z)Z
    .locals 4
    .parameter "newShiftLockState"

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getShiftedIcons()Ljava/util/Map;

    move-result-object v2

    .line 295
    .local v2, shiftedIcons:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getShiftKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/Key;

    .line 296
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    iput-boolean p1, v1, Lcom/android/inputmethod/keyboard/Key;->mOn:Z

    .line 297
    if-eqz p1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mNormalShiftIcons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 299
    .end local v1           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_1
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->setShiftLocked(Z)V

    .line 300
    const/4 v3, 0x1

    return v3
.end method

.method public setShifted(Z)Z
    .locals 4
    .parameter "newShiftState"

    .prologue
    .line 308
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getShiftedIcons()Ljava/util/Map;

    move-result-object v2

    .line 309
    .local v2, shiftedIcons:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/inputmethod/keyboard/Key;Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getShiftKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/keyboard/Key;

    .line 310
    .local v1, key:Lcom/android/inputmethod/keyboard/Key;
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->isShiftLocked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mNormalShiftIcons:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 312
    :cond_1
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->isShiftedOrShiftLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 313
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 316
    .end local v1           #key:Lcom/android/inputmethod/keyboard/Key;
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mShiftState:Lcom/android/inputmethod/keyboard/KeyboardShiftState;

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardShiftState;->setShifted(Z)Z

    move-result v3

    return v3
.end method

.method public setVerticalGap(I)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 201
    iput p1, p0, Lcom/android/inputmethod/keyboard/Keyboard;->mDefaultVerticalGap:I

    .line 202
    return-void
.end method
