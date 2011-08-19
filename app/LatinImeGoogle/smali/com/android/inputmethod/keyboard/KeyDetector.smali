.class public abstract Lcom/android/inputmethod/keyboard/KeyDetector;
.super Ljava/lang/Object;
.source "KeyDetector.java"


# instance fields
.field protected mCorrectionX:I

.field protected mCorrectionY:I

.field protected mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

.field private mKeys:[Lcom/android/inputmethod/keyboard/Key;

.field protected mProximityCorrectOn:Z

.field protected mProximityThresholdSquare:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMostCommonKeyWidth(Lcom/android/inputmethod/keyboard/Keyboard;)I
    .locals 11
    .parameter "keyboard"

    .prologue
    const/4 v10, 0x0

    .line 121
    if-nez p0, :cond_0

    move v8, v10

    .line 138
    :goto_0
    return v8

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    .line 123
    .local v4, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    move v8, v10

    goto :goto_0

    .line 124
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v1, histogram:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 126
    .local v5, maxCount:I
    const/4 v6, 0x0

    .line 127
    .local v6, mostCommonWidth:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/inputmethod/keyboard/Key;

    .line 128
    .local v3, key:Lcom/android/inputmethod/keyboard/Key;
    iget v8, v3, Lcom/android/inputmethod/keyboard/Key;->mWidth:I

    iget v9, v3, Lcom/android/inputmethod/keyboard/Key;->mGap:I

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 129
    .local v7, width:Ljava/lang/Integer;
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 130
    .local v0, count:Ljava/lang/Integer;
    if-nez v0, :cond_4

    .line 131
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 132
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v5, :cond_3

    .line 134
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 135
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    .end local v0           #count:Ljava/lang/Integer;
    .end local v3           #key:Lcom/android/inputmethod/keyboard/Key;
    .end local v7           #width:Ljava/lang/Integer;
    :cond_5
    move v8, v6

    .line 138
    goto :goto_0
.end method


# virtual methods
.method public abstract getKeyIndexAndNearbyCodes(II[I)I
.end method

.method protected getKeys()[Lcom/android/inputmethod/keyboard/Key;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "keyboard isn\'t set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    return-object v0
.end method

.method protected abstract getMaxNearbyKeys()I
.end method

.method protected getTouchX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionX:I

    add-int/2addr v0, p1

    return v0
.end method

.method protected getTouchY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionY:I

    add-int/2addr v0, p1

    return v0
.end method

.method public newCodeArray()[I
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/inputmethod/keyboard/KeyDetector;->getMaxNearbyKeys()I

    move-result v1

    new-array v0, v1, [I

    .line 88
    .local v0, codes:[I
    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 89
    return-object v0
.end method

.method public setKeyboard(Lcom/android/inputmethod/keyboard/Keyboard;FF)[Lcom/android/inputmethod/keyboard/Key;
    .locals 3
    .parameter "keyboard"
    .parameter "correctionX"
    .parameter "correctionY"

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 42
    :cond_0
    float-to-int v2, p2

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionX:I

    .line 43
    float-to-int v2, p3

    iput v2, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mCorrectionY:I

    .line 44
    iput-object p1, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    .line 45
    iget-object v2, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeyboard:Lcom/android/inputmethod/keyboard/Keyboard;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    .line 46
    .local v1, keys:Ljava/util/List;,"Ljava/util/List<Lcom/android/inputmethod/keyboard/Key;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/inputmethod/keyboard/Key;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/inputmethod/keyboard/Key;

    .line 47
    .local v0, array:[Lcom/android/inputmethod/keyboard/Key;
    iput-object v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mKeys:[Lcom/android/inputmethod/keyboard/Key;

    .line 48
    return-object v0
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mProximityCorrectOn:Z

    .line 68
    return-void
.end method

.method public setProximityThreshold(I)V
    .locals 1
    .parameter "threshold"

    .prologue
    .line 75
    mul-int v0, p1, p1

    iput v0, p0, Lcom/android/inputmethod/keyboard/KeyDetector;->mProximityThresholdSquare:I

    .line 76
    return-void
.end method
