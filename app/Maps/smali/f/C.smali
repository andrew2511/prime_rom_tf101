.class public Lf/C;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lf/h;

.field private final b:Lf/l;

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>(Lf/h;Lf/l;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lf/C;-><init>(Lf/h;Lf/l;IZ)V

    return-void
.end method

.method public constructor <init>(Lf/h;Lf/l;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/C;->a:Lf/h;

    iput-object p2, p0, Lf/C;->b:Lf/l;

    iput p3, p0, Lf/C;->c:I

    iput-boolean p4, p0, Lf/C;->d:Z

    return-void
.end method

.method public static g()Lf/C;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lf/C;

    new-instance v1, Lf/h;

    invoke-direct {v1, v3, v3}, Lf/h;-><init>(II)V

    const/4 v2, 0x1

    invoke-static {v2}, Lf/l;->b(I)Lf/l;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lf/C;-><init>(Lf/h;Lf/l;I)V

    return-object v0
.end method


# virtual methods
.method public a(I)Lf/C;
    .locals 4

    new-instance v0, Lf/C;

    iget-object v1, p0, Lf/C;->a:Lf/h;

    iget-object v2, p0, Lf/C;->b:Lf/l;

    iget-boolean v3, p0, Lf/C;->d:Z

    invoke-direct {v0, v1, v2, p1, v3}, Lf/C;-><init>(Lf/h;Lf/l;IZ)V

    return-object v0
.end method

.method public a(Lf/h;)Lf/C;
    .locals 4

    new-instance v0, Lf/C;

    iget-object v1, p0, Lf/C;->b:Lf/l;

    iget v2, p0, Lf/C;->c:I

    iget-boolean v3, p0, Lf/C;->d:Z

    invoke-direct {v0, p1, v1, v2, v3}, Lf/C;-><init>(Lf/h;Lf/l;IZ)V

    return-object v0
.end method

.method public a(Lf/l;)Lf/C;
    .locals 4

    new-instance v0, Lf/C;

    iget-object v1, p0, Lf/C;->a:Lf/h;

    iget v2, p0, Lf/C;->c:I

    iget-boolean v3, p0, Lf/C;->d:Z

    invoke-direct {v0, v1, p1, v2, v3}, Lf/C;-><init>(Lf/h;Lf/l;IZ)V

    return-object v0
.end method

.method public a(Z)Lf/C;
    .locals 4

    new-instance v0, Lf/C;

    iget-object v1, p0, Lf/C;->a:Lf/h;

    iget-object v2, p0, Lf/C;->b:Lf/l;

    iget v3, p0, Lf/C;->c:I

    invoke-direct {v0, v1, v2, v3, p1}, Lf/C;-><init>(Lf/h;Lf/l;IZ)V

    return-object v0
.end method

.method public a()Lf/h;
    .locals 1

    iget-object v0, p0, Lf/C;->a:Lf/h;

    return-object v0
.end method

.method public b()Lf/l;
    .locals 1

    iget-object v0, p0, Lf/C;->b:Lf/l;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lf/C;->c:I

    return v0
.end method

.method public d()Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lf/C;->c:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 2

    iget v0, p0, Lf/C;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lf/C;->d:Z

    return v0
.end method
