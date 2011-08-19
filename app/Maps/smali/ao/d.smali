.class public Lao/d;
.super Ljava/lang/Object;

# interfaces
.implements Lao/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lf/v;

.field private c:Laf/a;

.field private d:LO/b;

.field private e:Lay/e;

.field private f:Lan/b;

.field private g:Lq/a;

.field private h:F

.field private i:Z

.field private j:Z

.field private final k:I

.field private final l:I

.field private m:LU/b;

.field private n:Lcom/google/googlenav/wallpaper/b;

.field private final o:Landroid/os/Handler;

.field private p:Lao/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/google/googlenav/wallpaper/b;Lf/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LU/b;

    invoke-direct {v0}, LU/b;-><init>()V

    iput-object v0, p0, Lao/d;->m:LU/b;

    new-instance v0, Lao/c;

    invoke-direct {v0, p0}, Lao/c;-><init>(Lao/d;)V

    iput-object v0, p0, Lao/d;->o:Landroid/os/Handler;

    iput-object p1, p0, Lao/d;->a:Landroid/content/Context;

    iput-object p5, p0, Lao/d;->b:Lf/v;

    iput-object p4, p0, Lao/d;->n:Lcom/google/googlenav/wallpaper/b;

    iput p2, p0, Lao/d;->k:I

    iput p3, p0, Lao/d;->l:I

    new-instance v0, Lao/f;

    invoke-direct {v0, p0}, Lao/f;-><init>(Lao/a;)V

    iput-object v0, p0, Lao/d;->p:Lao/f;

    iget-object v0, p0, Lao/d;->p:Lao/f;

    invoke-virtual {v0}, Lao/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lao/d;->b()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lao/d;)Lcom/google/googlenav/wallpaper/b;
    .locals 1

    iget-object v0, p0, Lao/d;->n:Lcom/google/googlenav/wallpaper/b;

    return-object v0
.end method

