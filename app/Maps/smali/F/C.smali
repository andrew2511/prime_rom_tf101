.class public LF/C;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private b:LF/y;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LF/C;->a:I

    iput-object p2, p0, LF/C;->c:Ljava/lang/String;

    iput-object p3, p0, LF/C;->d:Ljava/lang/String;

    iput-object p4, p0, LF/C;->e:Ljava/lang/String;

    iput-object p5, p0, LF/C;->f:Ljava/lang/String;

    iput-boolean p6, p0, LF/C;->g:Z

    return-void
.end method

.method static synthetic a(Law/e;)LF/C;
    .locals 1

    invoke-static {p0}, LF/C;->b(Law/e;)LF/C;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LF/C;LF/y;)V
    .locals 0

    invoke-direct {p0, p1}, LF/C;->a(LF/y;)V

    return-void
.end method

.method private a(LF/y;)V
    .locals 0

    iput-object p1, p0, LF/C;->b:LF/y;

    return-void
.end method

.method private static b(Law/e;)LF/C;
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Law/e;->d(I)I

    move-result v1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x5

    invoke-static {p0, v0}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v7}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move-object v4, v0

    :goto_0
    invoke-virtual {p0, v6}, Law/e;->d(I)I

    move-result v0

    if-ne v0, v7, :cond_0

    :goto_1
    new-instance v0, LF/C;

    invoke-direct/range {v0 .. v6}, LF/C;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    :cond_1
    move-object v5, v4

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LF/C;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/C;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/C;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, LF/C;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LF/C;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/C;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/C;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, LF/C;->g:Z

    return v0
.end method

.method public g()LF/y;
    .locals 1

    iget-object v0, p0, LF/C;->b:LF/y;

    return-object v0
.end method
