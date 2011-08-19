.class Lh/cr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/k;


# static fields
.field static final synthetic b:Z


# instance fields
.field private final a:Lo/aN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lh/dn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lh/cr;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lo/aN;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lh/cr;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lh/cr;->a:Lo/aN;

    return-void
.end method


# virtual methods
.method public R_()V
    .locals 1

    iget-object v0, p0, Lh/cr;->a:Lo/aN;

    invoke-virtual {v0, p0}, Lo/aN;->b(Lcom/google/googlenav/login/k;)V

    return-void
.end method

.method public S_()V
    .locals 0

    return-void
.end method

.method public a(Lh/eY;)V
    .locals 1

    iget-object v0, p0, Lh/cr;->a:Lo/aN;

    invoke-virtual {v0, p0}, Lo/aN;->a(Lcom/google/googlenav/login/k;)V

    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x195

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lh/eY;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lh/cr;->a:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->R_()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/google/googlenav/login/j;->k()Lcom/google/googlenav/login/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/j;->p()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/cr;->a:Lo/aN;

    invoke-virtual {v0}, Lo/aN;->b()V

    goto :goto_0
.end method

.method public an_()V
    .locals 2

    sget-boolean v0, Lh/cr;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Should have been removed before this"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lh/cr;->a:Lo/aN;

    invoke-virtual {v0, p0}, Lo/aN;->b(Lcom/google/googlenav/login/k;)V

    return-void
.end method

.method public ao_()V
    .locals 1

    iget-object v0, p0, Lh/cr;->a:Lo/aN;

    invoke-virtual {v0, p0}, Lo/aN;->b(Lcom/google/googlenav/login/k;)V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
