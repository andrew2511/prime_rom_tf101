.class public Lcom/android/inputmethod/keyboard/Key;
.super Ljava/lang/Object;
.source "Key.java"


# static fields
.field private static final KEY_STATE_FUNCTIONAL_NORMAL:[I

.field private static final KEY_STATE_FUNCTIONAL_PRESSED:[I

.field private static final KEY_STATE_NORMAL:[I

.field private static final KEY_STATE_NORMAL_OFF:[I

.field private static final KEY_STATE_NORMAL_ON:[I

.field private static final KEY_STATE_PRESSED:[I

.field private static final KEY_STATE_PRESSED_OFF:[I

.field private static final KEY_STATE_PRESSED_ON:[I


# instance fields
.field public final mCode:I

.field public final mEdgeFlags:I

.field public mEnabled:Z

.field public final mGap:I

.field public final mHeight:I

.field public final mHintIcon:Landroid/graphics/drawable/Drawable;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mLabelOption:I

.field public final mManualTemporaryUpperCaseCode:I

.field public final mManualTemporaryUpperCaseHintIcon:Landroid/graphics/drawable/Drawable;

.field public final mMaxPopupColumn:I

.field public final mModifier:Z

.field public mOn:Z

.field public final mOutputText:Ljava/lang/CharSequence;

.field public final mPopupCharacters:[Ljava/lang/CharSequence;

.field public mPressed:Z

.field private mPreviewIcon:Landroid/graphics/drawable/Drawable;

.field public final mRepeatable:Z

.field public final mSticky:Z

.field public final mWidth:I

.field public final mX:I

.field public final mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_ON:[I

    .line 106
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_ON:[I

    .line 112
    new-array v0, v3, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_OFF:[I

    .line 116
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_OFF:[I

    .line 121
    new-array v0, v2, [I

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL:[I

    .line 124
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED:[I

    .line 129
    new-array v0, v3, [I

    const v1, 0x10100a3

    aput v1, v0, v2

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    .line 134
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    return-void

    .line 101
    :array_0
    .array-data 0x4
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 106
    :array_1
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
        0xa0t 0x0t 0x1t 0x1t
    .end array-data

    .line 116
    :array_2
    .array-data 0x4
        0xa7t 0x0t 0x1t 0x1t
        0x9ft 0x0t 0x1t 0x1t
    .end array-data

    .line 134
    :array_3
    .array-data 0x4
        0xa3t 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/Keyboard;Ljava/lang/CharSequence;IIIII)V
    .locals 4
    .parameter "res"
    .parameter "keyboard"
    .parameter "popupCharacter"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "edgeFlags"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 144
    iput-object p2, p0, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 145
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->getVerticalGap()I

    move-result v1

    sub-int v1, p7, v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    .line 146
    invoke-virtual {p2}, Lcom/android/inputmethod/keyboard/Keyboard;->getHorizontalGap()I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    .line 147
    iget v1, p0, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    sub-int v1, p6, v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    .line 148
    iput p8, p0, Lcom/android/inputmethod/keyboard/Key;->mEdgeFlags:I

    .line 149
    iput-object v3, p0, Lcom/android/inputmethod/keyboard/Key;->mHintIcon:Landroid/graphics/drawable/Drawable;

    .line 150
    iput-object v3, p0, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseHintIcon:Landroid/graphics/drawable/Drawable;

    .line 151
    iput v2, p0, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseCode:I

    .line 152
    iput v2, p0, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    .line 153
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/Key;->mModifier:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/Key;->mSticky:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/inputmethod/keyboard/Key;->mRepeatable:Z

    .line 156
    iput-object v3, p0, Lcom/android/inputmethod/keyboard/Key;->mPopupCharacters:[Ljava/lang/CharSequence;

    .line 157
    iput v2, p0, Lcom/android/inputmethod/keyboard/Key;->mMaxPopupColumn:I

    .line 158
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, popupSpecification:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    .line 160
    invoke-static {v0}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getOutputText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    .line 161
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getCode(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 162
    invoke-static {p1, v0}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 164
    iget v1, p0, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p4

    iput v1, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    .line 165
    iput p5, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/Row;IILandroid/content/res/XmlResourceParser;Lcom/android/inputmethod/keyboard/KeyStyles;)V
    .locals 17
    .parameter "res"
    .parameter "row"
    .parameter "x"
    .parameter "y"
    .parameter "parser"
    .parameter "keyStyles"

    .prologue
    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 181
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/keyboard/Row;->getKeyboard()Lcom/android/inputmethod/keyboard/Keyboard;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 183
    invoke-static/range {p5 .. p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    sget-object v15, Lcom/android/inputmethod/latin/R$styleable;->Keyboard:[I

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 187
    .local v8, keyboardAttr:Landroid/content/res/TypedArray;
    const/4 v14, 0x3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/inputmethod/keyboard/Keyboard;->getKeyboardHeight()I

    move-result v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/Row;->mDefaultHeight:I

    move/from16 v16, v0

    move-object v0, v8

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v14

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/Row;->mVerticalGap:I

    move v15, v0

    sub-int/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    .line 190
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/inputmethod/keyboard/Keyboard;->getDisplayWidth()I

    move-result v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/Row;->mDefaultHorizontalGap:I

    move/from16 v16, v0

    move-object v0, v8

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    .line 193
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/inputmethod/keyboard/Keyboard;->getDisplayWidth()I

    move-result v15

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/Row;->mDefaultWidth:I

    move/from16 v16, v0

    move-object v0, v8

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v6

    .line 197
    .local v6, keyWidth:I
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 200
    invoke-static/range {p5 .. p5}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    sget-object v15, Lcom/android/inputmethod/latin/R$styleable;->Keyboard_Key:[I

    move-object/from16 v0, p1

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 204
    .local v5, keyAttr:Landroid/content/res/TypedArray;
    const/16 v14, 0xf

    :try_start_1
    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 205
    const/16 v14, 0xf

    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 206
    .local v13, styleName:Ljava/lang/String;
    move-object/from16 v0, p6

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/keyboard/KeyStyles;->getKeyStyle(Ljava/lang/String;)Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;

    move-result-object v12

    .line 207
    .local v12, style:Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;
    if-nez v12, :cond_1

    .line 208
    new-instance v14, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown key style: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardParser$ParseException;-><init>(Ljava/lang/String;Landroid/content/res/XmlResourceParser;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    .end local v12           #style:Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;
    .end local v13           #styleName:Ljava/lang/String;
    :catchall_0
    move-exception v14

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw v14

    .line 197
    .end local v5           #keyAttr:Landroid/content/res/TypedArray;
    .end local v6           #keyWidth:I
    :catchall_1
    move-exception v14

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    throw v14

    .line 210
    .restart local v5       #keyAttr:Landroid/content/res/TypedArray;
    .restart local v6       #keyWidth:I
    :cond_0
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Lcom/android/inputmethod/keyboard/KeyStyles;->getEmptyKeyStyle()Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;

    move-result-object v12

    .line 213
    .restart local v12       #style:Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/inputmethod/keyboard/Keyboard;->getDisplayWidth()I

    move-result v9

    .line 214
    .local v9, keyboardWidth:I
    const/16 v14, 0x12

    move-object v0, v5

    move v1, v14

    move v2, v9

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/inputmethod/keyboard/KeyboardParser;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v7

    .line 216
    .local v7, keyXPos:I
    if-gez v7, :cond_2

    .line 218
    add-int/2addr v7, v9

    .line 220
    :cond_2
    move v0, v7

    move/from16 v1, p3

    if-ge v0, v1, :cond_3

    .line 223
    move/from16 v7, p3

    .line 225
    :cond_3
    if-nez v6, :cond_6

    .line 228
    sub-int v6, v9, v7

    .line 238
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    move v14, v0

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v7

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mX:I

    .line 239
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mY:I

    .line 240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    move v14, v0

    sub-int v14, v6, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    .line 242
    const/4 v14, 0x1

    invoke-interface {v12, v5, v14}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getTextArray(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;

    move-result-object v10

    .line 244
    .local v10, popupCharacters:[Ljava/lang/CharSequence;
    const v14, 0x7f08000d

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 245
    move-object v0, v10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mPopupCharacters:[Ljava/lang/CharSequence;

    .line 249
    :goto_1
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/android/inputmethod/keyboard/Keyboard;->getMaxPopupKeyboardColumn()I

    move-result v15

    invoke-interface {v12, v8, v14, v15}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mMaxPopupColumn:I

    .line 253
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-interface {v12, v5, v14, v15}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/Key;->mRepeatable:Z

    .line 254
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-interface {v12, v5, v14, v15}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/Key;->mModifier:Z

    .line 255
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-interface {v12, v5, v14, v15}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/Key;->mSticky:Z

    .line 256
    const/16 v14, 0x11

    const/4 v15, 0x1

    invoke-interface {v12, v5, v14, v15}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getBoolean(Landroid/content/res/TypedArray;IZ)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    .line 257
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-interface {v12, v5, v14, v15}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getFlag(Landroid/content/res/TypedArray;II)I

    move-result v14

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/inputmethod/keyboard/Row;->mRowEdgeFlags:I

    move v15, v0

    or-int/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mEdgeFlags:I

    .line 260
    const/4 v14, 0x7

    invoke-interface {v12, v5, v14}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mPreviewIcon:Landroid/graphics/drawable/Drawable;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/inputmethod/keyboard/Keyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 262
    const/16 v14, 0xc

    invoke-interface {v12, v5, v14}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/inputmethod/keyboard/Keyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 264
    const/16 v14, 0xd

    invoke-interface {v12, v5, v14}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mHintIcon:Landroid/graphics/drawable/Drawable;

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mHintIcon:Landroid/graphics/drawable/Drawable;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/inputmethod/keyboard/Keyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 266
    const/16 v14, 0xe

    invoke-interface {v12, v5, v14}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseHintIcon:Landroid/graphics/drawable/Drawable;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseHintIcon:Landroid/graphics/drawable/Drawable;

    move-object v14, v0

    invoke-static {v14}, Lcom/android/inputmethod/keyboard/Keyboard;->setDefaultBounds(Landroid/graphics/drawable/Drawable;)V

    .line 270
    const/16 v14, 0x9

    invoke-interface {v12, v5, v14}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    .line 271
    const/16 v14, 0xa

    const/4 v15, 0x0

    invoke-interface {v12, v5, v14, v15}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getFlag(Landroid/content/res/TypedArray;II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mLabelOption:I

    .line 272
    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-interface {v12, v5, v14, v15}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mManualTemporaryUpperCaseCode:I

    .line 274
    const/16 v14, 0x8

    invoke-interface {v12, v5, v14}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getText(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mOutputText:Ljava/lang/CharSequence;

    .line 277
    const/4 v14, 0x0

    const/16 v15, -0x63

    invoke-interface {v12, v5, v14, v15}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getInt(Landroid/content/res/TypedArray;II)I

    move-result v4

    .line 279
    .local v4, code:I
    const/16 v14, -0x63

    if-ne v4, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object v14, v0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mLabel:Ljava/lang/CharSequence;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    .line 287
    :goto_2
    const/16 v14, 0x10

    invoke-interface {v12, v5, v14}, Lcom/android/inputmethod/keyboard/KeyStyles$KeyStyle;->getDrawable(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 289
    .local v11, shiftedIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_5

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/inputmethod/keyboard/Keyboard;->getShiftedIcons()Ljava/util/Map;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    :cond_5
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    return-void

    .line 229
    .end local v4           #code:I
    .end local v10           #popupCharacters:[Ljava/lang/CharSequence;
    .end local v11           #shiftedIcon:Landroid/graphics/drawable/Drawable;
    :cond_6
    if-gez v6, :cond_4

    .line 233
    move/from16 v7, p3

    .line 234
    sub-int v6, v9, v7

    goto/16 :goto_0

    .line 247
    .restart local v10       #popupCharacters:[Ljava/lang/CharSequence;
    :cond_7
    :try_start_3
    invoke-static {v10}, Lcom/android/inputmethod/keyboard/Key;->filterOutDigitPopupCharacters([Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/keyboard/Key;->mPopupCharacters:[Ljava/lang/CharSequence;

    goto/16 :goto_1

    .line 281
    .restart local v4       #code:I
    :cond_8
    const/16 v14, -0x63

    if-eq v4, v14, :cond_9

    .line 282
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I

    goto :goto_2

    .line 284
    :cond_9
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/keyboard/Key;->mCode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private static filterOutDigitPopupCharacters([Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 7
    .parameter "popupCharacters"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 301
    if-eqz p0, :cond_0

    array-length v4, p0

    if-ge v4, v6, :cond_1

    :cond_0
    move-object v4, v5

    .line 323
    .end local p0
    :goto_0
    return-object v4

    .line 303
    .restart local p0
    :cond_1
    array-length v4, p0

    if-ne v4, v6, :cond_2

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/inputmethod/keyboard/Key;->isDigitPopupCharacter(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v5

    .line 305
    goto :goto_0

    .line 306
    :cond_2
    const/4 v0, 0x0

    .line 307
    .local v0, filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_5

    .line 308
    aget-object v3, p0, v1

    .line 309
    .local v3, popupSpec:Ljava/lang/CharSequence;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/inputmethod/keyboard/Key;->isDigitPopupCharacter(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 310
    if-nez v0, :cond_4

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .restart local v0       #filtered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 313
    aget-object v4, p0, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 315
    .end local v2           #j:I
    :cond_3
    if-eqz v0, :cond_4

    .line 316
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    .end local v3           #popupSpec:Ljava/lang/CharSequence;
    :cond_5
    if-nez v0, :cond_6

    move-object v4, p0

    .line 320
    goto :goto_0

    .line 321
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_7

    move-object v4, v5

    .line 322
    goto :goto_0

    .line 323
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/CharSequence;

    move-object v4, p0

    goto :goto_0
.end method

.method private static isDigitPopupCharacter(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "label"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 297
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isFunctionalKey()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mSticky:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mModifier:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCurrentDrawableState()[I
    .locals 3

    .prologue
    .line 419
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/Key;->mEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 420
    .local v0, pressed:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/inputmethod/keyboard/Key;->isFunctionalKey()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 421
    if-eqz v0, :cond_1

    .line 422
    sget-object v2, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_PRESSED:[I

    .line 449
    :goto_1
    return-object v2

    .line 419
    .end local v0           #pressed:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 424
    .restart local v0       #pressed:Z
    :cond_1
    sget-object v2, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_FUNCTIONAL_NORMAL:[I

    goto :goto_1

    .line 428
    :cond_2
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL:[I

    .line 430
    .local v1, states:[I
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/Key;->mOn:Z

    if-eqz v2, :cond_5

    .line 431
    if-eqz v0, :cond_4

    .line 432
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_ON:[I

    :cond_3
    :goto_2
    move-object v2, v1

    .line 449
    goto :goto_1

    .line 434
    :cond_4
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_ON:[I

    goto :goto_2

    .line 437
    :cond_5
    iget-boolean v2, p0, Lcom/android/inputmethod/keyboard/Key;->mSticky:Z

    if-eqz v2, :cond_7

    .line 438
    if-eqz v0, :cond_6

    .line 439
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED_OFF:[I

    goto :goto_2

    .line 441
    :cond_6
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_NORMAL_OFF:[I

    goto :goto_2

    .line 444
    :cond_7
    if-eqz v0, :cond_3

    .line 445
    sget-object v1, Lcom/android/inputmethod/keyboard/Key;->KEY_STATE_PRESSED:[I

    goto :goto_2
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPreviewIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPreviewIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isInside(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/inputmethod/keyboard/Keyboard;->isInside(Lcom/android/inputmethod/keyboard/Key;II)Z

    move-result v0

    return v0
.end method

.method public isOnKey(II)Z
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 375
    iget v2, p0, Lcom/android/inputmethod/keyboard/Key;->mEdgeFlags:I

    .line 376
    .local v2, flags:I
    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_4

    move v4, v12

    .line 377
    .local v4, leftEdge:Z
    :goto_0
    and-int/lit8 v9, v2, 0x2

    if-eqz v9, :cond_5

    move v6, v12

    .line 378
    .local v6, rightEdge:Z
    :goto_1
    and-int/lit8 v9, v2, 0x4

    if-eqz v9, :cond_6

    move v8, v12

    .line 379
    .local v8, topEdge:Z
    :goto_2
    and-int/lit8 v9, v2, 0x8

    if-eqz v9, :cond_7

    move v1, v12

    .line 380
    .local v1, bottomEdge:Z
    :goto_3
    iget v9, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v10, p0, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    div-int/lit8 v10, v10, 0x2

    sub-int v3, v9, v10

    .line 381
    .local v3, left:I
    iget v9, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    add-int/2addr v9, v3

    iget v10, p0, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    add-int v5, v9, v10

    .line 382
    .local v5, right:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    .line 383
    .local v7, top:I
    iget v9, p0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    add-int/2addr v9, v7

    iget-object v10, p0, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v10}, Lcom/android/inputmethod/keyboard/Keyboard;->getVerticalGap()I

    move-result v10

    add-int v0, v9, v10

    .line 385
    .local v0, bottom:I
    if-ge p1, v3, :cond_0

    if-eqz v4, :cond_8

    :cond_0
    if-le p1, v5, :cond_1

    if-eqz v6, :cond_8

    :cond_1
    if-ge p2, v7, :cond_2

    if-eqz v8, :cond_8

    :cond_2
    if-le p2, v0, :cond_3

    if-eqz v1, :cond_8

    :cond_3
    move v9, v12

    :goto_4
    return v9

    .end local v0           #bottom:I
    .end local v1           #bottomEdge:Z
    .end local v3           #left:I
    .end local v4           #leftEdge:Z
    .end local v5           #right:I
    .end local v6           #rightEdge:Z
    .end local v7           #top:I
    .end local v8           #topEdge:Z
    :cond_4
    move v4, v11

    .line 376
    goto :goto_0

    .restart local v4       #leftEdge:Z
    :cond_5
    move v6, v11

    .line 377
    goto :goto_1

    .restart local v6       #rightEdge:Z
    :cond_6
    move v8, v11

    .line 378
    goto :goto_2

    .restart local v8       #topEdge:Z
    :cond_7
    move v1, v11

    .line 379
    goto :goto_3

    .restart local v0       #bottom:I
    .restart local v1       #bottomEdge:Z
    .restart local v3       #left:I
    .restart local v5       #right:I
    .restart local v7       #top:I
    :cond_8
    move v9, v11

    .line 385
    goto :goto_4
.end method

.method public onPressed()V
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    .line 349
    return-void

    .line 348
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReleased(Z)V
    .locals 3
    .parameter "inside"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 358
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    if-nez v0, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mPressed:Z

    .line 359
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mSticky:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/keyboard/Key;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v0, p0}, Lcom/android/inputmethod/keyboard/Keyboard;->isShiftLockEnabled(Lcom/android/inputmethod/keyboard/Key;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mOn:Z

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/inputmethod/keyboard/Key;->mOn:Z

    .line 361
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 358
    goto :goto_0

    :cond_2
    move v0, v1

    .line 360
    goto :goto_1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/Key;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 336
    return-void
.end method

.method public setPreviewIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/Key;->mPreviewIcon:Landroid/graphics/drawable/Drawable;

    .line 340
    return-void
.end method

.method public squaredDistanceToEdge(II)I
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 396
    iget v5, p0, Lcom/android/inputmethod/keyboard/Key;->mX:I

    .line 397
    .local v5, left:I
    iget v8, p0, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    add-int v6, v5, v8

    .line 398
    .local v6, right:I
    iget v7, p0, Lcom/android/inputmethod/keyboard/Key;->mY:I

    .line 399
    .local v7, top:I
    iget v8, p0, Lcom/android/inputmethod/keyboard/Key;->mHeight:I

    add-int v0, v7, v8

    .line 400
    .local v0, bottom:I
    if-ge p1, v5, :cond_0

    move v3, v5

    .line 401
    .local v3, edgeX:I
    :goto_0
    if-ge p2, v7, :cond_2

    move v4, v7

    .line 402
    .local v4, edgeY:I
    :goto_1
    sub-int v1, p1, v3

    .line 403
    .local v1, dx:I
    sub-int v2, p2, v4

    .line 404
    .local v2, dy:I
    mul-int v8, v1, v1

    mul-int v9, v2, v2

    add-int/2addr v8, v9

    return v8

    .line 400
    .end local v1           #dx:I
    .end local v2           #dy:I
    .end local v3           #edgeX:I
    .end local v4           #edgeY:I
    :cond_0
    if-le p1, v6, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, p1

    goto :goto_0

    .line 401
    .restart local v3       #edgeX:I
    :cond_2
    if-le p2, v0, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, p2

    goto :goto_1
.end method
