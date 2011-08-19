.class public Lcom/android/inputmethod/keyboard/KeyboardParser;
.super Ljava/lang/Object;
.source "KeyboardParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/KeyboardParser$NonEmptyTag;,
        Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalAttribute;,
        Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalEndTag;,
        Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalStartTag;,
        Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentRow:Lcom/android/inputmethod/keyboard/Row;

.field private mCurrentX:I

.field private mCurrentY:I

.field private final mKeyStyles:Lcom/android/inputmethod/keyboard/KeyStyles;

.field private final mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field private mMaxRowWidth:I

.field private final mResources:Landroid/content/res/Resources;

.field private mTotalHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/android/inputmethod/keyboard/KeyboardParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/keyboard/KeyboardParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/inputmethod/keyboard/Keyboard;Landroid/content/res/Resources;)V
    .locals 1
    .parameter "keyboard"
    .parameter "res"

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentX:I

    .line 125
    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentY:I

    .line 126
    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mMaxRowWidth:I

    .line 127
    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mTotalHeight:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentRow:Lcom/android/inputmethod/keyboard/Row;

    .line 129
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyStyles;

    invoke-direct {v0}, Lcom/android/inputmethod/keyboard/KeyStyles;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyStyles:Lcom/android/inputmethod/keyboard/KeyStyles;

    .line 132
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 133
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    .line 134
    return-void
.end method

