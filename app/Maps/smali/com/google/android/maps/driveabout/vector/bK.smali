.class public Lcom/google/android/maps/driveabout/vector/bK;
.super Lcom/google/android/maps/driveabout/vector/cr;


# instance fields
.field private a:Landroid/content/res/Resources;

.field private b:Lcom/google/android/maps/driveabout/vector/p;

.field private c:LG/Q;

.field private d:F

.field private e:I

.field private f:I

.field private final g:I

.field private h:I

.field private volatile i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/google/android/maps/driveabout/vector/bE;

.field private volatile m:I

.field private final n:Lcom/google/android/maps/driveabout/vector/aW;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/aW;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->k:Z

    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->a:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/bK;->n:Lcom/google/android/maps/driveabout/vector/aW;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->a:Landroid/content/res/Resources;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->U()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f09003a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:I

    return-void

    :cond_0
    const v1, 0x7f090039

    goto :goto_0
.end method

.method private a(FF)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->f:I

    int-to-float v0, v0

    sub-float v0, p2, v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bp;->a:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->n:Lcom/google/android/maps/driveabout/vector/aW;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aW;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->e:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    move v0, v6

    goto :goto_0

    :pswitch_0
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->e:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    cmpl-float v2, v1, v4

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    cmpl-float v1, v0, v4

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->l:Lcom/google/android/maps/driveabout/vector/bE;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x8d9a0

    return v0
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/bK;->e:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bK;->f:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->b:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->b:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->b:Lcom/google/android/maps/driveabout/vector/p;

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 9

    const/high16 v8, 0x1

    const/4 v4, 0x1

    const/high16 v7, 0x420c

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    if-gtz p4, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->c:LG/Q;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->b:Lcom/google/android/maps/driveabout/vector/p;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->b:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->b:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/p;->c(Z)V

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f020144

    :goto_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->b:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/content/res/Resources;I)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/16 v1, 0x303

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/az;->b:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bK;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->l:Lcom/google/android/maps/driveabout/vector/bE;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/bE;->a(Lcom/google/android/maps/driveabout/vector/u;)I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    if-nez v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->l:Lcom/google/android/maps/driveabout/vector/bE;

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->i:Z

    if-eqz v1, :cond_6

    const v1, 0xe700

    const/16 v2, 0x7300

    invoke-interface {v0, v8, v1, v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    :goto_2
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:F

    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->i:Z

    if-eqz v2, :cond_7

    const v2, 0x3faa3d71

    :goto_3
    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->c:LG/Q;

    invoke-static {v0, p2, v2, v1}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v1

    cmpl-float v2, v1, v7

    if-lez v2, :cond_4

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v2

    neg-float v2, v2

    invoke-interface {v0, v2, v5, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    sub-float/2addr v1, v7

    invoke-interface {v0, v1, v6, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v1

    invoke-interface {v0, v1, v5, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->b:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/br;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f020143

    goto/16 :goto_1

    :cond_6
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto :goto_2

    :cond_7
    move v2, v6

    goto :goto_3
.end method

.method public a(FFLcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bK;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->i:Z

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->g:I

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bp;->a:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->n:Lcom/google/android/maps/driveabout/vector/aW;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aW;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->e:I

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->f:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->c:LG/Q;

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->h:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->c:LG/Q;

    if-eqz v1, :cond_0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->c:LG/Q;

    invoke-virtual {p1, v1, v4}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;Z)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->d:F

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->i()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->k:Z

    if-nez v0, :cond_1

    iput-boolean v5, p0, Lcom/google/android/maps/driveabout/vector/bK;->k:Z

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bE;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bE;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->l:Lcom/google/android/maps/driveabout/vector/bE;

    :cond_1
    :goto_1
    return v5

    :pswitch_0
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->e:I

    add-int/2addr v1, v0

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bK;->f:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bK;->c:LG/Q;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->l:Lcom/google/android/maps/driveabout/vector/bE;

    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/bK;->k:Z

    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a_(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/bK;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bK;->e()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bK;->j:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->j:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bK;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->m:I

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bK;->i:Z

    return-void
.end method
