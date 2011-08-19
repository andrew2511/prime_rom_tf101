.class public abstract Lcom/google/googlenav/ui/P;
.super Ljava/lang/Object;

# interfaces
.implements Lac/h;
.implements Lf/q;


# instance fields
.field protected final a:Lf/v;

.field protected b:Z

.field protected c:Z

.field private d:Lcom/google/googlenav/ui/bo;


# direct methods
.method public constructor <init>(Lf/v;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/ui/P;->a:Lf/v;

    iput-boolean v0, p0, Lcom/google/googlenav/ui/P;->c:Z

    iput-boolean v0, p0, Lcom/google/googlenav/ui/P;->b:Z

    invoke-static {p0}, Lac/i;->a(Lac/h;)V

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/P;->a:Lf/v;

    invoke-virtual {v0}, Lf/v;->c()Lf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/l;->a(I)I

    move-result v0

    return v0
.end method

.method protected abstract a()V
.end method

.method public a(LaF/a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/P;->d:Lcom/google/googlenav/ui/bo;

    return-void
.end method

.method protected abstract a(Lf/l;II)V
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public final b(Lf/l;II)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/P;->a()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/googlenav/ui/P;->a(Lf/l;II)V

    return-void
.end method

.method public abstract b()Z
.end method

.method protected abstract c()V
.end method

.method public d()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/P;->c:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/google/googlenav/ui/P;->c:Z

    iput-boolean v1, p0, Lcom/google/googlenav/ui/P;->b:Z

    invoke-virtual {p0}, Lcom/google/googlenav/ui/P;->c()V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f()V
    .locals 0

    invoke-static {p0}, Lac/i;->c(Lac/h;)V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/P;->b:Z

    return v0
.end method
