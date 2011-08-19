.class public Lcom/android/inputmethod/latin/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# instance fields
.field private mAutoCapitalized:Z

.field private mCapsCount:I

.field private final mCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mIsFirstCharCapitalized:Z

.field private mPreferredWord:Ljava/lang/String;

.field private mTypedLength:I

.field private final mTypedWord:Ljava/lang/StringBuilder;

.field private final mXCoordinates:[I

.field private final mYCoordinates:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x30

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/16 v0, 0x30

    .line 58
    .local v0, N:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    .line 61
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    .line 62
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 69
    iget v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 70
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    .line 71
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 72
    iget v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    .line 73
    iget-object v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    .line 74
    iget-object v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    .line 75
    return-void
.end method

.method private correctPrimaryJuxtapos(I[I)V
    .locals 4
    .parameter "primaryCode"
    .parameter "codes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    aget v0, p2, v2

    if-lez v0, :cond_0

    aget v0, p2, v3

    if-lez v0, :cond_0

    aget v0, p2, v2

    if-eq v0, p1, :cond_0

    aget v0, p2, v3

    if-ne v0, p1, :cond_0

    .line 141
    aget v0, p2, v2

    aput v0, p2, v3

    .line 142
    aput p1, p2, v2

    goto :goto_0
.end method


# virtual methods
.method public add(I[III)V
    .locals 2
    .parameter "primaryCode"
    .parameter "codes"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/WordComposer;->correctPrimaryJuxtapos(I[I)V

    .line 122
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    const/16 v1, 0x30

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    aput p3, v0, v1

    .line 125
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    iget v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    aput p4, v0, v1

    .line 127
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    .line 128
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 129
    :cond_1
    return-void
.end method

.method public deleteLast()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 150
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 151
    .local v0, codesSize:I
    if-lez v0, :cond_0

    .line 152
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 153
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int v2, v3, v5

    .line 154
    .local v2, lastPos:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 155
    .local v1, last:C
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 158
    .end local v1           #last:C
    .end local v2           #lastPos:I
    :cond_0
    iget v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    if-lez v3, :cond_1

    .line 159
    iget v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    .line 161
    :cond_1
    return-void
.end method

.method public getCodesAt(I)[I
    .locals 1
    .parameter "index"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    return-object p0
.end method

.method public getTypedWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 169
    .local v0, wordSize:I
    if-nez v0, :cond_0

    .line 170
    const/4 v1, 0x0

    .line 172
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getXCoordinates()[I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mXCoordinates:[I

    return-object v0
.end method

.method public getYCoordinates()[I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mYCoordinates:[I

    return-object v0
.end method

.method public isAllUpperCase()Z
    .locals 2

    .prologue
    .line 192
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCapitalized()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    return v0
.end method

.method public isFirstCharCapitalized()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 215
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedLength:I

    .line 83
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 86
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 87
    return-void
.end method

.method public setAutoCapitalized(Z)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 224
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    .line 225
    return-void
.end method

.method public setFirstCharCapitalized(Z)V
    .locals 0
    .parameter "capitalized"

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 177
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
