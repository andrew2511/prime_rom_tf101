.class public Lcom/mobipocket/common/parser/HyphenationStringChecker;
.super Ljava/lang/Object;
.source "HyphenationStringChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobipocket/common/parser/HyphenationStringChecker$1;,
        Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;
    }
.end annotation


# instance fields
.field private buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

.field private bufferIndex:I

.field private currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

.field private foundLen:I

.field private mustMatchCase:Z

.field private searchWholeWord:Z

.field private searched:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "expression"
    .parameter "matchCase"
    .parameter "wholeWord"

    .prologue
    const/16 v3, 0x20

    const/4 v4, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    .line 24
    iput v4, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    .line 25
    iput-boolean p2, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->mustMatchCase:Z

    .line 26
    iput-boolean p3, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searchWholeWord:Z

    .line 27
    if-nez p2, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_0
    iget-boolean v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searchWholeWord:Z

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 32
    .local v0, expLength:I
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searched:[C

    .line 33
    iget-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searched:[C

    aput-char v3, v1, v4

    .line 34
    iget-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searched:[C

    add-int/lit8 v2, v0, 0x1

    aput-char v3, v1, v2

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searched:[C

    const/4 v3, 0x1

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .end local v0           #expLength:I
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searched:[C

    array-length v1, v1

    new-array v1, v1, [Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iput-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    .line 43
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searched:[C

    goto :goto_0
.end method

.method private feed(CII)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 93
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searched:[C

    iget v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    aget-char v0, v0, v1

    if-ne p1, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iget v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iget v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    new-instance v2, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    invoke-direct {v2, p0, v7}, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;-><init>(Lcom/mobipocket/common/parser/HyphenationStringChecker;Lcom/mobipocket/common/parser/HyphenationStringChecker$1;)V

    aput-object v2, v0, v1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iget v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    aget-object v0, v0, v1

    iput p2, v0, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->beginPosition:I

    .line 101
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iget v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    aget-object v0, v0, v1

    iput p3, v0, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->endPosition:I

    .line 102
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iget v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    aget-object v0, v0, v1

    iput-char p1, v0, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->character:C

    .line 103
    iget v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    .line 106
    iget v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    iget-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searched:[C

    array-length v1, v1

    if-ne v0, v1, :cond_2

    move v0, v5

    .line 156
    :goto_0
    return v0

    .line 111
    :cond_1
    iget v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    if-lez v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    if-eqz v0, :cond_3

    .line 123
    iget v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->bufferIndex:I

    iget v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->bufferIndex:I

    .line 124
    iput v6, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    :cond_2
    :goto_1
    move v0, v6

    .line 156
    goto :goto_0

    .line 131
    :cond_3
    iget v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    .line 132
    new-array v1, v0, [Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iput-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    move v1, v5

    .line 136
    :goto_2
    if-ge v1, v0, :cond_4

    .line 138
    iget-object v2, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    sub-int v3, v1, v5

    iget-object v4, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    aget-object v4, v4, v1

    aput-object v4, v2, v3

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 141
    :cond_4
    iget-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    sub-int v2, v0, v5

    new-instance v3, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    invoke-direct {v3, p0, v7}, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;-><init>(Lcom/mobipocket/common/parser/HyphenationStringChecker;Lcom/mobipocket/common/parser/HyphenationStringChecker$1;)V

    aput-object v3, v1, v2

    .line 142
    iget-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    sub-int v2, v0, v5

    aget-object v1, v1, v2

    iput-char p1, v1, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->character:C

    .line 143
    iget-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    sub-int v2, v0, v5

    aget-object v1, v1, v2

    iput p2, v1, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->beginPosition:I

    .line 144
    iget-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    sub-int v2, v0, v5

    aget-object v1, v1, v2

    iput p3, v1, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->endPosition:I

    .line 146
    iput v6, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->foundLen:I

    .line 147
    iput v6, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->bufferIndex:I

    .line 148
    :goto_3
    iget v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->bufferIndex:I

    if-ge v1, v0, :cond_5

    .line 150
    iget-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iget v2, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->bufferIndex:I

    aget-object v1, v1, v2

    iget-char v1, v1, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->character:C

    iget-object v2, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iget v3, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->bufferIndex:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->beginPosition:I

    iget-object v3, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iget v4, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->bufferIndex:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->endPosition:I

    invoke-direct {p0, v1, v2, v3}, Lcom/mobipocket/common/parser/HyphenationStringChecker;->feed(CII)Z

    .line 151
    iget v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->bufferIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->bufferIndex:I

    goto :goto_3

    .line 153
    :cond_5
    iput-object v7, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->buffer:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    goto :goto_1
.end method


# virtual methods
.method public feed(Lcom/mobipocket/common/parser/StrDescriptor;II)Z
    .locals 7
    .parameter "text"
    .parameter "parserBeginPosition"
    .parameter "parserEndPosition"

    .prologue
    .line 47
    const/4 v1, 0x0

    .line 48
    .local v1, index:I
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v4

    .line 50
    .local v4, textLen:I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 52
    iget-boolean v5, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->mustMatchCase:Z

    if-eqz v5, :cond_2

    .line 54
    invoke-virtual {p1, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v2

    .line 60
    .local v2, next:C
    :goto_1
    iget-boolean v5, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->searchWholeWord:Z

    if-eqz v5, :cond_1

    .line 62
    invoke-static {v2}, Lcom/mobipocket/common/parser/UnicodeWestern;->getHyphenationClass(C)B

    move-result v3

    .line 63
    .local v3, temp:B
    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 65
    :cond_0
    const/16 v2, 0x20

    .line 76
    .end local v3           #temp:B
    :cond_1
    sub-int v5, p3, p2

    iget v6, p1, Lcom/mobipocket/common/parser/StrDescriptor;->length:I

    div-int/2addr v5, v6

    add-int/2addr v5, p2

    add-int v0, v5, v1

    .line 78
    .local v0, endPosition:I
    add-int v5, p2, v1

    invoke-direct {p0, v2, v5, v0}, Lcom/mobipocket/common/parser/HyphenationStringChecker;->feed(CII)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 80
    const/4 v5, 0x1

    .line 85
    .end local v0           #endPosition:I
    .end local v2           #next:C
    :goto_2
    return v5

    .line 58
    :cond_2
    invoke-virtual {p1, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .restart local v2       #next:C
    goto :goto_1

    .line 83
    .restart local v0       #endPosition:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_0

    .line 85
    .end local v0           #endPosition:I
    .end local v2           #next:C
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public getBeginPosition()I
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->beginPosition:I

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEndPosition()I
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    iget-object v1, p0, Lcom/mobipocket/common/parser/HyphenationStringChecker;->currentlyFound:[Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget v0, v0, Lcom/mobipocket/common/parser/HyphenationStringChecker$CharacterEntry;->endPosition:I

    .line 176
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
