.class public Lh/cv;
.super Lh/eR;


# instance fields
.field private a:I

.field private b:Lcom/google/googlenav/c;

.field private c:Lcom/google/googlenav/bL;

.field private d:Lcom/google/googlenav/e;

.field private final e:Lcom/google/googlenav/bz;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/e;Lh/eY;Lcom/google/googlenav/bL;)V
    .locals 1

    invoke-direct {p0, p2}, Lh/eR;-><init>(Lh/eY;)V

    const/4 v0, -0x1

    iput v0, p0, Lh/cv;->a:I

    new-instance v0, Lh/ax;

    invoke-direct {v0, p0}, Lh/ax;-><init>(Lh/cv;)V

    iput-object v0, p0, Lh/cv;->e:Lcom/google/googlenav/bz;

    iput-object p1, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iput-object p3, p0, Lh/cv;->c:Lcom/google/googlenav/bL;

    return-void
.end method

.method static synthetic a(Lh/cv;)Lcom/google/googlenav/bL;
    .locals 1

    iget-object v0, p0, Lh/cv;->c:Lcom/google/googlenav/bL;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lx/G;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p0, :cond_1

    sget-object v1, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    if-eqz p1, :cond_2

    sget-object v1, Lcom/google/googlenav/ui/av;->aJ:Lcom/google/googlenav/ui/av;

    invoke-static {p1, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Lx/G;

    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-direct {v1, v0, v3}, Lx/G;-><init>(Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private a(I)V
    .locals 0

    iput p1, p0, Lh/cv;->a:I

    invoke-direct {p0}, Lh/cv;->o()V

    return-void
.end method

.method private a(ILcom/google/googlenav/bz;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/e;->b(Lcom/google/googlenav/c;Lcom/google/googlenav/bz;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1, v3, p2}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1, v4, p2}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/e;->b(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1, v3, p2}, Lcom/google/googlenav/e;->b(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/e;->b(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1, v2, p2}, Lcom/google/googlenav/e;->b(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v0, v1, v4, p2}, Lcom/google/googlenav/e;->b(Lcom/google/googlenav/c;ILcom/google/googlenav/bz;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x517
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/util/Vector;II)V
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-static {p1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private j()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->R()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    invoke-virtual {v1}, Lf/h;->b()I

    move-result v1

    iget-object v2, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v2

    invoke-virtual {v2}, Lf/h;->d()I

    move-result v2

    invoke-static {v1, v2}, Lf/h;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->t()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "num"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v2}, Lcom/google/googlenav/c;->t()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "start"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    move v6, v2

    move v2, v1

    move v1, v6

    :goto_2
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "/maps/place"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "cid"

    iget-object v5, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v5}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "view"

    const-string v5, "feature"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "mcsrc"

    const-string v5, "photo"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    if-eqz v2, :cond_0

    const-string v4, "start"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "num"

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_0
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "http"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "www.google.com"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "/maps/photos/flagImage"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "hl"

    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "latlng"

    invoke-virtual {v3, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "photofeatureurl"

    invoke-virtual {v0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :try_start_0
    iget-object v0, p0, Lh/cv;->g:Lh/eY;

    invoke-virtual {v0}, Lh/eY;->A()Lcom/google/googlenav/g;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/g;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_1
    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v1}, Lcom/google/googlenav/c;->u()[Lcom/google/googlenav/bu;

    move-result-object v1

    array-length v1, v1

    move v2, v1

    move v1, v4

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    move v2, v4

    goto/16 :goto_1

    :cond_3
    move v1, v4

    goto/16 :goto_0
.end method

.method private n()I
    .locals 2

    const/4 v1, 0x3

    iget v0, p0, Lh/cv;->a:I

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x4b

    const-string v1, "b"

    invoke-static {v0, v1}, Lac/g;->a(ILjava/lang/String;)Z

    const/4 v0, -0x1

    iput v0, p0, Lh/cv;->a:I

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lh/cv;->a(I)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lh/cv;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/cv;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/cv;->a(Lx/J;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lh/cv;->j:Lx/J;

    :cond_0
    invoke-virtual {p0}, Lh/cv;->i()Lx/B;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lx/k;->a(Lx/B;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/cv;->j:Lx/J;

    iget-object v0, p0, Lh/cv;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public T_()V
    .locals 1

    iget-object v0, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lh/cv;->v()V

    iput-object v0, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {p0}, Lh/cv;->u()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/cv;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x7

    invoke-static {v0}, Lax/c;->a(I)Lax/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lh/cv;->a(Lax/c;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lh/cv;->n()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lh/cv;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected a()V
    .locals 0

    invoke-direct {p0}, Lh/cv;->o()V

    return-void
.end method

.method public a(Lcom/google/googlenav/c;)V
    .locals 0

    iput-object p1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .locals 4

    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0, v2}, Lh/cv;->a(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lh/cv;->a(I)V

    move v0, v3

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/e;->c(Lcom/google/googlenav/c;Lcom/google/googlenav/bz;)V

    invoke-direct {p0, v3}, Lh/cv;->a(I)V

    move v0, v3

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lh/cv;->c:Lcom/google/googlenav/bL;

    const/16 v1, 0x3be

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/bL;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lh/cv;->e:Lcom/google/googlenav/bz;

    invoke-direct {p0, p1, v0}, Lh/cv;->a(ILcom/google/googlenav/bz;)V

    invoke-direct {p0, v2}, Lh/cv;->a(I)V

    move v0, v3

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lh/cv;->m()V

    invoke-virtual {p0}, Lh/cv;->v()V

    move v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x514
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-super {p0}, Lh/eR;->b()V

    return-void
.end method

.method public d()V
    .locals 2

    invoke-direct {p0}, Lh/cv;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lh/eR;->d()V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lh/cv;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lh/cv;->d:Lcom/google/googlenav/e;

    iget-object v1, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/e;->a(Lcom/google/googlenav/c;Lcom/google/googlenav/bz;)V

    const/4 v0, 0x0

    iput v0, p0, Lh/cv;->a:I

    return-void
.end method

.method protected i()Lx/B;
    .locals 7

    const/16 v6, 0x51b

    const/16 v5, 0x3c6

    const/4 v4, 0x0

    iget v0, p0, Lh/cv;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget v1, p0, Lh/cv;->a:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v4

    :goto_1
    invoke-static {v1, v4}, Lh/cv;->a(Ljava/lang/String;Ljava/lang/String;)Lx/G;

    move-result-object v1

    new-instance v2, Lx/B;

    iget-object v3, p0, Lh/cv;->b:Lcom/google/googlenav/c;

    invoke-virtual {v3}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0, v4}, Lx/B;-><init>(Ljava/lang/String;Lx/G;Ljava/util/Vector;[Lax/e;)V

    move-object v0, v2

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x3cd

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3cb

    const/16 v3, 0x514

    invoke-static {v0, v2, v3}, Lh/cv;->a(Ljava/util/Vector;II)V

    const/16 v2, 0x3ce

    const/16 v3, 0x515

    invoke-static {v0, v2, v3}, Lh/cv;->a(Ljava/util/Vector;II)V

    const/16 v2, 0x3ca

    const/16 v3, 0x517

    invoke-static {v0, v2, v3}, Lh/cv;->a(Ljava/util/Vector;II)V

    const/16 v2, 0x3cc

    const/16 v3, 0x520

    invoke-static {v0, v2, v3}, Lh/cv;->a(Ljava/util/Vector;II)V

    invoke-direct {p0}, Lh/cv;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2d5

    const/16 v3, 0x521

    invoke-static {v0, v2, v3}, Lh/cv;->a(Ljava/util/Vector;II)V

    :cond_1
    const/16 v2, 0x516

    invoke-static {v0, v5, v2}, Lh/cv;->a(Ljava/util/Vector;II)V

    goto :goto_1

    :pswitch_1
    const/16 v1, 0x3c4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c9

    const/16 v3, 0x518

    invoke-static {v0, v2, v3}, Lh/cv;->a(Ljava/util/Vector;II)V

    const/16 v2, 0x3c8

    const/16 v3, 0x519

    invoke-static {v0, v2, v3}, Lh/cv;->a(Ljava/util/Vector;II)V

    const/16 v2, 0x3c2

    invoke-static {v0, v2, v6}, Lh/cv;->a(Ljava/util/Vector;II)V

    const/16 v2, 0x51a

    invoke-static {v0, v5, v2}, Lh/cv;->a(Ljava/util/Vector;II)V

    goto :goto_1

    :pswitch_2
    const/16 v1, 0x3cf

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3c5

    const/16 v3, 0x51c

    invoke-static {v0, v2, v3}, Lh/cv;->a(Ljava/util/Vector;II)V

    const/16 v2, 0x3c1

    const/16 v3, 0x51d

    invoke-static {v0, v2, v3}, Lh/cv;->a(Ljava/util/Vector;II)V

    const/16 v2, 0x3c7

    const/16 v3, 0x51e

    invoke-static {v0, v2, v3}, Lh/cv;->a(Ljava/util/Vector;II)V

    const/16 v2, 0x3c3

    invoke-static {v0, v2, v6}, Lh/cv;->a(Ljava/util/Vector;II)V

    const/16 v2, 0x51f

    invoke-static {v0, v5, v2}, Lh/cv;->a(Ljava/util/Vector;II)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
