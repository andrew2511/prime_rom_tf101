.class public Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/zinio/mobile/android/a/a/l;
.implements Lcom/zinio/mobile/android/view/issue/b;


# static fields
.field private static j:Ljava/lang/String;


# instance fields
.field protected a:Lcom/zinio/mobile/android/view/issue/o;

.field b:Landroid/os/Handler;

.field protected c:Lcom/zinio/mobile/android/view/issue/q;

.field protected d:Lcom/zinio/mobile/android/a/a/j;

.field protected e:Lcom/zinio/mobile/android/view/issue/g;

.field protected f:I

.field protected g:F

.field protected h:F

.field protected i:F

.field private k:Z

.field private l:Lcom/zinio/mobile/android/view/issue/r;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/zinio/mobile/android/view/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 199
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    .line 63
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->k:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->b:Landroid/os/Handler;

    .line 145
    iput-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    .line 151
    sget-object v0, Lcom/zinio/mobile/android/view/issue/g;->a:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 156
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    .line 173
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->m:I

    .line 174
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->n:I

    .line 175
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->o:I

    .line 176
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->p:I

    .line 200
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->b()V

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    .line 63
    iput-boolean v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->k:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->b:Landroid/os/Handler;

    .line 145
    iput-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    .line 151
    sget-object v0, Lcom/zinio/mobile/android/view/issue/g;->a:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 156
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    .line 173
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->m:I

    .line 174
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->n:I

    .line 175
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->o:I

    .line 176
    iput v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->p:I

    .line 189
    invoke-direct {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->b()V

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)Lcom/zinio/mobile/android/view/a/c;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->q:Lcom/zinio/mobile/android/view/a/c;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v6, 0x4000

    .line 999
    iget-boolean v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->q:Lcom/zinio/mobile/android/view/a/c;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    iget-object v3, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v2

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/h;->d()I

    move-result v4

    invoke-virtual {v2}, Lcom/zinio/mobile/android/view/issue/h;->e()I

    move-result v2

    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v5, v4

    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v3, v2

    int-to-float v3, v3

    div-float/2addr v3, v6

    float-to-int v3, v3

    add-int/2addr v4, v5

    add-int/2addr v2, v3

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v5, v5

    int-to-float v3, v3

    int-to-float v4, v4

    int-to-float v2, v2

    invoke-direct {v6, v5, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, p1, v1, v6}, Lcom/zinio/mobile/android/view/a/c;->a(Landroid/content/Context;Lcom/zinio/mobile/android/a/a/j;Landroid/graphics/RectF;)V

    .line 1002
    :cond_0
    return-void

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method static synthetic a(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 215
    new-instance v0, Lcom/zinio/mobile/android/view/issue/q;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zinio/mobile/android/view/issue/q;-><init>(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    .line 216
    invoke-static {}, Lcom/zinio/mobile/android/view/issue/o;->a()Lcom/zinio/mobile/android/view/issue/o;

    move-result-object v0

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    .line 217
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    invoke-virtual {v0, p0}, Lcom/zinio/mobile/android/view/issue/o;->a(Lcom/zinio/mobile/android/view/issue/b;)V

    .line 218
    new-instance v0, Lcom/zinio/mobile/android/view/issue/r;

    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getContext()Landroid/content/Context;

    new-instance v1, Lcom/zinio/mobile/android/view/issue/a;

    invoke-direct {v1, p0}, Lcom/zinio/mobile/android/view/issue/a;-><init>(Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;)V

    invoke-direct {v0, v1}, Lcom/zinio/mobile/android/view/issue/r;-><init>(Lcom/zinio/mobile/android/view/issue/i;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->l:Lcom/zinio/mobile/android/view/issue/r;

    .line 219
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Integer;Ljava/lang/Integer;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_2

    .line 398
    if-eqz p2, :cond_0

    .line 399
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/issue/h;->a(II)I

    move-result v0

    .line 404
    :goto_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 405
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 406
    iput v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->o:I

    .line 417
    :goto_1
    return v0

    .line 401
    :cond_0
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/h;->e()I

    move-result v0

    goto :goto_0

    .line 408
    :cond_1
    iput v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->p:I

    goto :goto_1

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 412
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->o:I

    goto :goto_1

    .line 414
    :cond_3
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->p:I

    goto :goto_1
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/q;->a(I)V

    .line 319
    return-void
.end method

.method public final a(FFF)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->g:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 357
    :cond_0
    iput p1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->g:F

    .line 358
    iput p2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->h:F

    .line 359
    iput p3, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->i:F

    .line 360
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/q;->a(I)V

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->l()I

    move-result v1

    .line 324
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v2

    .line 325
    if-eqz v0, :cond_1

    sub-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    neg-int v0, v0

    .line 333
    :cond_0
    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->a:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 335
    packed-switch v0, :pswitch_data_0

    .line 347
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/issue/q;->a(I)V

    .line 349
    :goto_1
    :pswitch_0
    return-void

    .line 325
    :cond_1
    sub-int v0, v2, v1

    goto :goto_0

    .line 337
    :pswitch_1
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/f;->c:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/q;->a(Lcom/zinio/mobile/android/view/issue/f;)V

    goto :goto_1

    .line 343
    :pswitch_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    sget-object v1, Lcom/zinio/mobile/android/view/issue/f;->a:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/q;->a(Lcom/zinio/mobile/android/view/issue/f;)V

    goto :goto_1

    .line 335
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/widget/FrameLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    new-instance v0, Lcom/zinio/mobile/android/view/a/c;

    invoke-direct {v0, p1}, Lcom/zinio/mobile/android/view/a/c;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->q:Lcom/zinio/mobile/android/view/a/c;

    .line 223
    return-void
.end method

.method public final a(Lcom/zinio/mobile/android/a/a/j;)V
    .locals 2
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    .line 373
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/issue/o;->a(Lcom/zinio/mobile/android/a/a/j;)V

    .line 374
    const/4 v0, 0x0

    iput v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    .line 375
    if-eqz p1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    invoke-virtual {p1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/q;->a(I)V

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Landroid/content/Context;)V

    .line 379
    return-void
.end method

.method public final b(ILjava/lang/Integer;Ljava/lang/Integer;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/issue/o;->b(I)Lcom/zinio/mobile/android/view/issue/h;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_2

    .line 438
    if-eqz p2, :cond_0

    .line 439
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zinio/mobile/android/view/issue/h;->b(II)I

    move-result v0

    .line 445
    :goto_0
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getWidth()I

    move-result v1

    sub-int v0, v1, v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 446
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 447
    iput v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->m:I

    .line 458
    :goto_1
    return v0

    .line 441
    :cond_0
    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/h;->d()I

    move-result v0

    goto :goto_0

    .line 449
    :cond_1
    iput v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->n:I

    goto :goto_1

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 453
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->m:I

    goto :goto_1

    .line 455
    :cond_3
    iget v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->n:I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 251
    const/4 v1, 0x0

    .line 252
    packed-switch v0, :pswitch_data_0

    .line 296
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->l:Lcom/zinio/mobile/android/view/issue/r;

    invoke-virtual {v0, p0, p1}, Lcom/zinio/mobile/android/view/issue/r;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 299
    :goto_0
    return v0

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    sget-object v2, Lcom/zinio/mobile/android/view/issue/g;->c:Lcom/zinio/mobile/android/view/issue/g;

    invoke-virtual {v0, v2}, Lcom/zinio/mobile/android/view/issue/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 255
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->l:Lcom/zinio/mobile/android/view/issue/r;

    invoke-virtual {v0, p0, p1}, Lcom/zinio/mobile/android/view/issue/r;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 257
    :goto_1
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->o()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->a:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    .line 263
    :goto_2
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    .line 264
    iget v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    const/16 v3, -0x64

    if-ge v2, v3, :cond_5

    .line 265
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/j;->c(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/j;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 267
    :cond_1
    sget-object v2, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    .line 283
    :goto_3
    sget-object v3, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v2, v3}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 284
    iget-object v3, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v3}, Lcom/zinio/mobile/android/a/a/j;->n()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x2

    .line 285
    :goto_4
    iget-object v4, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v4}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    neg-int v3, v3

    .line 288
    :cond_2
    iget-object v4, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    sget-object v5, Lcom/zinio/mobile/android/view/issue/f;->a:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v2, v5}, Lcom/zinio/mobile/android/view/issue/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    sub-int/2addr v1, v3

    :goto_5
    invoke-static {v4, v1}, Lcom/zinio/mobile/android/d/a;->a(Lcom/zinio/mobile/android/a/a/j;I)Z

    goto :goto_0

    .line 260
    :cond_3
    sget-object v1, Lcom/zinio/mobile/android/view/issue/g;->b:Lcom/zinio/mobile/android/view/issue/g;

    iput-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->e:Lcom/zinio/mobile/android/view/issue/g;

    goto :goto_2

    .line 269
    :cond_4
    sget-object v2, Lcom/zinio/mobile/android/view/issue/f;->c:Lcom/zinio/mobile/android/view/issue/f;

    goto :goto_3

    .line 271
    :cond_5
    iget v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    if-gez v2, :cond_6

    .line 272
    sget-object v2, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    goto :goto_3

    .line 273
    :cond_6
    iget v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->f:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_7

    .line 274
    sget-object v2, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    goto :goto_3

    .line 276
    :cond_7
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/j;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2, v1}, Lcom/zinio/mobile/android/a/a/j;->c(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v2}, Lcom/zinio/mobile/android/a/a/j;->W()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 278
    :cond_9
    sget-object v2, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    goto :goto_3

    .line 280
    :cond_a
    sget-object v2, Lcom/zinio/mobile/android/view/issue/f;->a:Lcom/zinio/mobile/android/view/issue/f;

    goto :goto_3

    .line 284
    :cond_b
    const/4 v3, 0x1

    goto :goto_4

    .line 288
    :cond_c
    add-int/2addr v1, v3

    goto :goto_5

    .line 292
    :cond_d
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    sget-object v2, Lcom/zinio/mobile/android/view/issue/f;->b:Lcom/zinio/mobile/android/view/issue/f;

    invoke-virtual {v1, v2}, Lcom/zinio/mobile/android/view/issue/q;->a(Lcom/zinio/mobile/android/view/issue/f;)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_1

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 226
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 227
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    invoke-virtual {v0, p3, p4}, Lcom/zinio/mobile/android/view/issue/o;->a(II)V

    .line 228
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/issue/q;->a(Landroid/view/SurfaceHolder;)V

    .line 229
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/q;->a(I)V

    .line 230
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Landroid/content/Context;)V

    .line 231
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter

    .prologue
    .line 234
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 235
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/zinio/mobile/android/view/issue/o;->a(II)V

    .line 237
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    invoke-virtual {v0, p1}, Lcom/zinio/mobile/android/view/issue/q;->a(Landroid/view/SurfaceHolder;)V

    .line 238
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    iget-object v1, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->d:Lcom/zinio/mobile/android/a/a/j;

    invoke-virtual {v1}, Lcom/zinio/mobile/android/a/a/j;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/q;->a(I)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->k:Z

    .line 240
    invoke-virtual {p0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a(Landroid/content/Context;)V

    .line 241
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->c:Lcom/zinio/mobile/android/view/issue/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zinio/mobile/android/view/issue/q;->a(Landroid/view/SurfaceHolder;)V

    .line 245
    iget-object v0, p0, Lcom/zinio/mobile/android/view/issue/SmartSurfaceView;->a:Lcom/zinio/mobile/android/view/issue/o;

    invoke-virtual {v0}, Lcom/zinio/mobile/android/view/issue/o;->c()V

    .line 246
    return-void
.end method
