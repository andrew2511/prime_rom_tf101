.class public Lcom/google/mobile/common/util/IntMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mobile/common/util/IntMap$KeyIterator;
    }
.end annotation


# instance fields
.field private higher:Ljava/util/Hashtable;

.field private lower:[Ljava/lang/Object;

.field private lowerCount:I

.field private maxKey:I

.field private maxLowerKey:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/mobile/common/util/IntMap;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 2

    const/high16 v1, -0x8000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    if-lez p1, :cond_0

    const/16 v0, 0x80

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/mobile/common/util/IntMap;->lowerCount:I

    iput v1, p0, Lcom/google/mobile/common/util/IntMap;->maxKey:I

    iput v1, p0, Lcom/google/mobile/common/util/IntMap;->maxLowerKey:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/mobile/common/util/IntMap;)I
    .locals 1

    iget v0, p0, Lcom/google/mobile/common/util/IntMap;->maxLowerKey:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/mobile/common/util/IntMap;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/mobile/common/util/IntMap;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    return-object v0
.end method

.method private static compareHashtable(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method private compareLowerBuffer([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-nez v2, :cond_0

    aget-object v2, p2, v1

    if-nez v2, :cond_1

    :cond_0
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v4

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-le v1, v2, :cond_5

    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_7

    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    array-length v1, p1

    array-length v2, p2

    if-ge v1, v2, :cond_7

    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_7

    aget-object v1, p2, v0

    if-eqz v1, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private expandLowerIfNecessary(I)Z
    .locals 4

    const/16 v1, 0x80

    const/4 v3, 0x0

    if-ge p1, v1, :cond_1

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v0, v0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    if-le v0, p1, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, -0x8000

    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    iput v3, p0, Lcom/google/mobile/common/util/IntMap;->maxKey:I

    iput v3, p0, Lcom/google/mobile/common/util/IntMap;->maxLowerKey:I

    iput v4, p0, Lcom/google/mobile/common/util/IntMap;->lowerCount:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/google/mobile/common/util/IntMap;

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/mobile/common/util/IntMap;

    invoke-virtual {p0}, Lcom/google/mobile/common/util/IntMap;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/mobile/common/util/IntMap;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    iget-object v1, p1, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/google/mobile/common/util/IntMap;->compareLowerBuffer([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Lcom/google/mobile/common/util/IntMap;->compareHashtable(Ljava/util/Hashtable;Ljava/util/Hashtable;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/mobile/common/util/IntMap;->maxLowerKey:I

    if-gt p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/mobile/common/util/IntMap;->maxKey:I

    if-le p1, v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/mobile/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    iget-object v2, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public keys()Lcom/google/mobile/common/util/IntMap$KeyIterator;
    .locals 1

    new-instance v0, Lcom/google/mobile/common/util/IntMap$KeyIterator;

    invoke-direct {v0, p0}, Lcom/google/mobile/common/util/IntMap$KeyIterator;-><init>(Lcom/google/mobile/common/util/IntMap;)V

    return-object v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/mobile/common/util/IntMap;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/mobile/common/util/IntMap;->maxKey:I

    if-le p1, v0, :cond_1

    iput p1, p0, Lcom/google/mobile/common/util/IntMap;->maxKey:I

    :cond_1
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/google/mobile/common/util/IntMap;->expandLowerIfNecessary(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget v0, p0, Lcom/google/mobile/common/util/IntMap;->maxLowerKey:I

    if-le p1, v0, :cond_5

    iput p1, p0, Lcom/google/mobile/common/util/IntMap;->maxLowerKey:I

    iget v0, p0, Lcom/google/mobile/common/util/IntMap;->lowerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mobile/common/util/IntMap;->lowerCount:I

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    aput-object p2, v0, p1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-nez v0, :cond_4

    iget v0, p0, Lcom/google/mobile/common/util/IntMap;->lowerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/mobile/common/util/IntMap;->lowerCount:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    :cond_7
    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/mobile/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/google/mobile/common/util/IntMap;->lowerCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/mobile/common/util/IntMap;->lowerCount:I

    :cond_0
    iget-object v1, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    aput-object v3, v1, p1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/google/mobile/common/util/Primitives;->toInteger(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public size()I
    .locals 2

    iget-object v0, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/mobile/common/util/IntMap;->lowerCount:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/mobile/common/util/IntMap;->lowerCount:I

    iget-object v1, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "IntMap{lower:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "=>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/google/mobile/common/util/IntMap;->lower:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", higher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/mobile/common/util/IntMap;->higher:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
