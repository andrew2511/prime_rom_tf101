.class public abstract LJ/p;
.super LJ/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LJ/e;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(LJ/a;)V
    .locals 2

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    invoke-virtual {p0}, LJ/p;->a()I

    move-result v1

    invoke-virtual {v0, v1}, LJ/h;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, LJ/h;->a(LJ/a;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, LJ/p;->a_(Ljava/lang/String;)LJ/a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, LJ/p;->b:Z

    invoke-virtual {p0, v0}, LJ/p;->a(LJ/a;)V

    return-void
.end method

.method protected abstract a_(Ljava/lang/String;)LJ/a;
.end method
