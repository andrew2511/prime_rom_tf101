.class public Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;
.super Ljava/lang/Object;
.source "MiniKeyboardBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;
    }
.end annotation


# instance fields
.field private final mKeyboard:Lcom/android/inputmethod/keyboard/MiniKeyboard;

.field private final mParams:Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;

.field private final mPopupCharacters:[Ljava/lang/CharSequence;

.field private final mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/inputmethod/keyboard/KeyboardView;ILcom/android/inputmethod/keyboard/Key;Lcom/android/inputmethod/keyboard/Keyboard;)V
    .locals 10
    .parameter "view"
    .parameter "layoutTemplateResId"
    .parameter "parentKey"
    .parameter "parentKeyboard"

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 187
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mRes:Landroid/content/res/Resources;

    .line 188
    new-instance v8, Lcom/android/inputmethod/keyboard/MiniKeyboard;

    const/4 v1, 0x0

    invoke-direct {v8, v7, p2, v1}, Lcom/android/inputmethod/keyboard/MiniKeyboard;-><init>(Landroid/content/Context;ILcom/android/inputmethod/keyboard/KeyboardId;)V

    .line 189
    .local v8, keyboard:Lcom/android/inputmethod/keyboard/MiniKeyboard;
    iput-object v8, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mKeyboard:Lcom/android/inputmethod/keyboard/MiniKeyboard;

    .line 190
    iget-object v1, p3, Lcom/android/inputmethod/keyboard/Key;->mPopupCharacters:[Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mPopupCharacters:[Ljava/lang/CharSequence;

    .line 192
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mPopupCharacters:[Ljava/lang/CharSequence;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->getKeyWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->getMaxKeyWidth(Lcom/android/inputmethod/keyboard/KeyboardView;[Ljava/lang/CharSequence;I)I

    move-result v3

    .line 193
    .local v3, keyWidth:I
    new-instance v0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mPopupCharacters:[Ljava/lang/CharSequence;

    array-length v1, v1

    iget v2, p3, Lcom/android/inputmethod/keyboard/Key;->mMaxPopupColumn:I

    invoke-virtual {p4}, Lcom/android/inputmethod/keyboard/Keyboard;->getRowHeight()I

    move-result v4

    iget v5, p3, Lcom/android/inputmethod/keyboard/Key;->mX:I

    iget v6, p3, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    iget v9, p3, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    add-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/android/inputmethod/keyboard/KeyboardView;->getMeasuredWidth()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;-><init>(IIIIII)V

    .line 198
    .local v0, params:Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;

    .line 200
    iget v1, v0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mRowHeight:I

    invoke-virtual {v8, v1}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->setRowHeight(I)V

    .line 201
    iget v1, v0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mNumRows:I

    iget v2, v0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mRowHeight:I

    mul-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->setHeight(I)V

    .line 202
    iget v1, v0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mNumColumns:I

    iget v2, v0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mKeyWidth:I

    mul-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->setMinWidth(I)V

    .line 203
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->getDefaultKeyCoordX()I

    move-result v1

    iget v2, v0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mKeyWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v8, v1}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->setDefaultCoordX(I)V

    .line 204
    return-void
.end method

.method private static getMaxKeyWidth(Lcom/android/inputmethod/keyboard/KeyboardView;[Ljava/lang/CharSequence;I)I
    .locals 8
    .parameter "view"
    .parameter "popupCharacters"
    .parameter "minKeyWidth"

    .prologue
    .line 208
    const/4 v3, 0x0

    .line 209
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v0, 0x0

    .line 210
    .local v0, bounds:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 211
    .local v2, maxWidth:I
    move-object p1, p1

    .local p1, arr$:[Ljava/lang/CharSequence;
    array-length v4, p1

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v5, v2

    .end local v2           #maxWidth:I
    .local v5, maxWidth:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v2, p1, v1

    .line 212
    .local v2, popupSpec:Ljava/lang/CharSequence;
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v2           #popupSpec:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/inputmethod/keyboard/PopupCharactersParser;->getLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, label:Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 215
    if-nez v3, :cond_0

    .line 216
    new-instance v3, Landroid/graphics/Paint;

    .end local v3           #paint:Landroid/graphics/Paint;
    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 217
    .restart local v3       #paint:Landroid/graphics/Paint;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    move-object v6, v3

    .line 219
    .end local v3           #paint:Landroid/graphics/Paint;
    .local v6, paint:Landroid/graphics/Paint;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v6}, Lcom/android/inputmethod/keyboard/KeyboardView;->getLabelSizeAndSetPaint(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result v3

    .line 220
    .local v3, labelSize:I
    int-to-float v3, v3

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 221
    .end local v3           #labelSize:I
    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    .end local v0           #bounds:Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 222
    .restart local v0       #bounds:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .end local v2           #label:Ljava/lang/CharSequence;
    invoke-virtual {v6, v3, v7, v2, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 223
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v5, v2, :cond_3

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .end local v5           #maxWidth:I
    .local v2, maxWidth:I
    move-object v3, v6

    .line 211
    .end local v6           #paint:Landroid/graphics/Paint;
    .local v3, paint:Landroid/graphics/Paint;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v5, v2

    .end local v2           #maxWidth:I
    .restart local v5       #maxWidth:I
    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0008

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .end local p1           #arr$:[Ljava/lang/CharSequence;
    move-result p0

    float-to-int p0, p0

    .line 229
    .local p0, horizontalPadding:I
    add-int/2addr p0, v5

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .end local p0           #horizontalPadding:I
    move-result p0

    return p0

    .end local v3           #paint:Landroid/graphics/Paint;
    .restart local v6       #paint:Landroid/graphics/Paint;
    .local p0, view:Lcom/android/inputmethod/keyboard/KeyboardView;
    .restart local p1       #arr$:[Ljava/lang/CharSequence;
    :cond_3
    move v2, v5

    .end local v5           #maxWidth:I
    .restart local v2       #maxWidth:I
    move-object v3, v6

    .end local v6           #paint:Landroid/graphics/Paint;
    .restart local v3       #paint:Landroid/graphics/Paint;
    goto :goto_1

    .local v2, label:Ljava/lang/CharSequence;
    .restart local v5       #maxWidth:I
    :cond_4
    move v2, v5

    .end local v5           #maxWidth:I
    .local v2, maxWidth:I
    goto :goto_1
.end method


# virtual methods
.method public build()Lcom/android/inputmethod/keyboard/MiniKeyboard;
    .locals 13

    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mKeyboard:Lcom/android/inputmethod/keyboard/MiniKeyboard;

    .line 234
    .local v2, keyboard:Lcom/android/inputmethod/keyboard/MiniKeyboard;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->getKeys()Ljava/util/List;

    move-result-object v9

    .line 235
    .local v9, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    iget-object v11, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mParams:Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;

    .line 236
    .local v11, params:Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;
    const/4 v10, 0x0

    .local v10, n:I
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mPopupCharacters:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v10, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mPopupCharacters:[Ljava/lang/CharSequence;

    aget-object v3, v1, v10

    .line 238
    .local v3, label:Ljava/lang/CharSequence;
    iget v1, v11, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mNumColumns:I

    div-int v12, v10, v1

    .line 239
    .local v12, row:I
    new-instance v0, Lcom/android/inputmethod/keyboard/Key;

    iget-object v1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v11, v10, v12}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->getX(II)I

    move-result v4

    invoke-virtual {v11, v12}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->getY(I)I

    move-result v5

    iget v6, v11, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mKeyWidth:I

    iget v7, v11, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->mRowHeight:I

    invoke-virtual {v11, v12}, Lcom/android/inputmethod/keyboard/MiniKeyboardBuilder$MiniKeyboardLayoutParams;->getRowFlags(I)I

    move-result v8

    invoke-direct/range {v0 .. v8}, Lcom/android/inputmethod/keyboard/Key;-><init>(Landroid/content/res/Resources;Lcom/android/inputmethod/keyboard/Keyboard;Ljava/lang/CharSequence;IIIII)V

    .line 241
    .local v0, key:Lcom/android/inputmethod/keyboard/Key;
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 243
    .end local v0           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v3           #label:Ljava/lang/CharSequence;
    .end local v12           #row:I
    :cond_0
    return-object v2
.end method