.method private static checkEndTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V
    .locals 2
    .parameter "tag"
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    return-void

    .line 544
    :cond_0
    new-instance v0, Lcom/android/inputmethod/keyboard/KeyboardParser$NonEmptyTag;

    invoke-direct {v0, p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser$NonEmptyTag;-><init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    throw v0
.end method

.method private endKey(Lcom/android/inputmethod/keyboard/Key;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 560
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentX:I

    .line 561
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentX:I

    iget v1, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mMaxRowWidth:I

    if-le v0, v1, :cond_0

    .line 562
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentX:I

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mMaxRowWidth:I

    .line 563
    :cond_0
    return-void
.end method

.method private endKeyboard(I)V
    .locals 1
    .parameter "defaultVerticalGap"

    .prologue
    .line 566
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mTotalHeight:I

    .line 567
    return-void
.end method

.method private endRow()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentRow:Lcom/android/inputmethod/keyboard/Row;

    if-nez v0, :cond_0

    .line 554
    new-instance v0, Landroid/view/InflateException;

    const-string v1, "orphant end row tag"

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentY:I

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentRow:Lcom/android/inputmethod/keyboard/Row;

    iget v1, v1, Lcom/android/inputmethod/keyboard/Row;->mDefaultHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentY:I

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentRow:Lcom/android/inputmethod/keyboard/Row;

    .line 557
    return-void
.end method

.method public static getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .locals 3
    .parameter "a"
    .parameter "index"
    .parameter "base"
    .parameter "defValue"

    .prologue
    .line 574
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 575
    .local v0, value:Landroid/util/TypedValue;
    if-nez v0, :cond_0

    move v1, p3

    .line 583
    :goto_0
    return v1

    .line 577
    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 578
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    goto :goto_0

    .line 579
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    .line 581
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, p3

    .line 583
    goto :goto_0
.end method

.method private static matchBoolean(Landroid/content/res/TypedArray;IZ)Z
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 503
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-ne v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static matchInteger(Landroid/content/res/TypedArray;II)Z
    .locals 2
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 497
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ne v0, p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z
    .locals 1
    .parameter "a"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseCase(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)Z
    .locals 2
    .parameter "parser"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/inputmethod/keyboard/Row;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    const/4 v1, 0x0

    .line 412
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseCaseCondition(Landroid/content/res/XmlResourceParser;)Z

    move-result v0

    .line 413
    .local v0, selected:Z
    if-nez p2, :cond_1

    .line 415
    if-eqz v0, :cond_0

    move-object v1, p3

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseKeyboardContent(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V

    .line 420
    :goto_0
    return v0

    .line 418
    :cond_1
    if-eqz v0, :cond_2

    move-object v1, p3

    :cond_2
    invoke-direct {p0, p1, p2, v1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseRowContent(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    goto :goto_0
.end method

.method private parseCaseCondition(Landroid/content/res/XmlResourceParser;)Z
    .locals 22
    .parameter "parser"

    .prologue
    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Keyboard;->mId:Lcom/android/inputmethod/keyboard/KeyboardId;

    move-object v8, v0

    .line 425
    .local v8, id:Lcom/android/inputmethod/keyboard/KeyboardId;
    if-nez v8, :cond_0

    .line 426
    const/16 v19, 0x1

    .line 490
    :goto_0
    return v19

    .line 428
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v20

    sget-object v21, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Case:[I

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 430
    .local v3, a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    move-object/from16 v19, v0

    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v20

    sget-object v21, Lcom/android/inputmethod/latin/R$styleable;->KeyboardView:[I

    invoke-virtual/range {v19 .. v21}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 433
    .local v15, viewAttr:Landroid/content/res/TypedArray;
    const/16 v19, 0x0

    :try_start_0
    move-object v0, v8

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mMode:I

    move/from16 v20, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v11

    .line 435
    .local v11, modeMatched:Z
    const/16 v19, 0x1

    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mWebInput:Z

    move/from16 v20, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v18

    .line 437
    .local v18, webInputMatched:Z
    const/16 v19, 0x2

    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mPasswordInput:Z

    move/from16 v20, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v12

    .line 439
    .local v12, passwordInputMatched:Z
    const/16 v19, 0x3

    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasSettingsKey:Z

    move/from16 v20, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v14

    .line 441
    .local v14, settingsKeyMatched:Z
    const/16 v19, 0x4

    move-object v0, v8

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mF2KeyMode:I

    move/from16 v20, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v7

    .line 443
    .local v7, f2KeyModeMatched:Z
    const/16 v19, 0x5

    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mClobberSettingsKey:Z

    move/from16 v20, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    .line 445
    .local v4, clobberSettingsKeyMatched:Z
    const/16 v19, 0x6

    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mVoiceKeyEnabled:Z

    move/from16 v20, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v16

    .line 447
    .local v16, voiceEnabledMatched:Z
    const/16 v19, 0x7

    move-object v0, v8

    iget-boolean v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mHasVoiceKey:Z

    move/from16 v20, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v17

    .line 449
    .local v17, voiceKeyMatched:Z
    const/16 v19, 0x10

    move-object v0, v8

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mColorScheme:I

    move/from16 v20, v0

    move-object v0, v15

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v5

    .line 455
    .local v5, colorSchemeMatched:Z
    const/16 v19, 0x8

    move-object v0, v8

    iget v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mImeAction:I

    move/from16 v20, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchInteger(Landroid/content/res/TypedArray;II)Z

    move-result v9

    .line 457
    .local v9, imeActionMatched:Z
    const/16 v19, 0x9

    move-object v0, v8

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    move-object v0, v3

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z

    move-result v10

    .line 459
    .local v10, languageCodeMatched:Z
    const/16 v19, 0xa

    move-object v0, v8

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/KeyboardId;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v20

    move-object v0, v3

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->matchString(Landroid/content/res/TypedArray;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 461
    .local v6, countryCodeMatched:Z
    if-eqz v11, :cond_1

    if-eqz v18, :cond_1

    if-eqz v12, :cond_1

    if-eqz v14, :cond_1

    if-eqz v7, :cond_1

    if-eqz v4, :cond_1

    if-eqz v16, :cond_1

    if-eqz v17, :cond_1

    if-eqz v5, :cond_1

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    if-eqz v6, :cond_1

    const/16 v19, 0x1

    move/from16 v13, v19

    .line 489
    .local v13, selected:Z
    :goto_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 490
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v19, v13

    goto/16 :goto_0

    .line 461
    .end local v13           #selected:Z
    :cond_1
    const/16 v19, 0x0

    move/from16 v13, v19

    goto :goto_1

    .line 489
    .end local v4           #clobberSettingsKeyMatched:Z
    .end local v5           #colorSchemeMatched:Z
    .end local v6           #countryCodeMatched:Z
    .end local v7           #f2KeyModeMatched:Z
    .end local v9           #imeActionMatched:Z
    .end local v10           #languageCodeMatched:Z
    .end local v11           #modeMatched:Z
    .end local v12           #passwordInputMatched:Z
    .end local v14           #settingsKeyMatched:Z
    .end local v16           #voiceEnabledMatched:Z
    .end local v17           #voiceKeyMatched:Z
    .end local v18           #webInputMatched:Z
    :catchall_0
    move-exception v19

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 490
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    throw v19
.end method

.method private parseDefault(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)Z
    .locals 1
    .parameter "parser"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/inputmethod/keyboard/Row;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    .local p3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    if-nez p2, :cond_0

    .line 516
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseKeyboardContent(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V

    .line 520
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 518
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseRowContent(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    goto :goto_0
.end method

.method private parseIncludeInternal(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V
    .locals 6
    .parameter "parser"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/inputmethod/keyboard/Row;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    const/4 v5, 0x0

    .line 334
    if-nez p3, :cond_0

    .line 335
    const-string v2, "include"

    invoke-static {v2, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->checkEndTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    .line 350
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Include:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 339
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 341
    .local v1, keyboardLayout:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 343
    const-string v2, "include"

    invoke-static {v2, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->checkEndTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    .line 344
    if-nez v1, :cond_1

    .line 345
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;

    const-string v3, "No keyboardLayout attribute in <include/>"

    invoke-direct {v2, v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;-><init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    throw v2

    .line 348
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseMerge(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    goto :goto_0
.end method

.method private parseIncludeKeyboardContent(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V
    .locals 1
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 324
    .local p2, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseIncludeInternal(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    .line 325
    return-void
.end method

.method private parseIncludeRowContent(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V
    .locals 0
    .parameter "parser"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/inputmethod/keyboard/Row;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 329
    .local p3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseIncludeInternal(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    .line 330
    return-void
.end method

.method private parseKey(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V
    .locals 7
    .parameter "parser"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/inputmethod/keyboard/Row;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    .local p3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    if-nez p3, :cond_0

    .line 279
    const-string v1, "Key"

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->checkEndTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    .line 291
    :goto_0
    return-void

    .line 281
    :cond_0
    new-instance v0, Lcom/android/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    iget v3, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentX:I

    iget v4, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentY:I

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyStyles:Lcom/android/inputmethod/keyboard/KeyStyles;

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/Row;IILandroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/KeyStyles;)V

    .line 285
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    const-string v1, "Key"

    invoke-static {v1, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->checkEndTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    .line 286
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget v1, v0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/Keyboard;->getShiftKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/KeyboardParser;->endKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0
.end method

.method private parseKeyStyle(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V
    .locals 5
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 524
    .local p2, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_KeyStyle:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 526
    .local v1, keyStyleAttr:Landroid/content/res/TypedArray;
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    sget-object v4, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 529
    .local v0, keyAttrs:Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 530
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;

    const-string v3, "<key-style/> needs styleName attribute"

    invoke-direct {v2, v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;-><init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2

    .line 532
    :cond_0
    if-eqz p2, :cond_1

    .line 533
    :try_start_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyStyles:Lcom/android/inputmethod/keyboard/KeyStyles;

    invoke-virtual {v2, v1, v0, p1}, Lcom/android/inputmethod/keyboard/KeyStyles;->parseKeyStyleAttributes(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;Landroid/content/res/XmlResourceParser;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 536
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 538
    return-void
.end method

.method private parseKeyboardAttributes(Landroid/content/res/XmlResourceParser;)V
    .locals 11
    .parameter "parser"

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 164
    .local v3, keyboard:Lcom/android/inputmethod/keyboard/Keyboard;
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    sget-object v10, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 166
    .local v4, keyboardAttr:Landroid/content/res/TypedArray;
    iget-object v8, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v9

    sget-object v10, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 169
    .local v2, keyAttr:Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/Keyboard;->getDisplayHeight()I

    move-result v0

    .line 170
    .local v0, displayHeight:I
    const/4 v8, 0x0

    div-int/lit8 v9, v0, 0x2

    int-to-float v9, v9

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v8

    float-to-int v5, v8

    .line 172
    .local v5, keyboardHeight:I
    const/4 v8, 0x1

    div-int/lit8 v9, v0, 0x2

    invoke-static {v4, v8, v0, v9}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v6

    .line 175
    .local v6, maxKeyboardHeight:I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 176
    .local v1, height:I
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/Keyboard;->getDisplayWidth()I

    move-result v7

    .line 178
    .local v7, width:I
    invoke-virtual {v3, v1}, Lcom/android/inputmethod/keyboard/Keyboard;->setKeyboardHeight(I)V

    .line 179
    const/4 v8, 0x2

    div-int/lit8 v9, v7, 0xa

    invoke-static {v4, v8, v7, v9}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/inputmethod/keyboard/Keyboard;->setKeyWidth(I)V

    .line 181
    const/4 v8, 0x3

    const/16 v9, 0x32

    invoke-static {v4, v8, v1, v9}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/inputmethod/keyboard/Keyboard;->setRowHeight(I)V

    .line 183
    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static {v4, v8, v7, v9}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/inputmethod/keyboard/Keyboard;->setHorizontalGap(I)V

    .line 185
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-static {v4, v8, v1, v9}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/inputmethod/keyboard/Keyboard;->setVerticalGap(I)V

    .line 187
    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/inputmethod/keyboard/Keyboard;->setPopupKeyboardResId(I)V

    .line 190
    const/4 v8, 0x2

    const/4 v9, 0x5

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/android/inputmethod/keyboard/Keyboard;->setMaxPopupKeyboardColumn(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 196
    return-void

    .line 193
    .end local v0           #displayHeight:I
    .end local v1           #height:I
    .end local v5           #keyboardHeight:I
    .end local v6           #maxKeyboardHeight:I
    .end local v7           #width:I
    :catchall_0
    move-exception v8

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    throw v8
.end method

.method private parseKeyboardContent(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V
    .locals 5
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    .local p2, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    .line 202
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    .line 203
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, tag:Ljava/lang/String;
    const-string v3, "Row"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 205
    new-instance v1, Lcom/android/inputmethod/keyboard/Row;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-direct {v1, v3, v4, p1}, Lcom/android/inputmethod/keyboard/Row;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/Keyboard;Landroid/content/res/XmlResourceParser;)V

    .line 207
    .local v1, row:Lcom/android/inputmethod/keyboard/Row;
    if-eqz p2, :cond_1

    .line 208
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->startRow(Lcom/android/inputmethod/keyboard/Row;)V

    .line 209
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseRowContent(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    goto :goto_0

    .line 210
    .end local v1           #row:Lcom/android/inputmethod/keyboard/Row;
    :cond_2
    const-string v3, "include"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseIncludeKeyboardContent(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V

    goto :goto_0

    .line 212
    :cond_3
    const-string v3, "switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseSwitchKeyboardContent(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V

    goto :goto_0

    .line 214
    :cond_4
    const-string v3, "key-style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseKeyStyle(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V

    goto :goto_0

    .line 217
    :cond_5
    new-instance v3, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalStartTag;

    const-string v4, "Row"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalStartTag;-><init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    throw v3

    .line 219
    .end local v2           #tag:Ljava/lang/String;
    :cond_6
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 220
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 221
    .restart local v2       #tag:Ljava/lang/String;
    const-string v3, "Keyboard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 222
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/Keyboard;->getVerticalGap()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->endKeyboard(I)V

    .line 235
    .end local v2           #tag:Ljava/lang/String;
    :cond_7
    return-void

    .line 224
    .restart local v2       #tag:Ljava/lang/String;
    :cond_8
    const-string v3, "case"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "merge"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 228
    const-string v3, "key-style"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    new-instance v3, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalEndTag;

    const-string v4, "Row"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalEndTag;-><init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    throw v3
.end method

.method private parseMerge(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V
    .locals 4
    .parameter "parser"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/inputmethod/keyboard/Row;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    .local p3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 356
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 357
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, tag:Ljava/lang/String;
    const-string v2, "merge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 359
    if-nez p2, :cond_2

    .line 360
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseKeyboardContent(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V

    .line 371
    .end local v1           #tag:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 362
    .restart local v1       #tag:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseRowContent(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    goto :goto_0

    .line 366
    :cond_3
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;

    const-string v3, "Included keyboard layout must have <merge> root element"

    invoke-direct {v2, v3, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;-><init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    throw v2
.end method

.method private parseRowContent(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V
    .locals 4
    .parameter "parser"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/inputmethod/keyboard/Row;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    .local p3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    .line 241
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 242
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, tag:Ljava/lang/String;
    const-string v2, "Key"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 244
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseKey(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    goto :goto_0

    .line 245
    :cond_1
    const-string v2, "Spacer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseSpacer(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    goto :goto_0

    .line 247
    :cond_2
    const-string v2, "include"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 248
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseIncludeRowContent(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    goto :goto_0

    .line 249
    :cond_3
    const-string v2, "switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 250
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseSwitchRowContent(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    goto :goto_0

    .line 251
    :cond_4
    const-string v2, "key-style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 252
    invoke-direct {p0, p1, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseKeyStyle(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V

    goto :goto_0

    .line 254
    :cond_5
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalStartTag;

    const-string v3, "Key"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalStartTag;-><init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    throw v2

    .line 256
    .end local v1           #tag:Ljava/lang/String;
    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 257
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 258
    .restart local v1       #tag:Ljava/lang/String;
    const-string v2, "Row"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 260
    if-eqz p3, :cond_7

    .line 261
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/KeyboardParser;->endRow()V

    .line 274
    .end local v1           #tag:Ljava/lang/String;
    :cond_7
    return-void

    .line 263
    .restart local v1       #tag:Ljava/lang/String;
    :cond_8
    const-string v2, "case"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "merge"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 267
    const-string v2, "key-style"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    new-instance v2, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalEndTag;

    const-string v3, "Key"

    invoke-direct {v2, p1, v3}, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalEndTag;-><init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    throw v2
.end method

.method private parseSpacer(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V
    .locals 8
    .parameter "parser"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/inputmethod/keyboard/Row;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    .local p3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    if-nez p3, :cond_0

    .line 296
    const-string v5, "Spacer"

    invoke-static {v5, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->checkEndTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    .line 320
    :goto_0
    return-void

    .line 299
    :cond_0
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    sget-object v7, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 301
    .local v4, keyboardAttr:Landroid/content/res/TypedArray;
    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 302
    new-instance v5, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalAttribute;

    const-string v6, "horizontalGap"

    invoke-direct {v5, p1, v6}, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalAttribute;-><init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    throw v5

    .line 303
    :cond_1
    if-eqz p2, :cond_3

    iget v5, p2, Lcom/android/inputmethod/keyboard/Row;->mDefaultWidth:I

    move v0, v5

    .line 304
    .local v0, defaultWidth:I
    :goto_1
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/Keyboard;->getDisplayWidth()I

    move-result v6

    invoke-static {v4, v5, v6, v0}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v2

    .line 306
    .local v2, keyWidth:I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    sget-object v7, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 310
    .local v1, keyAttr:Landroid/content/res/TypedArray;
    const/16 v5, 0x12

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/Keyboard;->getDisplayWidth()I

    move-result v6

    iget v7, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentX:I

    invoke-static {v1, v5, v6, v7}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v3

    .line 312
    .local v3, keyXPos:I
    if-gez v3, :cond_2

    .line 314
    iget-object v5, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v5}, Lcom/android/inputmethod/keyboard/Keyboard;->getDisplayWidth()I

    move-result v5

    add-int/2addr v3, v5

    .line 317
    :cond_2
    const-string v5, "Spacer"

    invoke-static {v5, p1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->checkEndTag(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    .line 318
    invoke-direct {p0, v3, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->setSpacer(II)V

    goto :goto_0

    .line 303
    .end local v0           #defaultWidth:I
    .end local v1           #keyAttr:Landroid/content/res/TypedArray;
    .end local v2           #keyWidth:I
    .end local v3           #keyXPos:I
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method private parseSwitchInternal(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V
    .locals 5
    .parameter "parser"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/inputmethod/keyboard/Row;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    const/4 v4, 0x0

    .line 386
    const/4 v1, 0x0

    .line 388
    .local v1, selected:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    .line 389
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    .line 390
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, tag:Ljava/lang/String;
    const-string v3, "case"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 392
    if-eqz v1, :cond_1

    move-object v3, v4

    :goto_1
    invoke-direct {p0, p1, p2, v3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseCase(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_1
    move-object v3, p3

    goto :goto_1

    .line 393
    :cond_2
    const-string v3, "default"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 394
    if-eqz v1, :cond_3

    move-object v3, v4

    :goto_2
    invoke-direct {p0, p1, p2, v3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseDefault(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)Z

    move-result v3

    or-int/2addr v1, v3

    goto :goto_0

    :cond_3
    move-object v3, p3

    goto :goto_2

    .line 396
    :cond_4
    new-instance v3, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalStartTag;

    const-string v4, "Key"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalStartTag;-><init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    throw v3

    .line 398
    .end local v2           #tag:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 399
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 400
    .restart local v2       #tag:Ljava/lang/String;
    const-string v3, "switch"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 408
    .end local v2           #tag:Ljava/lang/String;
    :cond_6
    return-void

    .line 404
    .restart local v2       #tag:Ljava/lang/String;
    :cond_7
    new-instance v3, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalEndTag;

    const-string v4, "Key"

    invoke-direct {v3, p1, v4}, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalEndTag;-><init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    throw v3
.end method

.method private parseSwitchKeyboardContent(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V
    .locals 1
    .parameter "parser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    .local p2, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseSwitchInternal(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    .line 376
    return-void
.end method

.method private parseSwitchRowContent(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V
    .locals 0
    .parameter "parser"
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/inputmethod/keyboard/Row;",
            "Ljava/util/List",
            "<",
            "Lcom/android/inputmethod/keyboard/Key;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    .local p3, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseSwitchInternal(Landroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/Row;Ljava/util/List;)V

    .line 381
    return-void
.end method

.method private setSpacer(II)V
    .locals 1
    .parameter "keyXPos"
    .parameter "width"

    .prologue
    .line 570
    add-int v0, p1, p2

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentX:I

    .line 571
    return-void
.end method

.method private startRow(Lcom/android/inputmethod/keyboard/Row;)V
    .locals 1
    .parameter "row"

    .prologue
    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentX:I

    .line 549
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mCurrentRow:Lcom/android/inputmethod/keyboard/Row;

    .line 550
    return-void
.end method


# virtual methods
.method public getMaxRowWidth()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mMaxRowWidth:I

    return v0
.end method

.method public getTotalHeight()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mTotalHeight:I

    return v0
.end method

.method public parseKeyboard(I)V
    .locals 5
    .parameter "resId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 148
    .local v1, parser:Landroid/content/res/XmlResourceParser;
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .local v0, event:I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 149
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 150
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, tag:Ljava/lang/String;
    const-string v3, "Keyboard"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseKeyboardAttributes(Landroid/content/res/XmlResourceParser;)V

    .line 153
    iget-object v3, p0, Lcom/android/inputmethod/keyboard/KeyboardParser;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->parseKeyboardContent(Landroid/content/res/XmlResourceParser;Ljava/util/List;)V

    .line 160
    .end local v2           #tag:Ljava/lang/String;
    :cond_1
    return-void

    .line 156
    .restart local v2       #tag:Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalStartTag;

    const-string v4, "Keyboard"

    invoke-direct {v3, v1, v4}, Lcom/android/inputmethod/keyboard/KeyboardParser$IllegalStartTag;-><init>(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V

    throw v3
.end method
