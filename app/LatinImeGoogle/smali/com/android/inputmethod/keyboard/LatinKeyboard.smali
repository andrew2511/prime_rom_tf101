.class public Lcom/android/inputmethod/keyboard/LatinKeyboard;
.super Lcom/android/inputmethod/keyboard/Keyboard;
.source "LatinKeyboard.java"


# instance fields
.field private final mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

.field private final mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentlyInSpace:Z

.field private final mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

.field private final mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

.field private final mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

.field private mSlidingLocaleIcon:Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;

.field private final mSpaceAutoCorrectionIndicator:Landroid/graphics/drawable/Drawable;

.field private mSpaceDragLastDiff:I

.field private mSpaceDragStartX:I

.field private final mSpaceIcon:Landroid/graphics/drawable/Drawable;

.field private final mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

.field private final mSpaceKeyIndexArray:[I

.field private final mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

.field private final mSpacebarTextColor:I

.field private mSpacebarTextFadeFactor:F

.field private final mSpacebarTextShadowColor:I

.field private final mSpacebarVerticalCorrection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/keyboard/KeyboardId;)V
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 81
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/KeyboardId;->getXmlId()I

    move-result v6

    invoke-direct {p0, p1, v6, p2}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Landroid/content/Context;ILcom/android/inputmethod/keyboard/KeyboardId;)V

    .line 57
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    .local v3, res:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 86
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    const/4 v5, -0x1

    .line 87
    .local v5, spaceKeyIndex:I
    const/4 v4, -0x1

    .line 88
    .local v4, shortcutKeyIndex:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 89
    .local v1, keyCount:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 91
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/keyboard/Key;

    iget v6, v6, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    sparse-switch v6, :sswitch_data_0

    .line 89
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :sswitch_0
    move v5, v0

    .line 94
    goto :goto_1

    .line 96
    :sswitch_1
    move v4, v0

    goto :goto_1

    .line 102
    :cond_0
    if-ltz v5, :cond_1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/keyboard/Key;

    :goto_2
    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    .line 103
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_3
    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    .line 104
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/Key;->getPreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_4
    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 105
    new-array v6, v9, [I

    const/4 v7, 0x0

    aput v5, v6, v7

    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKeyIndexArray:[I

    .line 107
    if-ltz v4, :cond_4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/inputmethod/keyboard/Key;

    :goto_5
    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    .line 108
    iget-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v6}, Lcom/android/inputmethod/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_6
    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    const v6, 0x7f090006

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextColor:I

    .line 111
    iget v6, p2, Lcom/android/inputmethod/keyboard/KeyboardId;->mColorScheme:I

    if-ne v6, v9, :cond_6

    .line 112
    const v6, 0x7f090005

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextShadowColor:I

    .line 114
    const v6, 0x7f020085

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    :goto_7
    const v6, 0x7f0200bd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceAutoCorrectionIndicator:Landroid/graphics/drawable/Drawable;

    .line 121
    const v6, 0x7f020095

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    .line 122
    const v6, 0x7f020096

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    .line 123
    const v6, 0x7f0b0017

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarVerticalCorrection:I

    .line 125
    return-void

    :cond_1
    move-object v6, v8

    .line 102
    goto :goto_2

    :cond_2
    move-object v6, v8

    .line 103
    goto :goto_3

    :cond_3
    move-object v6, v8

    .line 104
    goto :goto_4

    :cond_4
    move-object v6, v8

    .line 107
    goto :goto_5

    :cond_5
    move-object v6, v8

    .line 108
    goto :goto_6

    .line 116
    :cond_6
    const v6, 0x7f090004

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextShadowColor:I

    .line 118
    const v6, 0x7f0200c1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    .line 91
    nop

    :sswitch_data_0
    .sparse-switch
        -0x66 -> :sswitch_1
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private drawSpacebar(IZ)Landroid/graphics/Bitmap;
    .locals 29
    .parameter "opacity"
    .parameter "isAutoCorrection"

    .prologue
    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    move-object v6, v0

    iget v9, v6, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    .line 228
    .local v9, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    move v10, v6

    .line 229
    .local v10, height:I
    :goto_0
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 230
    .local v15, buffer:Landroid/graphics/Bitmap;
    new-instance v16, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 231
    .local v16, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 232
    .local v22, res:Landroid/content/res/Resources;
    const v6, 0x7f090003

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v16

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 234
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v23

    .line 236
    .local v23, subtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;
    invoke-virtual/range {v23 .. v23}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->needsToDisplayLanguage()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 237
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 238
    .local v5, paint:Landroid/graphics/Paint;
    move-object v0, v5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 239
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 240
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 242
    const v6, 0x7f0c0001

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v11, "small"

    aput-object v11, v7, v8

    move-object/from16 v0, v22

    move v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 247
    .local v25, textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    const-string v6, "medium"

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 248
    const v26, 0x1030044

    .line 249
    .local v26, textStyle:I
    const/16 v17, 0x12

    .line 255
    .local v17, defaultTextSize:I
    :goto_1
    const/4 v13, 0x1

    .line 256
    .local v13, allowVariableTextSize:Z
    invoke-virtual/range {v23 .. v23}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextSizeFromTheme(Landroid/content/res/Resources$Theme;II)I

    move-result v11

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static/range {v5 .. v12}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->layoutSpacebar(Landroid/graphics/Paint;Ljava/util/Locale;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFZ)Ljava/lang/String;

    move-result-object v21

    .line 264
    .local v21, language:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v18

    .line 265
    .local v18, descent:F
    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    neg-float v6, v6

    add-float v24, v6, v18

    .line 266
    .local v24, textHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_4

    int-to-float v6, v10

    const v7, 0x3f19999a

    mul-float/2addr v6, v7

    move v14, v6

    .line 268
    .local v14, baseline:F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextShadowColor:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    move v7, v0

    invoke-static {v6, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpacebarTextColor(IF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    div-int/lit8 v6, v9, 0x2

    int-to-float v6, v6

    sub-float v7, v14, v18

    const/high16 v8, 0x3f80

    sub-float/2addr v7, v8

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move v2, v6

    move v3, v7

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextColor:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    move v7, v0

    invoke-static {v6, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getSpacebarTextColor(IF)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    div-int/lit8 v6, v9, 0x2

    int-to-float v6, v6

    sub-float v7, v14, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move v2, v6

    move v3, v7

    move-object v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 274
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->useSpacebarLanguageSwitcher()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual/range {v23 .. v23}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mButtonArrowLeftIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mButtonArrowRightIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 282
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v13           #allowVariableTextSize:Z
    .end local v14           #baseline:F
    .end local v17           #defaultTextSize:I
    .end local v18           #descent:F
    .end local v21           #language:Ljava/lang/String;
    .end local v24           #textHeight:F
    .end local v25           #textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    .end local v26           #textStyle:I
    :cond_0
    if-eqz p2, :cond_5

    .line 283
    mul-int/lit8 v6, v9, 0x50

    div-int/lit8 v20, v6, 0x64

    .line 284
    .local v20, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceAutoCorrectionIndicator:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    .line 285
    .local v19, iconHeight:I
    sub-int v6, v9, v20

    div-int/lit8 v27, v6, 0x2

    .line 286
    .local v27, x:I
    sub-int v28, v10, v19

    .line 287
    .local v28, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceAutoCorrectionIndicator:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    add-int v7, v27, v20

    add-int v8, v28, v19

    move-object v0, v6

    move/from16 v1, v27

    move/from16 v2, v28

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceAutoCorrectionIndicator:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 297
    .end local v19           #iconHeight:I
    .end local v20           #iconWidth:I
    .end local v27           #x:I
    .end local v28           #y:I
    :cond_1
    :goto_3
    return-object v15

    .line 228
    .end local v10           #height:I
    .end local v15           #buffer:Landroid/graphics/Bitmap;
    .end local v16           #canvas:Landroid/graphics/Canvas;
    .end local v22           #res:Landroid/content/res/Resources;
    .end local v23           #subtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    move-object v6, v0

    iget v6, v6, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    move v10, v6

    goto/16 :goto_0

    .line 251
    .restart local v5       #paint:Landroid/graphics/Paint;
    .restart local v10       #height:I
    .restart local v15       #buffer:Landroid/graphics/Bitmap;
    .restart local v16       #canvas:Landroid/graphics/Canvas;
    .restart local v22       #res:Landroid/content/res/Resources;
    .restart local v23       #subtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;
    .restart local v25       #textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    :cond_3
    const v26, 0x1030046

    .line 252
    .restart local v26       #textStyle:I
    const/16 v17, 0xe

    .restart local v17       #defaultTextSize:I
    goto/16 :goto_1

    .line 266
    .restart local v13       #allowVariableTextSize:Z
    .restart local v18       #descent:F
    .restart local v21       #language:Ljava/lang/String;
    .restart local v24       #textHeight:F
    :cond_4
    div-int/lit8 v6, v10, 0x2

    int-to-float v6, v6

    const/high16 v7, 0x4000

    div-float v7, v24, v7

    add-float/2addr v6, v7

    move v14, v6

    goto/16 :goto_2

    .line 289
    .end local v5           #paint:Landroid/graphics/Paint;
    .end local v13           #allowVariableTextSize:Z
    .end local v17           #defaultTextSize:I
    .end local v18           #descent:F
    .end local v21           #language:Ljava/lang/String;
    .end local v24           #textHeight:F
    .end local v25           #textSizeOfLanguageOnSpacebar:Ljava/lang/String;
    .end local v26           #textStyle:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    .line 291
    .restart local v20       #iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    .line 292
    .restart local v19       #iconHeight:I
    sub-int v6, v9, v20

    div-int/lit8 v27, v6, 0x2

    .line 293
    .restart local v27       #x:I
    sub-int v28, v10, v19

    .line 294
    .restart local v28       #y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    add-int v7, v27, v20

    add-int v8, v28, v19

    move-object v0, v6

    move/from16 v1, v27

    move/from16 v2, v28

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3
.end method

.method private static getSpacebarTextColor(IF)I
    .locals 5
    .parameter "color"
    .parameter "fadeFactor"

    .prologue
    .line 135
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 137
    .local v0, newColor:I
    return v0
.end method

.method private static getTextSizeFromTheme(Landroid/content/res/Resources$Theme;II)I
    .locals 5
    .parameter "theme"
    .parameter "style"
    .parameter "defValue"

    .prologue
    const/4 v4, 0x0

    .line 385
    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010095

    aput v3, v2, v4

    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 387
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 388
    .local v1, textSize:I
    return v1
.end method

.method private static getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I
    .locals 2
    .parameter "paint"
    .parameter "text"
    .parameter "textSize"
    .parameter "bounds"

    .prologue
    .line 178
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 180
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method private static layoutSpacebar(Landroid/graphics/Paint;Ljava/util/Locale;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIFZ)Ljava/lang/String;
    .locals 14
    .parameter "paint"
    .parameter "locale"
    .parameter "lArrow"
    .parameter "rArrow"
    .parameter "width"
    .parameter "height"
    .parameter "origTextSize"
    .parameter "allowVariableTextSize"

    .prologue
    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v6, v5

    .line 188
    .local v6, arrowWidth:F
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    .line 189
    .local v5, arrowHeight:F
    move/from16 v0, p4

    int-to-float v0, v0

    move v7, v0

    add-float v8, v6, v6

    sub-float v9, v7, v8

    .line 190
    .local v9, maxTextWidth:F
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 193
    .local v7, bounds:Landroid/graphics/Rect;
    const/4 v8, 0x1

    invoke-static {p1, v8}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getFullDisplayName(Ljava/util/Locale;Z)Ljava/lang/String;

    move-result-object v8

    .line 194
    .local v8, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, v8

    move/from16 v2, p6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result v11

    .line 196
    .local v11, textWidth:I
    int-to-float v10, v11

    div-float v10, v9, v10

    const/high16 v12, 0x3f80

    invoke-static {v10, v12}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v10, v10, p6

    .line 199
    .local v10, textSize:F
    if-eqz p7, :cond_2

    .line 200
    invoke-static {p0, v8, v10, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result p7

    .line 202
    .end local v11           #textWidth:I
    .local p7, textWidth:I
    div-float v11, v10, p6

    const v12, 0x3f4ccccd

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_0

    move/from16 v0, p7

    int-to-float v0, v0

    move v11, v0

    cmpl-float v11, v11, v9

    if-lez v11, :cond_1

    :cond_0
    const/4 v11, 0x1

    .local v11, useShortName:Z
    :goto_0
    move v13, v10

    .end local v10           #textSize:F
    .local v13, textSize:F
    move/from16 v10, p7

    .end local p7           #textWidth:I
    .local v10, textWidth:I
    move/from16 p7, v13

    .line 208
    .end local v11           #useShortName:Z
    .end local v13           #textSize:F
    .local p7, textSize:F
    :goto_1
    if-eqz v11, :cond_4

    .line 209
    invoke-static {p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getShortDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 210
    .end local v8           #language:Ljava/lang/String;
    .local p1, language:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;FLandroid/graphics/Rect;)I

    move-result p7

    .line 211
    .end local v10           #textWidth:I
    .local p7, textWidth:I
    move/from16 v0, p7

    int-to-float v0, v0

    move v7, v0

    div-float v7, v9, v7

    const/high16 v8, 0x3f80

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    .end local v7           #bounds:Landroid/graphics/Rect;
    move-result v7

    mul-float p6, p6, v7

    .line 213
    .local p6, textSize:F
    :goto_2
    move-object v0, p0

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 216
    move/from16 v0, p5

    int-to-float v0, v0

    move p0, v0

    const p5, 0x3f19999a

    mul-float p0, p0, p5

    .line 217
    .local p0, baseline:F
    sub-float p5, p0, v5

    move/from16 v0, p5

    float-to-int v0, v0

    move/from16 p5, v0

    .line 218
    .local p5, top:I
    sub-int p4, p4, p7

    div-int/lit8 p4, p4, 0x2

    .end local p4
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 p4, v0

    .line 219
    .local p4, remains:F
    sub-float p6, p4, v6

    move/from16 v0, p6

    float-to-int v0, v0

    move/from16 p6, v0

    move/from16 v0, p4

    float-to-int v0, v0

    move v5, v0

    float-to-int v7, p0

    move-object/from16 v0, p2

    move/from16 v1, p6

    move/from16 v2, p5

    move v3, v5

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 220
    .end local v5           #arrowHeight:F
    .end local p6           #textSize:F
    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 p2, v0

    add-float p2, p2, p4

    move/from16 v0, p2

    float-to-int v0, v0

    move/from16 p2, v0

    move/from16 v0, p7

    int-to-float v0, v0

    move/from16 p6, v0

    add-float p4, p4, p6

    add-float p4, p4, v6

    move/from16 v0, p4

    float-to-int v0, v0

    move/from16 p4, v0

    float-to-int p0, p0

    move-object/from16 v0, p3

    move/from16 v1, p2

    move/from16 v2, p5

    move/from16 v3, p4

    move v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    .end local p0           #baseline:F
    .end local p2
    .end local p4           #remains:F
    return-object p1

    .line 202
    .restart local v5       #arrowHeight:F
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v8       #language:Ljava/lang/String;
    .local v10, textSize:F
    .local p0, paint:Landroid/graphics/Paint;
    .local p1, locale:Ljava/util/Locale;
    .restart local p2
    .local p4, width:I
    .local p5, height:I
    .local p6, origTextSize:F
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 205
    .local v11, textWidth:I
    .local p7, allowVariableTextSize:Z
    :cond_2
    move v0, v11

    int-to-float v0, v0

    move/from16 p7, v0

    cmpl-float p7, p7, v9

    if-lez p7, :cond_3

    .end local p7           #allowVariableTextSize:Z
    const/16 p7, 0x1

    move/from16 v10, p7

    .line 206
    .local v10, useShortName:Z
    :goto_3
    move/from16 p7, p6

    .local p7, textSize:F
    move v13, v10

    .local v13, useShortName:I
    move v10, v11

    .end local v11           #textWidth:I
    .local v10, textWidth:I
    move v11, v13

    .end local v13           #useShortName:I
    .local v11, useShortName:I
    goto/16 :goto_1

    .line 205
    .end local p7           #textSize:F
    .local v10, textSize:F
    .local v11, textWidth:I
    :cond_3
    const/16 p7, 0x0

    move/from16 v10, p7

    goto :goto_3

    .end local v11           #textWidth:I
    .local v10, textWidth:I
    .restart local p7       #textSize:F
    :cond_4
    move/from16 p6, p7

    .end local p7           #textSize:F
    .local p6, textSize:F
    move-object p1, v8

    .end local v8           #language:Ljava/lang/String;
    .local p1, language:Ljava/lang/String;
    move/from16 p7, v10

    .end local v10           #textWidth:I
    .local p7, textWidth:I
    goto :goto_2
.end method

.method private updateLocaleDrag(I)V
    .locals 6
    .parameter "diff"

    .prologue
    const/4 v5, 0x0

    .line 301
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;

    if-nez v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget v2, v2, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getMinWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 304
    .local v1, width:I
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 305
    .local v0, height:I
    new-instance v2, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;II)V

    iput-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;

    .line 307
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;

    invoke-virtual {v2, v5, v5, v1, v0}, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->setBounds(IIII)V

    .line 308
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    .line 310
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;

    invoke-virtual {v2, p1}, Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;->setDiff(I)V

    .line 311
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 312
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacePreviewIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    .line 316
    :goto_0
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Key;->getPreviewIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 317
    return-void

    .line 314
    :cond_1
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSlidingLocaleIcon:Lcom/android/inputmethod/keyboard/SlidingLocaleDrawable;

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/keyboard/Key;->setPreviewIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateSpacebarForLocale(Z)V
    .locals 4
    .parameter "isAutoCorrection"

    .prologue
    const/16 v3, 0xff

    .line 158
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    if-nez v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 162
    .local v0, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->needsToDisplayLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v3, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->drawSpacebar(IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 167
    :cond_1
    if-eqz p1, :cond_2

    .line 168
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v3, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->drawSpacebar(IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 171
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget-object v2, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getLanguageChangeDirection()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 320
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v0

    if-le v0, v3, :cond_0

    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    iget v1, v1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 322
    :cond_0
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getNearestKeys(II)[I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 375
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKeyIndexArray:[I

    .line 379
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getMinWidth()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getHeight()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Lcom/android/inputmethod/keyboard/Keyboard;->getNearestKeys(II)[I

    move-result-object v0

    goto :goto_0
.end method

.method public isInside(Lcom/android/inputmethod/keyboard/Key;II)Z
    .locals 8
    .parameter "key"
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 341
    move v3, p2

    .line 342
    .local v3, x:I
    move v4, p3

    .line 343
    .local v4, y:I
    iget v0, p1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 344
    .local v0, code:I
    const/16 v5, 0x20

    if-ne v0, v5, :cond_3

    .line 345
    iget v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarVerticalCorrection:I

    add-int/2addr v4, v5

    .line 346
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->useSpacebarLanguageSwitcher()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledKeyboardLocaleCount()I

    move-result v5

    if-le v5, v6, :cond_3

    .line 348
    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v5, :cond_1

    .line 349
    iget v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDragStartX:I

    sub-int v1, v3, v5

    .line 350
    .local v1, diff:I
    iget v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lez v5, :cond_0

    .line 351
    invoke-direct {p0, v1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateLocaleDrag(I)V

    .line 353
    :cond_0
    iput v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    move v5, v6

    .line 370
    .end local v1           #diff:I
    :goto_0
    return v5

    .line 356
    :cond_1
    invoke-virtual {p1, v3, v4}, Lcom/android/inputmethod/keyboard/Key;->isOnKey(II)Z

    move-result v2

    .line 357
    .local v2, isOnSpace:Z
    if-eqz v2, :cond_2

    .line 358
    iput-boolean v6, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    .line 359
    iput v3, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDragStartX:I

    .line 360
    invoke-direct {p0, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateLocaleDrag(I)V

    :cond_2
    move v5, v2

    .line 362
    goto :goto_0

    .line 368
    .end local v2           #isOnSpace:Z
    :cond_3
    iget-boolean v5, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    if-eqz v5, :cond_4

    move v5, v7

    goto :goto_0

    .line 370
    :cond_4
    invoke-virtual {p1, v3, v4}, Lcom/android/inputmethod/keyboard/Key;->isOnKey(II)Z

    move-result v5

    goto :goto_0
.end method

.method public keyReleased()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mCurrentlyInSpace:Z

    .line 329
    iput v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceDragLastDiff:I

    .line 330
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz v0, :cond_0

    .line 331
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateLocaleDrag(I)V

    .line 333
    :cond_0
    return-void
.end method

.method public onAutoCorrectionStateChanged(Z)Lcom/android/inputmethod/keyboard/Key;
    .locals 1
    .parameter "isAutoCorrection"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateSpacebarForLocale(Z)V

    .line 154
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    return-object v0
.end method

.method public setSpacebarTextFadeFactor(FLcom/android/inputmethod/keyboard/LatinKeyboardView;)V
    .locals 1
    .parameter "fadeFactor"
    .parameter "view"

    .prologue
    .line 128
    iput p1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpacebarTextFadeFactor:F

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->updateSpacebarForLocale(Z)V

    .line 130
    if-eqz p2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mSpaceKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {p2, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    .line 132
    :cond_0
    return-void
.end method

.method public updateShortcutKey(ZLcom/android/inputmethod/keyboard/LatinKeyboardView;)V
    .locals 2
    .parameter "available"
    .parameter "view"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    iput-boolean p1, v0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 144
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mEnabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 145
    if-eqz p2, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mShortcutKey:Lcom/android/inputmethod/keyboard/Key;

    invoke-virtual {p2, v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->invalidateKey(Lcom/android/inputmethod/keyboard/Key;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mDisabledShortcutIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method
