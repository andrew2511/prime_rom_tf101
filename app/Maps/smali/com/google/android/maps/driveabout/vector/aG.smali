.class public Lcom/google/android/maps/driveabout/vector/aG;
.super Ljava/lang/Object;


# instance fields
.field private final a:LG/d;

.field private final b:Lcom/google/android/maps/driveabout/vector/bh;


# direct methods
.method public constructor <init>(LG/d;Lcom/google/android/maps/driveabout/vector/bh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lae/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aG;->a:LG/d;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/aG;->b:Lcom/google/android/maps/driveabout/vector/bh;

    return-void
.end method


# virtual methods
.method public a()LG/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->a:LG/d;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->a:LG/d;

    invoke-interface {v0}, LG/d;->l()I

    move-result v0

    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/bh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->b:Lcom/google/android/maps/driveabout/vector/bh;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->a:LG/d;

    invoke-interface {v0}, LG/d;->n()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    return v0
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

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/maps/driveabout/vector/aG;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->a:LG/d;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aG;->a:LG/d;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->b:Lcom/google/android/maps/driveabout/vector/bh;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aG;->b:Lcom/google/android/maps/driveabout/vector/bh;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/bh;->a(Lcom/google/android/maps/driveabout/vector/bh;Lcom/google/android/maps/driveabout/vector/bh;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aG;->a:LG/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->b:Lcom/google/android/maps/driveabout/vector/bh;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aG;->b:Lcom/google/android/maps/driveabout/vector/bh;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
