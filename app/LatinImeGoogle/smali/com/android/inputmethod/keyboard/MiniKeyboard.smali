.class public Lcom/android/inputmethod/keyboard/MiniKeyboard;
.super Lcom/android/inputmethod/keyboard/Keyboard;
.source "MiniKeyboard.java"


# instance fields
.field private mDefaultKeyCoordX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/inputmethod/keyboard/KeyboardId;)V
    .locals 0
    .parameter "context"
    .parameter "xmlLayoutResId"
    .parameter "id"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/android/inputmethod/keyboard/Keyboard;-><init>(Landroid/content/Context;ILcom/android/inputmethod/keyboard/KeyboardId;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getDefaultCoordX()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard;->mDefaultKeyCoordX:I

    return v0
.end method

.method public isOneRowKeys()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/MiniKeyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 40
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 48
    .end local p0
    :goto_0
    return v2

    .line 41
    .restart local p0
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/inputmethod/keyboard/Key;

    iget v0, p0, Lcom/android/inputmethod/keyboard/Key;->mEdgeFlags:I

    .line 48
    .local v0, edgeFlags:I
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public setDefaultCoordX(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/inputmethod/keyboard/MiniKeyboard;->mDefaultKeyCoordX:I

    .line 32
    return-void
.end method
