.class public abstract LJ/e;
.super Ljava/lang/Object;

# interfaces
.implements LJ/m;


# instance fields
.field private a:I

.field protected volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LJ/e;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, LJ/e;->b:Z

    return-void
.end method


# virtual methods
.method protected a(LJ/a;)V
    .locals 2

    invoke-static {}, LJ/h;->a()LJ/h;

    move-result-object v0

    invoke-virtual {p0}, LJ/e;->a()I

    move-result v1

    invoke-virtual {v0, v1}, LJ/h;->b(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LJ/h;->a(LJ/a;Z)V

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, LJ/e;->a:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, LJ/e;->b:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "o"

    return-object v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LJ/e;->b:Z

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, LJ/e;->a:I

    return v0
.end method
