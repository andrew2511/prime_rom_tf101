.class public Lam/k;
.super Lcom/google/android/maps/driveabout/vector/ae;


# instance fields
.field private final d:Ljava/lang/Object;

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Li/x;Lcom/google/googlenav/bf;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIIIZ)V
    .locals 11

    invoke-interface {p2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v2

    invoke-virtual {v2}, Lf/h;->b()I

    move-result v2

    invoke-interface {p2}, Lcom/google/googlenav/bf;->h()Lf/h;

    move-result-object v3

    invoke-virtual {v3}, Lf/h;->d()I

    move-result v3

    invoke-static {v2, v3}, LG/Q;->b(II)LG/Q;

    move-result-object v3

    const-string v8, ""

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p9

    invoke-direct/range {v2 .. v10}, Lcom/google/android/maps/driveabout/vector/ae;-><init>(LG/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V

    move/from16 v0, p7

    move-object v1, p0

    iput v0, v1, Lam/k;->e:I

    move/from16 v0, p8

    move-object v1, p0

    iput v0, v1, Lam/k;->f:I

    iget v2, p0, Lam/k;->f:I

    invoke-virtual {p0, v2}, Lam/k;->a(I)I

    move-result v2

    iput v2, p0, Lam/k;->g:I

    invoke-interface {p2}, Lcom/google/googlenav/bf;->ao()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lam/k;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/aG;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    iget-object v0, p0, Lam/k;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lam/k;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lam/k;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Lcom/google/googlenav/aG;->a()Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    invoke-virtual {v0}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lam/k;->b:I

    invoke-virtual {p1}, Lcom/google/googlenav/aG;->b()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lam/k;->c:I

    invoke-virtual {p1}, Lcom/google/googlenav/aG;->c()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public av_()I
    .locals 1

    iget v0, p0, Lam/k;->g:I

    neg-int v0, v0

    return v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lam/k;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lam/k;->e:I

    return v0
.end method
