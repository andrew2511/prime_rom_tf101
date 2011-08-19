.class public final Laj/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Law/e;

.field private static volatile b:Laj/g;

.field private static volatile c:Laj/e;

.field private static volatile d:Laj/f;

.field private static volatile e:Laj/a;

.field private static f:Lcom/google/googlenav/ui/bU;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Laj/b;->a(Lcom/google/googlenav/ui/bU;)V

    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Laj/g;

    invoke-static {}, Laj/g;->o()Law/e;

    move-result-object v1

    invoke-direct {v0, v1}, Laj/g;-><init>(Law/e;)V

    sput-object v0, Laj/b;->b:Laj/g;

    new-instance v0, Laj/e;

    invoke-static {}, Laj/e;->a()Law/e;

    move-result-object v1

    invoke-direct {v0, v1}, Laj/e;-><init>(Law/e;)V

    sput-object v0, Laj/b;->c:Laj/e;

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Laj/g;
    .locals 1

    sget-object v0, Laj/b;->b:Laj/g;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Law/e;
    .locals 3

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-interface {v0, p0}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Law/e;

    sget-object v2, Ls/q;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v0}, Law/e;->a([B)Law/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {}, Laj/b;->d()Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lak/h;)V
    .locals 2

    const-class v0, Laj/b;

    monitor-enter v0

    :try_start_0
    const-string v1, "ServerControlledParametersManager.data"

    invoke-static {p0, v1}, Laj/b;->a(Lak/h;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static a(Lak/h;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Laj/b;->a:Law/e;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Laj/b;->a(Ljava/lang/String;)Law/e;

    move-result-object v0

    sput-object v0, Laj/b;->a:Law/e;

    sget-object v0, Laj/b;->a:Law/e;

    invoke-virtual {v0, v3}, Law/e;->i(I)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    sget-object v2, Laj/b;->a:Law/e;

    invoke-virtual {v2, v3, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-static {v2}, Laj/b;->c(Law/e;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_0

    new-instance v0, Laj/c;

    invoke-direct {v0, p1}, Laj/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lak/h;->c(Lak/d;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/ui/bU;)V
    .locals 0

    sput-object p0, Laj/b;->f:Lcom/google/googlenav/ui/bU;

    return-void
.end method

.method static synthetic a(Law/e;)Z
    .locals 1

    invoke-static {p0}, Laj/b;->c(Law/e;)Z

    move-result v0

    return v0
.end method

.method protected static a(Law/e;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    invoke-virtual {p0}, Law/e;->f()[B

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Laj/f;
    .locals 1

    sget-object v0, Laj/b;->d:Laj/f;

    return-object v0
.end method

.method static synthetic b(Law/e;)V
    .locals 0

    invoke-static {p0}, Laj/b;->d(Law/e;)V

    return-void
.end method

.method public static c()Laj/a;
    .locals 1

    sget-object v0, Laj/b;->e:Laj/a;

    return-object v0
.end method

.method private static c(Law/e;)Z
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, -0x1

    invoke-static {p0, v2, v0}, Law/b;->c(Law/e;II)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    sget-object v1, Laj/b;->b:Laj/g;

    if-eqz v1, :cond_0

    sget-object v1, Laj/b;->b:Laj/g;

    invoke-virtual {v1, v0}, Laj/g;->a(Law/e;)V

    invoke-static {}, Laj/b;->f()V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    new-instance v1, Laj/g;

    invoke-direct {v1, v0}, Laj/g;-><init>(Law/e;)V

    sput-object v1, Laj/b;->b:Laj/g;

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5}, Law/e;->f(I)Law/e;

    move-result-object v0

    new-instance v1, Laj/e;

    invoke-direct {v1, v0}, Laj/e;-><init>(Law/e;)V

    sput-object v1, Laj/b;->c:Laj/e;

    move v0, v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v4}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4}, Law/e;->f(I)Law/e;

    move-result-object v0

    new-instance v1, Laj/f;

    invoke-direct {v1, v0}, Laj/f;-><init>(Law/e;)V

    sput-object v1, Laj/b;->d:Laj/f;

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->aj()V

    move v0, v2

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    new-instance v1, Laj/a;

    invoke-direct {v1, v0}, Laj/a;-><init>(Law/e;)V

    sput-object v1, Laj/b;->e:Laj/a;

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static d()Law/e;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/q;->b:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    new-instance v1, Law/e;

    sget-object v2, Ls/q;->c:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v4, v2}, Law/e;->h(II)V

    const/4 v2, 0x4

    invoke-static {}, Laj/g;->o()Law/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILaw/e;)V

    invoke-virtual {v0, v4, v1}, Law/e;->a(ILaw/e;)V

    new-instance v1, Law/e;

    sget-object v2, Ls/q;->c:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v4, v2}, Law/e;->h(II)V

    const/4 v2, 0x5

    invoke-static {}, Laj/f;->b()Law/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILaw/e;)V

    invoke-virtual {v0, v4, v1}, Law/e;->a(ILaw/e;)V

    new-instance v1, Law/e;

    sget-object v2, Ls/q;->c:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/4 v2, 0x6

    invoke-virtual {v1, v4, v2}, Law/e;->h(II)V

    const/16 v2, 0x8

    invoke-static {}, Laj/a;->g()Law/e;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Law/e;->b(ILaw/e;)V

    invoke-virtual {v0, v4, v1}, Law/e;->a(ILaw/e;)V

    return-object v0
.end method

.method private static d(Law/e;)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Law/e;->d(I)I

    move-result v0

    sget-object v1, Laj/b;->a:Law/e;

    invoke-virtual {v1, v4}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    sget-object v3, Laj/b;->a:Law/e;

    invoke-virtual {v3, v4, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {v3, v4}, Law/e;->d(I)I

    move-result v3

    if-ne v0, v3, :cond_1

    sget-object v0, Laj/b;->a:Law/e;

    invoke-virtual {v0, v4, v2}, Law/e;->g(II)V

    :cond_0
    sget-object v0, Laj/b;->a:Law/e;

    invoke-virtual {v0, v4, p0}, Law/e;->a(ILaw/e;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic e()Law/e;
    .locals 1

    sget-object v0, Laj/b;->a:Law/e;

    return-object v0
.end method

.method private static f()V
    .locals 1

    sget-object v0, Laj/b;->f:Lcom/google/googlenav/ui/bU;

    if-eqz v0, :cond_0

    sget-object v0, Laj/b;->f:Lcom/google/googlenav/ui/bU;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bU;->b()V

    :cond_0
    return-void
.end method
