.class public Lcom/google/googlenav/ui/wizard/android/f;
.super Lh/eR;

# interfaces
.implements Lo/T;


# instance fields
.field private a:Lcom/google/googlenav/ui/wizard/android/d;

.field private volatile b:Law/e;

.field private final c:I

.field private d:LI/C;


# direct methods
.method public constructor <init>(Lh/eY;I)V
    .locals 1

    invoke-virtual {p1}, Lh/eY;->v()LaU/a;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lh/eR;-><init>(Lh/eY;LaU/a;)V

    iput p2, p0, Lcom/google/googlenav/ui/wizard/android/f;->c:I

    return-void
.end method

.method public static a(Ljava/lang/String;)LaB/f;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, LaB/f;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, LaB/f;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "HISTORY_SUMMARY_WIZARD"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "HISTORY_SUMMARY_WIZARD"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/android/f;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    return-object v0
.end method

.method private a(Lcom/google/googlenav/ui/wizard/android/b;)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/Y;->a()LT/c;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/android/i;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/googlenav/ui/wizard/android/i;-><init>(Lcom/google/googlenav/ui/wizard/android/f;LT/c;Lcom/google/googlenav/ui/wizard/android/b;)V

    invoke-virtual {v1}, LT/d;->b()V

    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/android/f;)Lx/J;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->j:Lx/J;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/android/f;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/android/f;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/android/f;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/android/f;)LI/C;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->d:LI/C;

    return-object v0
.end method

.method static synthetic g(Lcom/google/googlenav/ui/wizard/android/f;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    return-object v0
.end method

.method static synthetic h(Lcom/google/googlenav/ui/wizard/android/f;)Law/e;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->b:Law/e;

    return-object v0
.end method

.method static synthetic i(Lcom/google/googlenav/ui/wizard/android/f;)Lh/eY;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    return-object v0
.end method

.method private j()V
    .locals 4

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    new-instance v1, Lo/aa;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/google/googlenav/ui/wizard/android/f;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lo/aa;-><init>(Lo/T;I)V

    invoke-virtual {v0, v1}, Lak/h;->c(Lak/d;)V

    return-void
.end method

.method private m()V
    .locals 5

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->b:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    new-instance v0, LI/C;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/android/f;->b:Law/e;

    invoke-direct {v0, v1, p0}, LI/C;-><init>(Law/e;Lcom/google/googlenav/ui/wizard/android/f;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->d:LI/C;

    new-instance v0, Lcom/google/googlenav/ui/wizard/android/k;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/android/k;-><init>(Lcom/google/googlenav/ui/wizard/android/f;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    new-instance v2, Lx/z;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/android/f;->d:LI/C;

    invoke-direct {v2, v3, v0}, Lx/z;-><init>(LI/n;LI/j;)V

    invoke-virtual {v1, v2, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->j:Lx/J;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->j:Lx/J;

    invoke-interface {v0, v4}, Lx/J;->c(I)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lx/z;

    new-instance v1, LI/G;

    invoke-direct {v1, p0}, LI/G;-><init>(Lcom/google/googlenav/ui/wizard/android/f;)V

    invoke-direct {v0, v1}, Lx/z;-><init>(LI/n;)V

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->j:Lx/J;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->j:Lx/J;

    invoke-interface {v0, v4}, Lx/J;->c(I)V

    goto :goto_0
.end method


# virtual methods
.method public T_()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->a:Lcom/google/googlenav/ui/wizard/android/d;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/googlenav/ui/wizard/android/f;->a:Lcom/google/googlenav/ui/wizard/android/d;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/f;->v()V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/android/f;->a(Lcom/google/googlenav/ui/wizard/android/d;)V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    const/4 v0, 0x4

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->f()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/f;->v()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a()V
    .locals 7

    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/android/f;->j()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    const/16 v1, 0x193

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lh/l;->a:Lh/fc;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lh/eY;->a(Ljava/lang/String;Lak/i;Lh/fc;JZ)V

    invoke-static {}, Lo/A;->l()V

    return-void
.end method

.method public a(Law/e;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/f;->b:Law/e;

    invoke-virtual {p1, v2}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/android/b;

    sget-object v1, Lcom/google/googlenav/ui/wizard/android/b;->a:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/googlenav/ui/wizard/android/b;->b:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lcom/google/googlenav/ui/wizard/android/b;->c:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/googlenav/ui/wizard/android/b;->d:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v2, v0, v1

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/android/b;->a()I

    move-result v4

    invoke-static {p1, v4}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/wizard/android/f;->a(Lcom/google/googlenav/ui/wizard/android/b;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/android/f;->m()V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/android/d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/android/f;->a:Lcom/google/googlenav/ui/wizard/android/d;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/android/f;->u()V

    return-void
.end method

.method public a(Lh/dP;)V
    .locals 6

    const/4 v3, -0x1

    new-instance v0, Law/e;

    sget-object v1, LaG/b;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    sget-object v1, Lcom/google/googlenav/ui/wizard/android/m;->a:[I

    invoke-virtual {p1}, Lh/dP;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move v1, v3

    move v2, v3

    :goto_0
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/googlenav/ui/wizard/android/f;->b:Law/e;

    invoke-static {v4, v2}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Law/e;->a(ILjava/lang/String;)V

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/android/f;->b:Law/e;

    invoke-virtual {v3, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Law/e;->a(ILaw/e;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    new-instance v3, Lcom/google/googlenav/ui/wizard/android/j;

    invoke-direct {v3, p0, p1}, Lcom/google/googlenav/ui/wizard/android/j;-><init>(Lcom/google/googlenav/ui/wizard/android/f;Lh/dP;)V

    invoke-virtual {v2, v0, p1, v1, v3}, Lh/eY;->a(Law/e;Lh/dP;ZLh/aZ;)V

    return-void

    :pswitch_0
    invoke-static {}, Lo/A;->v()V

    const/16 v1, 0xe

    const/16 v2, 0x10

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lo/A;->w()V

    const/16 v1, 0xf

    const/16 v2, 0x11

    move v5, v2

    move v2, v1

    move v1, v5

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected b()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/google/googlenav/ui/wizard/android/f;->b:Law/e;

    iput-object v4, p0, Lcom/google/googlenav/ui/wizard/android/f;->d:LI/C;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/googlenav/ui/wizard/android/b;

    sget-object v1, Lcom/google/googlenav/ui/wizard/android/b;->a:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v2, Lcom/google/googlenav/ui/wizard/android/b;->b:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/googlenav/ui/wizard/android/b;->c:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/googlenav/ui/wizard/android/b;->d:Lcom/google/googlenav/ui/wizard/android/b;

    aput-object v2, v0, v1

    array-length v1, v0

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/android/b;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->a:Lcom/google/googlenav/ui/wizard/android/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->a:Lcom/google/googlenav/ui/wizard/android/d;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/android/d;->a()V

    iput-object v4, p0, Lcom/google/googlenav/ui/wizard/android/f;->a:Lcom/google/googlenav/ui/wizard/android/d;

    :cond_1
    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public h()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/android/f;->g:Lh/eY;

    const/16 v1, 0x139

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x123

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x122

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Lcom/google/googlenav/ui/wizard/android/l;

    invoke-direct {v8, p0}, Lcom/google/googlenav/ui/wizard/android/l;-><init>(Lcom/google/googlenav/ui/wizard/android/f;)V

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Lh/eY;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLh/eJ;)V

    return-void
.end method
