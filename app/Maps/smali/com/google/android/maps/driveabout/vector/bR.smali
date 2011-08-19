.class Lcom/google/android/maps/driveabout/vector/bR;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aA;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/bk;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:LG/r;

.field private final e:Lcom/google/android/maps/driveabout/vector/aw;

.field private final f:F

.field private final g:F

.field private final h:F

.field private final i:F

.field private final j:I


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/bk;Ljava/lang/String;ILG/r;Lcom/google/android/maps/driveabout/vector/aw;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bR;->a:Lcom/google/android/maps/driveabout/vector/bk;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bR;->b:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/bR;->c:I

    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/bR;->d:LG/r;

    invoke-virtual {p4}, LG/r;->d()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p4, v2}, LG/r;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->j:I

    :goto_0
    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/bR;->e:Lcom/google/android/maps/driveabout/vector/aw;

    int-to-float v0, p3

    invoke-virtual {p1, p2, p5, v0, v3}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FZ)[F

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bk;->b:Lcom/google/android/maps/driveabout/vector/aw;

    if-ne p5, v1, :cond_1

    aget v1, v0, v2

    const v2, 0x3f4ccccd

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->f:F

    :goto_1
    aget v1, v0, v3

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->g:F

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->h:F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->i:F

    return-void

    :cond_0
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->j:I

    goto :goto_0

    :cond_1
    aget v1, v0, v2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->f:F

    goto :goto_1
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->f:F

    return v0
.end method

.method public a(ILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;
    .locals 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->a:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->e:Lcom/google/android/maps/driveabout/vector/aw;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bR;->c:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bR;->d:LG/r;

    invoke-static {v4, p1}, Lcom/google/android/maps/driveabout/vector/S;->a(LG/r;I)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/bR;->d:LG/r;

    invoke-static {v5, p1}, Lcom/google/android/maps/driveabout/vector/S;->b(LG/r;I)I

    move-result v5

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/bR;->j:I

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/bk;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;ILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;
    .locals 9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->d:LG/r;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/S;->b(LG/r;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->d:LG/r;

    invoke-static {v1, p2}, Lcom/google/android/maps/driveabout/vector/S;->a(LG/r;I)I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->j:I

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->j:I

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/S;->b(I)I

    move-result v1

    move v5, v1

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->a:Lcom/google/android/maps/driveabout/vector/bk;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bR;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bR;->e:Lcom/google/android/maps/driveabout/vector/aw;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->c:I

    int-to-float v4, v1

    iget v7, p0, Lcom/google/android/maps/driveabout/vector/bR;->j:I

    move-object v1, p1

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/bk;->a(Lcom/google/android/maps/driveabout/vector/u;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/aw;FIIILcom/google/android/maps/driveabout/vector/F;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v0

    return-object v0

    :cond_0
    move v5, v1

    move v6, v0

    goto :goto_0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->g:F

    return v0
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->h:F

    return v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->i:F

    return v0
.end method

.method public e()F
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bR;->g:F

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->h:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bR;->i:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method
