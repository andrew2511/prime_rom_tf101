.class public Lcom/google/android/maps/driveabout/app/aK;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Law/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Law/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aK;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aK;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/aK;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    const/16 v1, 0x77

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Law/b;->a(Law/e;IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    const/16 v1, 0x7c

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    invoke-virtual {v0, v3}, Law/e;->i(I)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    invoke-virtual {v2, v3, v1}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    invoke-virtual {v0, v2}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    const/16 v1, 0x76

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x4

    invoke-static {v0, v1}, Law/b;->e(Law/e;I)I

    move-result v0

    goto :goto_0
.end method

.method public h()F
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, -0x4080

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    const/16 v1, 0x76

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Law/e;->d(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public i()[Ljava/lang/String;
    .locals 14

    const/4 v2, 0x0

    const/4 v13, 0x5

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    const/16 v1, 0x97

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v13}, Law/e;->i(I)I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v4, v10

    :goto_1
    if-ge v4, v1, :cond_5

    if-lez v4, :cond_2

    const-string v5, " ... "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v13, v4}, Law/e;->e(II)Law/e;

    move-result-object v5

    invoke-static {v5, v11}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Lcom/google/android/maps/driveabout/app/aK;->a:Landroid/content/Context;

    const v8, 0x7f0b00bd

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {v5, v12}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v10

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    if-lez v4, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->a:Landroid/content/Context;

    const v5, 0x7f0b000a

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    :cond_7
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v10

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v11

    goto/16 :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aK;->d:Law/e;

    const/16 v1, 0x5a

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v1, 0x5d

    invoke-static {v0, v1}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
