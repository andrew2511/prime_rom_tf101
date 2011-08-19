.class public Lcom/google/googlenav/ui/android/q;
.super Lcom/google/googlenav/ui/am;


# static fields
.field private static final d:Landroid/graphics/PathEffect;

.field private static final e:Landroid/graphics/Paint;


# instance fields
.field private final f:Lcom/google/googlenav/ui/android/as;

.field private final g:Lf/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sput-object v0, Lcom/google/googlenav/ui/android/q;->d:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/q;->e:Landroid/graphics/Paint;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/am;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/android/as;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/as;-><init>(Lcom/google/googlenav/ui/android/q;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/q;->f:Lcom/google/googlenav/ui/android/as;

    new-instance v0, Lf/t;

    invoke-direct {v0}, Lf/t;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/q;->g:Lf/t;

    return-void
.end method

.method static synthetic a(Landroid/graphics/Bitmap;LaB/f;)Landroid/graphics/Canvas;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/android/q;->b(Landroid/graphics/Bitmap;LaB/f;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/graphics/Bitmap;LaB/f;)Landroid/graphics/Canvas;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/android/q;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method static synthetic b()Landroid/graphics/PathEffect;
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/android/q;->d:Landroid/graphics/PathEffect;

    return-object v0
.end method


# virtual methods
.method protected a(Lf/P;Lf/m;)Lk/l;
    .locals 11

    const/4 v9, 0x0

    invoke-virtual {p1}, Lf/P;->n()Lk/l;

    move-result-object v8

    :try_start_0
    move-object v0, v8

    check-cast v0, LaB/f;

    move-object v1, v0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lf/m;->f()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, LaB/f;->f()I

    move-result v2

    invoke-virtual {v1}, LaB/f;->e()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/googlenav/ui/android/q;->b(Landroid/graphics/Bitmap;LaB/f;)Landroid/graphics/Canvas;

    move-result-object v3

    iget-object v4, p0, Lcom/google/googlenav/ui/android/q;->g:Lf/t;

    invoke-virtual {v4, v3}, Lf/t;->a(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/google/googlenav/ui/android/q;->c:Lf/n;

    iget-object v5, p0, Lcom/google/googlenav/ui/android/q;->g:Lf/t;

    invoke-virtual {v4, p2, v5}, Lf/n;->a(Lf/m;Lf/i;)V

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    :goto_0
    iget-object v4, p0, Lcom/google/googlenav/ui/android/q;->f:Lcom/google/googlenav/ui/android/as;

    invoke-virtual {v4, v2, v3, v1}, Lcom/google/googlenav/ui/android/as;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;LaB/f;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->b:Lcom/google/googlenav/ui/J;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lf/P;->c()Lf/K;

    move-result-object v7

    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->b:Lcom/google/googlenav/ui/J;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->f:Lcom/google/googlenav/ui/android/as;

    invoke-virtual {v7}, Lf/K;->f()I

    move-result v3

    invoke-virtual {v7}, Lf/K;->g()I

    move-result v4

    const/16 v5, 0x100

    const/16 v6, 0x100

    invoke-virtual {v7}, Lf/K;->e()Lf/l;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/google/googlenav/ui/J;->a(Lcom/google/googlenav/ui/aR;IIIILf/l;)V

    :cond_0
    iget-object v1, p0, Lcom/google/googlenav/ui/android/q;->f:Lcom/google/googlenav/ui/android/as;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/as;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, LaB/f;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/q;->f:Lcom/google/googlenav/ui/android/as;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/as;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, LaB/f;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v8}, Lk/l;->h()V

    :goto_1
    return-object v1

    :cond_1
    invoke-interface {v8}, Lk/l;->h()V

    move-object v1, v9

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Lk/l;->h()V

    throw v1

    :cond_2
    move-object v2, v9

    move-object v3, v9

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