.method private b()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Laf/a;

    iget-object v1, p0, Lao/d;->a:Landroid/content/Context;

    iget v2, p0, Lao/d;->k:I

    iget v3, p0, Lao/d;->l:I

    invoke-direct {p0}, Lao/d;->c()[Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Laf/a;-><init>(Landroid/content/Context;II[Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lao/d;->c:Laf/a;

    new-instance v0, LO/b;

    iget v1, p0, Lao/d;->k:I

    iget v2, p0, Lao/d;->l:I

    invoke-direct {v0, v1, v2}, LO/b;-><init>(II)V

    iput-object v0, p0, Lao/d;->d:LO/b;

    new-instance v0, Lay/e;

    iget v1, p0, Lao/d;->k:I

    iget v2, p0, Lao/d;->l:I

    iget-object v3, p0, Lao/d;->p:Lao/f;

    invoke-virtual {v3}, Lao/f;->c()[Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lao/d;->p:Lao/f;

    invoke-virtual {v4}, Lao/f;->e()[Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lao/d;->p:Lao/f;

    invoke-virtual {v5}, Lao/f;->d()[Landroid/graphics/Bitmap;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-direct/range {v0 .. v5}, Lay/e;-><init>(II[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lao/d;->e:Lay/e;

    new-instance v0, Lan/b;

    iget v1, p0, Lao/d;->k:I

    iget v2, p0, Lao/d;->l:I

    iget-object v3, p0, Lao/d;->p:Lao/f;

    invoke-virtual {v3}, Lao/f;->f()[Landroid/graphics/Bitmap;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-direct {v0, v1, v2, v3}, Lan/b;-><init>(IILandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lao/d;->f:Lan/b;

    new-instance v0, Lq/a;

    iget-object v1, p0, Lao/d;->a:Landroid/content/Context;

    iget v2, p0, Lao/d;->k:I

    const/high16 v3, 0x41c8

    iget-object v4, p0, Lao/d;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lao/d;->p:Lao/f;

    invoke-virtual {v4}, Lao/f;->g()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lq/a;-><init>(Landroid/content/Context;IFLandroid/graphics/Bitmap;)V

    iput-object v0, p0, Lao/d;->g:Lq/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lao/d;->j:Z

    iget-object v0, p0, Lao/d;->n:Lcom/google/googlenav/wallpaper/b;

    invoke-interface {v0}, Lcom/google/googlenav/wallpaper/b;->b()V

    return-void
.end method

.method private c()[Landroid/graphics/Bitmap;
    .locals 10

    const/16 v9, 0x60

    const/4 v8, 0x3

    const/4 v7, 0x0

    iget-object v0, p0, Lao/d;->p:Lao/f;

    invoke-virtual {v0}, Lao/f;->b()[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v0, v0, v7

    const/16 v1, 0x9

    new-array v1, v1, [Landroid/graphics/Bitmap;

    move v2, v7

    :goto_0
    if-ge v2, v8, :cond_1

    move v3, v7

    :goto_1
    if-ge v3, v8, :cond_0

    mul-int/lit8 v4, v2, 0x3

    add-int/2addr v4, v3

    mul-int/lit8 v5, v3, 0x60

    mul-int/lit8 v6, v2, 0x60

    invoke-static {v0, v5, v6, v9, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-direct {p0}, Lao/d;->b()V

    return-void
.end method

.method public a(F)V
    .locals 2

    iput p1, p0, Lao/d;->h:F

    iget-boolean v0, p0, Lao/d;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lao/d;->c:Laf/a;

    iget v1, p0, Lao/d;->h:F

    invoke-virtual {v0, v1}, Laf/a;->b(F)V

    iget-object v0, p0, Lao/d;->d:LO/b;

    iget v1, p0, Lao/d;->h:F

    invoke-virtual {v0, v1}, LO/b;->a(F)V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    iget v1, p0, Lao/d;->h:F

    invoke-virtual {v0, v1}, Lay/e;->a(F)V

    iget-object v0, p0, Lao/d;->g:Lq/a;

    iget v1, p0, Lao/d;->h:F

    invoke-virtual {v0, v1}, Lq/a;->a(F)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 1

    iget-boolean v0, p0, Lao/d;->j:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lao/d;->g:Lq/a;

    invoke-virtual {v0, p1, p2}, Lq/a;->a(II)V

    goto :goto_0
.end method

.method public a(LX/e;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lao/d;->j:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, LX/b;->a:LX/b;

    if-eqz p1, :cond_1

    iget-object v1, p1, LX/e;->a:LX/b;

    if-eqz v1, :cond_1

    iget-object v0, p1, LX/e;->a:LX/b;

    iget-object v1, p0, Lao/d;->g:Lq/a;

    iget-object v2, p1, LX/e;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lq/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lao/d;->g:Lq/a;

    iget-object v2, p1, LX/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lq/a;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lao/d;->g:Lq/a;

    invoke-virtual {v1, v0}, Lq/a;->a(LX/b;)V

    :cond_1
    sget-object v1, Lao/b;->a:[I

    invoke-virtual {v0}, LX/b;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lao/d;->n:Lcom/google/googlenav/wallpaper/b;

    invoke-interface {v0}, Lcom/google/googlenav/wallpaper/b;->b()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0}, LO/b;->a()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    sget-object v1, Lay/c;->b:Lay/c;

    sget-object v2, Lay/a;->a:Lay/a;

    invoke-virtual {v0, v1, v2, v3}, Lay/e;->a(Lay/c;Lay/a;Z)V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0}, LO/b;->a()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    sget-object v1, Lay/c;->a:Lay/c;

    sget-object v2, Lay/a;->a:Lay/a;

    invoke-virtual {v0, v1, v2, v3}, Lay/e;->a(Lay/c;Lay/a;Z)V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0}, LO/b;->a()V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lao/d;->f:Lan/b;

    sget-object v1, Lay/c;->a:Lay/c;

    invoke-virtual {v0, v1}, Lan/b;->a(Lay/c;)V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0}, LO/b;->a()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    sget-object v1, Lay/c;->a:Lay/c;

    sget-object v2, Lay/a;->c:Lay/a;

    invoke-virtual {v0, v1, v2, v3}, Lay/e;->a(Lay/c;Lay/a;Z)V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0}, LO/b;->a()V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    sget-object v1, Laf/e;->a:Laf/e;

    invoke-virtual {v0, v1}, Laf/a;->a(Laf/e;)V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0}, LO/b;->a()V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    sget-object v1, Laf/e;->b:Laf/e;

    invoke-virtual {v0, v1}, Laf/a;->a(Laf/e;)V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0}, LO/b;->a()V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    sget-object v1, Laf/e;->a:Laf/e;

    invoke-virtual {v0, v1}, Laf/a;->a(Laf/e;)V

    iget-object v0, p0, Lao/d;->d:LO/b;

    sget-object v1, LO/a;->a:LO/a;

    invoke-virtual {v0, v1}, LO/b;->a(LO/a;)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    sget-object v1, LO/a;->a:LO/a;

    invoke-virtual {v0, v1}, LO/b;->a(LO/a;)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    sget-object v1, LO/a;->b:LO/a;

    invoke-virtual {v0, v1}, LO/b;->a(LO/a;)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    sget-object v1, LO/a;->b:LO/a;

    invoke-virtual {v0, v1}, LO/b;->a(LO/a;)V

    goto/16 :goto_1

    :pswitch_b
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    sget-object v1, LO/a;->c:LO/a;

    invoke-virtual {v0, v1}, LO/b;->a(LO/a;)V

    goto/16 :goto_1

    :pswitch_c
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    sget-object v1, Lay/c;->b:Lay/c;

    sget-object v2, Lay/a;->b:Lay/a;

    sget-object v3, Lay/d;->c:Lay/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lay/e;->a(Lay/c;Lay/a;Lay/d;Z)V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    sget-object v1, LO/a;->a:LO/a;

    invoke-virtual {v0, v1}, LO/b;->a(LO/a;)V

    goto/16 :goto_1

    :pswitch_d
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    sget-object v1, Lay/c;->b:Lay/c;

    sget-object v2, Lay/a;->c:Lay/a;

    sget-object v3, Lay/d;->a:Lay/d;

    invoke-virtual {v0, v1, v2, v3, v4}, Lay/e;->a(Lay/c;Lay/a;Lay/d;Z)V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    sget-object v1, LO/a;->c:LO/a;

    invoke-virtual {v0, v1}, LO/b;->a(LO/a;)V

    goto/16 :goto_1

    :pswitch_e
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0}, LO/b;->a()V

    goto/16 :goto_1

    :pswitch_f
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0}, LO/b;->a()V

    goto/16 :goto_1

    :pswitch_10
    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0}, Lan/b;->a()V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0}, Lay/e;->a()V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0}, Laf/a;->a()V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0}, LO/b;->a()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public a(Landroid/graphics/Canvas;IIZ)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lao/d;->j:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    sub-int v0, p2, p3

    if-gez v0, :cond_2

    int-to-float v0, v0

    iget v1, p0, Lao/d;->h:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lao/d;->f:Lan/b;

    invoke-virtual {v0, p1, p4}, Lan/b;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lao/d;->c:Laf/a;

    invoke-virtual {v0, p1, p4}, Laf/a;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lao/d;->d:LO/b;

    invoke-virtual {v0, p1, p4}, LO/b;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lao/d;->e:Lay/e;

    invoke-virtual {v0, p1, p4}, Lay/e;->a(Landroid/graphics/Canvas;Z)V

    iget-object v0, p0, Lao/d;->g:Lq/a;

    invoke-virtual {v0, p1}, Lq/a;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-boolean v0, p0, Lao/d;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lao/d;->o:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lao/d;->o:Landroid/os/Handler;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    div-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lao/d;->i:Z

    return-void
.end method
