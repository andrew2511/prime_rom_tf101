.class Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;
.super Ljava/lang/Object;
.source "EBookSearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/parser/EBookSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringChecker"
.end annotation


# instance fields
.field private buffer:[C

.field private bufferIndex:I

.field private currentlyFound:[C

.field private foundLen:I

.field private mustMatchCase:Z

.field private searchWholeWord:Z

.field private searched:[C


# direct methods
.method private constructor <init>(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "expression"
    .parameter "matchCase"
    .parameter "wholeWord"

    .prologue
    const/16 v3, 0x20

    const/4 v4, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v4, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    .line 32
    iput-boolean p2, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->mustMatchCase:Z

    .line 33
    iput-boolean p3, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searchWholeWord:Z

    .line 34
    if-nez p2, :cond_0

    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 36
    :cond_0
    iget-boolean v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searchWholeWord:Z

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 39
    .local v0, expLength:I
    add-int/lit8 v1, v0, 0x2

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searched:[C

    .line 40
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searched:[C

    aput-char v3, v1, v4

    .line 41
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searched:[C

    add-int/lit8 v2, v0, 0x1

    aput-char v3, v1, v2

    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searched:[C

    const/4 v3, 0x1

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .end local v0           #expLength:I
    :goto_0
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searched:[C

    array-length v1, v1

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->currentlyFound:[C

    .line 49
    return-void

    .line 46
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searched:[C

    goto :goto_0
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZZLcom/mobipocket/common/parser/EBookSearcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;Lcom/mobipocket/common/parser/StrDescriptor;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->feed(Lcom/mobipocket/common/parser/StrDescriptor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->getExprLength()I

    move-result v0

    return v0
.end method

.method private feed(C)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 84
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searched:[C

    iget v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    aget-char v0, v0, v1

    if-ne p1, v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->currentlyFound:[C

    iget v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    aput-char p1, v0, v1

    .line 87
    iget v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    .line 88
    iget v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searched:[C

    array-length v1, v1

    if-ne v0, v1, :cond_1

    move v0, v5

    .line 117
    :goto_0
    return v0

    .line 93
    :cond_0
    iget v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    if-lez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->buffer:[C

    if-eqz v0, :cond_2

    .line 98
    iget v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->bufferIndex:I

    iget v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->bufferIndex:I

    .line 99
    iput v4, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    :cond_1
    :goto_1
    move v0, v4

    .line 117
    goto :goto_0

    .line 104
    :cond_2
    iget v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    .line 105
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->buffer:[C

    .line 106
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->currentlyFound:[C

    iget-object v2, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->buffer:[C

    sub-int v3, v0, v5

    invoke-static {v1, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->buffer:[C

    sub-int v2, v0, v5

    aput-char p1, v1, v2

    .line 108
    iput v4, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->foundLen:I

    .line 109
    iput v4, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->bufferIndex:I

    .line 110
    :goto_2
    iget v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->bufferIndex:I

    if-ge v1, v0, :cond_3

    .line 112
    iget-object v1, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->buffer:[C

    iget v2, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->bufferIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->bufferIndex:I

    aget-char v1, v1, v2

    invoke-direct {p0, v1}, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->feed(C)Z

    goto :goto_2

    .line 114
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->buffer:[C

    goto :goto_1
.end method

.method private feed(Lcom/mobipocket/common/parser/StrDescriptor;)Z
    .locals 6
    .parameter "text"

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, index:I
    invoke-virtual {p1}, Lcom/mobipocket/common/parser/StrDescriptor;->length()I

    move-result v4

    .local v4, textLen:I
    move v1, v0

    .line 56
    .end local v0           #index:I
    .local v1, index:I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 58
    iget-boolean v5, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->mustMatchCase:Z

    if-eqz v5, :cond_2

    .line 60
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    invoke-virtual {p1, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v2

    .line 66
    .local v2, next:C
    :goto_1
    iget-boolean v5, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searchWholeWord:Z

    if-eqz v5, :cond_1

    .line 68
    invoke-static {v2}, Lcom/mobipocket/common/parser/UnicodeWestern;->getHyphenationClass(C)B

    move-result v3

    .line 69
    .local v3, temp:B
    const/4 v5, 0x3

    if-eq v3, v5, :cond_0

    const/4 v5, 0x4

    if-ne v3, v5, :cond_1

    .line 71
    :cond_0
    const/16 v2, 0x20

    .line 74
    .end local v3           #temp:B
    :cond_1
    invoke-direct {p0, v2}, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->feed(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 75
    const/4 v5, 0x1

    .line 78
    .end local v2           #next:C
    :goto_2
    return v5

    .line 64
    .end local v0           #index:I
    .restart local v1       #index:I
    :cond_2
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    invoke-virtual {p1, v1}, Lcom/mobipocket/common/parser/StrDescriptor;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .restart local v2       #next:C
    goto :goto_1

    .line 78
    .end local v0           #index:I
    .end local v2           #next:C
    .restart local v1       #index:I
    :cond_3
    const/4 v5, 0x0

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_2

    .restart local v2       #next:C
    :cond_4
    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method private getExprLength()I
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookSearcher$StringChecker;->searched:[C

    array-length v0, v0

    return v0
.end method
