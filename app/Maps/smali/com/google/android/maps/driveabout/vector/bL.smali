.class public Lcom/google/android/maps/driveabout/vector/bL;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:[Lcom/google/android/maps/driveabout/vector/aG;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/aG;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/aG;

    aput-object v1, v3, v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/maps/driveabout/vector/aG;
    .locals 7

    const/4 v5, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bL;->c()V

    :cond_0
    const/4 v0, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    aget-object v3, v3, v0

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aG;->b()I

    move-result v3

    if-le v3, v1, :cond_4

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aG;->b()I

    move-result v1

    move v2, v1

    move v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v6, v1

    move v1, v2

    move v2, v6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    aget-object v3, v0, v2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/aG;

    aput-object v1, v4, v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    return-object v3

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    aput-object v5, v0, v2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    goto :goto_2

    :cond_4
    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_1
.end method

.method public a(Ljava/util/Iterator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call addIterator after next has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public b()Lcom/google/android/maps/driveabout/vector/aG;
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bL;->c()V

    :cond_0
    const/4 v0, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    aget-object v3, v3, v0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aG;->b()I

    move-result v3

    if-le v3, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aG;->b()I

    move-result v1

    move v2, v1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->b:[Lcom/google/android/maps/driveabout/vector/aG;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bL;->c:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bL;->a()Lcom/google/android/maps/driveabout/vector/aG;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[RankMergingFeatureIterator"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bL;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

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
