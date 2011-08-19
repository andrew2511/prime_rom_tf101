.class public Lorg/mozilla/universalchardet/prober/MBCSGroupProber;
.super Lorg/mozilla/universalchardet/prober/CharsetProber;


# instance fields
.field private activeNum:I

.field private bestGuess:I

.field private isActive:[Z

.field private probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x7

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/CharsetProber;-><init>()V

    new-array v0, v1, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x0

    new-instance v2, Lorg/mozilla/universalchardet/prober/UTF8Prober;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/UTF8Prober;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x1

    new-instance v2, Lorg/mozilla/universalchardet/prober/SJISProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/SJISProber;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x2

    new-instance v2, Lorg/mozilla/universalchardet/prober/EUCJPProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/EUCJPProber;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x3

    new-instance v2, Lorg/mozilla/universalchardet/prober/GB18030Prober;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/GB18030Prober;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x4

    new-instance v2, Lorg/mozilla/universalchardet/prober/EUCKRProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/EUCKRProber;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x5

    new-instance v2, Lorg/mozilla/universalchardet/prober/Big5Prober;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/Big5Prober;-><init>()V

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v1, 0x6

    new-instance v2, Lorg/mozilla/universalchardet/prober/EUCTWProber;

    invoke-direct {v2}, Lorg/mozilla/universalchardet/prober/EUCTWProber;-><init>()V

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->reset()V

    return-void
.end method


# virtual methods
.method public getCharSetName()Ljava/lang/String;
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->getConfidence()F

    iget v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    :cond_0
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getCharSetName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfidence()F
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v2, :cond_0

    const v0, 0x3f7d70a4

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v2, :cond_1

    const v0, 0x3c23d70a

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_1
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/mozilla/universalchardet/prober/CharsetProber;->getConfidence()F

    move-result v2

    cmpg-float v3, v1, v2

    if-gez v3, :cond_2

    iput v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    move v1, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getState()Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0
.end method

.method public handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v0, p3, [B

    add-int v1, p2, p3

    move v2, p2

    move v3, v6

    move v4, v7

    :goto_0
    if-ge v2, v1, :cond_2

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p1, v2

    aput-byte v5, v0, v3

    move v3, v4

    move v4, v7

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p1, v2

    aput-byte v5, v0, v3

    move v3, v4

    move v4, v6

    goto :goto_1

    :cond_2
    move v1, v6

    :goto_2
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0, v6, v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->handleData([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v2

    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v2, v4, :cond_6

    iput v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    :cond_5
    :goto_3
    iget-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-object v0

    :cond_6
    sget-object v4, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    aput-boolean v6, v2, v1

    iget v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    sub-int/2addr v2, v7

    iput v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    iget v2, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    if-gtz v2, :cond_3

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->NOT_ME:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    goto :goto_3
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    :goto_0
    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->probers:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->reset()V

    iget-object v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->isActive:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    iget v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->activeNum:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->bestGuess:I

    sget-object v0, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->DETECTING:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    iput-object v0, p0, Lorg/mozilla/universalchardet/prober/MBCSGroupProber;->state:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    return-void
.end method
