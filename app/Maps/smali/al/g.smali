.class public Lal/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Law/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lal/g;->d()Law/e;

    move-result-object v0

    iput-object v0, p0, Lal/g;->a:Law/e;

    return-void
.end method

.method private a(I)V
    .locals 2

    iget-object v0, p0, Lal/g;->a:Law/e;

    iget-object v1, p0, Lal/g;->a:Law/e;

    invoke-virtual {v1, p1}, Law/e;->d(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p1, v1}, Law/e;->h(II)V

    return-void
.end method

.method private static d()Law/e;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Law/e;

    sget-object v1, Lbd/a;->A:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    return-object v0
.end method


# virtual methods
.method public a(II)Law/e;
    .locals 2

    iget-object v0, p0, Lal/g;->a:Law/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Law/e;->h(II)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Law/e;->h(II)V

    invoke-static {}, Lal/g;->d()Law/e;

    move-result-object v1

    iput-object v1, p0, Lal/g;->a:Law/e;

    return-object v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lal/g;->a(I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lal/g;->a(I)V

    if-eqz p1, :cond_0

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lal/g;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lal/g;->a(I)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lal/g;->a(I)V

    return-void
.end method
