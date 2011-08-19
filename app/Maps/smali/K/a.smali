.class LK/a;
.super Lak/m;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/Long;

.field private final d:LK/c;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LK/c;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, LK/a;->a:Landroid/content/Context;

    iput-object p2, p0, LK/a;->b:Ljava/lang/String;

    iput-object p3, p0, LK/a;->c:Ljava/lang/Long;

    iput-object p4, p0, LK/a;->d:LK/c;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LK/c;LK/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, LK/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;LK/c;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Law/e;

    sget-object v1, Ls/q;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v4, v1}, Law/e;->h(II)V

    iget-object v1, p0, LK/a;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, LK/a;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Law/e;->b(IJ)V

    :cond_0
    new-instance v1, Law/e;

    sget-object v2, Ls/q;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v1, v4, v0}, Law/e;->a(ILaw/e;)V

    invoke-virtual {v1}, Law/e;->d()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Law/e;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 8

    const/16 v7, 0x9

    const/4 v6, 0x1

    sget-object v0, Ls/q;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-virtual {v3, v6}, Law/e;->d(I)I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v7}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, LK/a;->a:Landroid/content/Context;

    iget-object v5, p0, LK/a;->b:Ljava/lang/String;

    invoke-static {v4, v3, v5}, LK/g;->a(Landroid/content/Context;Law/e;Ljava/lang/String;)Z

    invoke-virtual {v3, v7}, Law/e;->f(I)Law/e;

    move-result-object v3

    new-instance v4, LK/l;

    invoke-direct {v4, v3}, LK/l;-><init>(Law/e;)V

    invoke-static {v4}, LK/m;->a(LK/l;)LK/l;

    invoke-static {}, LK/m;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sput-boolean v6, LK/m;->a:Z

    iget-object v0, p0, LK/a;->d:LK/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, LK/a;->d:LK/c;

    invoke-interface {v0}, LK/c;->a()V

    :cond_2
    return v6
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
