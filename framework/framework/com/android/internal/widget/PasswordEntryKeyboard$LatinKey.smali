.class Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "PasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PasswordEntryKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .registers 7
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    .line 225
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    .line 226
    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupResId:I

    .line 230
    :cond_15
    return-void
.end method


# virtual methods
.method enableShiftLock()V
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    .line 238
    return-void
.end method

.method public isInside(II)Z
    .registers 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x5

    .line 254
    iget-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    if-nez v1, :cond_9

    move v1, v4

    .line 265
    :goto_8
    return v1

    .line 257
    :cond_9
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    aget v0, v1, v4

    .line 258
    .local v0, code:I
    if-eq v0, v3, :cond_11

    if-ne v0, v2, :cond_29

    .line 259
    :cond_11
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    .line 260
    if-ne v0, v3, :cond_1d

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v1

    .line 261
    :cond_1d
    if-ne v0, v2, :cond_24

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr p1, v1

    .line 265
    :cond_24
    :goto_24
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v1

    goto :goto_8

    .line 262
    :cond_29
    const/16 v1, 0x20

    if-ne v0, v1, :cond_24

    .line 263
    sget v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p2, v1

    goto :goto_24
.end method

.method public onReleased(Z)V
    .registers 3
    .parameter "inside"

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_8

    .line 243
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 247
    :goto_7
    return-void

    .line 245
    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->pressed:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->pressed:Z

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_d
.end method

.method setEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 233
    iput-boolean p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    .line 234
    return-void
.end method
