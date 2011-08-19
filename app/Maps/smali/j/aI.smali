.class Lj/aI;
.super Lj/v;


# instance fields
.field private final transient a:I

.field private final transient b:I

.field private final transient d:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lj/aI;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    invoke-direct {p0}, Lj/v;-><init>()V

    iput p2, p0, Lj/aI;->a:I

    iput p3, p0, Lj/aI;->b:I

    iput-object p1, p0, Lj/aI;->d:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lj/aI;)[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj/aI;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lj/aI;)I
    .locals 1

    iget v0, p0, Lj/aI;->a:I

    return v0
.end method


# virtual methods
.method public a(I)Lj/ai;
    .locals 2

    new-instance v0, Lj/E;

    iget v1, p0, Lj/aI;->b:I

    invoke-direct {v0, p0, v1, p1}, Lj/E;-><init>(Lj/aI;II)V

    return-object v0
.end method

.method public a(II)Lj/v;
    .locals 4

    iget v0, p0, Lj/aI;->b:I

    invoke-static {p1, p2, v0}, Lae/k;->a(III)V

    if-ne p1, p2, :cond_0

    invoke-static {}, Lj/v;->a()Lj/v;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lj/aI;

    iget-object v1, p0, Lj/aI;->d:[Ljava/lang/Object;

    iget v2, p0, Lj/aI;->a:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lj/aI;-><init>([Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method public b()Lj/ad;
    .locals 3

    iget-object v0, p0, Lj/aI;->d:[Ljava/lang/Object;

    iget v1, p0, Lj/aI;->a:I

    iget v2, p0, Lj/aI;->b:I

    invoke-static {v0, v1, v2}, Lj/l;->a([Ljava/lang/Object;II)Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method c()Z
    .locals 2

    iget v0, p0, Lj/aI;->a:I

    if-nez v0, :cond_0

    iget v0, p0, Lj/aI;->b:I

    iget-object v1, p0, Lj/aI;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lj/aI;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p1, p0, :cond_0

    move v1, v7

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    if-nez v1, :cond_1

    move v1, v6

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    invoke-virtual {p0}, Lj/aI;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    iget v2, p0, Lj/aI;->a:I

    instance-of v3, p1, Lj/aI;

    if-eqz v3, :cond_4

    check-cast p1, Lj/aI;

    iget v1, p1, Lj/aI;->a:I

    :goto_1
    iget v3, p1, Lj/aI;->a:I

    iget v4, p1, Lj/aI;->b:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_6

    iget-object v3, p0, Lj/aI;->d:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aget-object v2, v3, v2

    iget-object v3, p1, Lj/aI;->d:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lj/aI;->d:[Ljava/lang/Object;

    add-int/lit8 v5, v2, 0x1

    aget-object v2, v4, v2

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v1, v6

    goto :goto_0

    :cond_5
    move v2, v5

    goto :goto_2

    :cond_6
    move v1, v7

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj/aI;->b:I

    invoke-static {p1, v0}, Lae/k;->a(II)I

    iget-object v0, p0, Lj/aI;->d:[Ljava/lang/Object;

    iget v1, p0, Lj/aI;->a:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v0, 0x1

    iget v1, p0, Lj/aI;->a:I

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget v2, p0, Lj/aI;->a:I

    iget v3, p0, Lj/aI;->b:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lj/aI;->d:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Lj/aI;->a:I

    :goto_0
    iget v1, p0, Lj/aI;->a:I

    iget v2, p0, Lj/aI;->b:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lj/aI;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lj/aI;->a:I

    sub-int/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lj/aI;->b()Lj/ad;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_1

    iget v0, p0, Lj/aI;->a:I

    iget v1, p0, Lj/aI;->b:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    iget v1, p0, Lj/aI;->a:I

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lj/aI;->d:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lj/aI;->a:I

    sub-int/2addr v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lj/aI;->a(I)Lj/ai;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lj/aI;->b:I

    return v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lj/aI;->a(II)Lj/v;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lj/aI;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lj/aI;->d:[Ljava/lang/Object;

    iget v2, p0, Lj/aI;->a:I

    const/4 v3, 0x0

    iget v4, p0, Lj/aI;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    array-length v0, p1

    iget v1, p0, Lj/aI;->b:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lj/aI;->b:I

    invoke-static {p1, v0}, Lj/R;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lj/aI;->d:[Ljava/lang/Object;

    iget v2, p0, Lj/aI;->a:I

    const/4 v3, 0x0

    iget v4, p0, Lj/aI;->b:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lj/aI;->b:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lj/aI;->b:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lj/aI;->size()I

    move-result v0

    invoke-static {v0}, Lj/aq;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj/aI;->d:[Ljava/lang/Object;

    iget v2, p0, Lj/aI;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lj/aI;->a:I

    add-int/lit8 v1, v1, 0x1

    :goto_0
    iget v2, p0, Lj/aI;->a:I

    iget v3, p0, Lj/aI;->b:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lj/aI;->d:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
