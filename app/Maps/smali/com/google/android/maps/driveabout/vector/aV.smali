.class public abstract Lcom/google/android/maps/driveabout/vector/aV;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cb;


# instance fields
.field protected final a:I

.field protected final b:Lcom/google/android/maps/driveabout/vector/R;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {}, Lad/b;->c()Lcom/google/android/maps/driveabout/vector/R;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/aV;-><init>(ILcom/google/android/maps/driveabout/vector/R;)V

    return-void
.end method

.method protected constructor <init>(ILcom/google/android/maps/driveabout/vector/R;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aV;->a:I

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/aV;->b:Lcom/google/android/maps/driveabout/vector/R;

    return-void
.end method


# virtual methods
.method public a(LG/w;LG/Q;)LG/w;
    .locals 5

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/aV;->a(LG/Q;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {p1}, LG/w;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/l;->a(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, LG/w;->b()I

    move-result v1

    sub-int/2addr v1, v0

    new-instance v2, LG/w;

    invoke-virtual {p1}, LG/w;->c()I

    move-result v3

    shr-int/2addr v3, v1

    invoke-virtual {p1}, LG/w;->d()I

    move-result v4

    shr-int v1, v4, v1

    invoke-virtual {p1}, LG/w;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v1, v4}, LG/w;-><init>(IIILjava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method protected a(LG/Q;)Lcom/google/android/maps/driveabout/vector/l;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aV;->b:Lcom/google/android/maps/driveabout/vector/R;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aV;->a:I

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/R;->a(LG/Q;B)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    return-object v0
.end method

.method public a(ILG/Q;)Ljava/util/List;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/aV;->a(LG/Q;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    move v2, v7

    :goto_0
    if-gt v2, p1, :cond_3

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/l;->c(I)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    shl-int/2addr v3, v2

    move v4, v7

    :goto_1
    if-ge v4, v3, :cond_0

    move v5, v7

    :goto_2
    if-ge v5, v3, :cond_2

    new-instance v6, LG/w;

    invoke-direct {v6, v2, v4, v5}, LG/w;-><init>(III)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public b(LG/Q;)F
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aV;->a(LG/Q;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/l;->a()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public b(LG/w;LG/Q;)Ljava/util/List;
    .locals 11

    const/4 v10, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/android/maps/driveabout/vector/aV;->a(LG/Q;)Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v1

    invoke-virtual {p1}, LG/w;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/l;->b(I)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, LG/w;->b()I

    move-result v2

    sub-int v2, v1, v2

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    move v4, v10

    :goto_0
    if-ge v4, v3, :cond_0

    move v5, v10

    :goto_1
    if-ge v5, v3, :cond_2

    new-instance v6, LG/w;

    invoke-virtual {p1}, LG/w;->c()I

    move-result v7

    shl-int/2addr v7, v2

    add-int/2addr v7, v5

    invoke-virtual {p1}, LG/w;->d()I

    move-result v8

    shl-int/2addr v8, v2

    add-int/2addr v8, v4

    invoke-virtual {p1}, LG/w;->e()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v1, v7, v8, v9}, LG/w;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
