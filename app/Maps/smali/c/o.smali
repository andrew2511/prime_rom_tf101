.class public Lc/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Law/e;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lc/o;->c:I

    return-void
.end method

.method public a(Law/e;)V
    .locals 0

    iput-object p1, p0, Lc/o;->b:Law/e;

    return-void
.end method

.method public a(Lcom/google/googlenav/c;)V
    .locals 1

    invoke-static {p1}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/c;)Law/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/o;->a(Law/e;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lc/o;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lc/o;->a:Z

    return v0
.end method

.method public b()Law/e;
    .locals 1

    iget-object v0, p0, Lc/o;->b:Law/e;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lc/o;->c:I

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/o;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc/o;->b:Law/e;

    const v0, 0x1869f

    iput v0, p0, Lc/o;->c:I

    return-void
.end method
