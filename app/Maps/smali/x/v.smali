.class public Lx/v;
.super Lx/z;


# instance fields
.field public a:Lu/g;

.field public b:I

.field public final c:Lcom/google/googlenav/ui/bx;

.field public final d:Lcom/google/googlenav/ui/bx;

.field public final e:Lcom/google/googlenav/ui/bx;


# direct methods
.method public constructor <init>(ILjava/lang/String;[Lax/e;Lu/g;ILcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;Lcom/google/googlenav/ui/bx;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lx/z;-><init>(IILjava/lang/String;[Lax/e;)V

    iput-object p4, p0, Lx/v;->a:Lu/g;

    iput p5, p0, Lx/v;->b:I

    iput-object p6, p0, Lx/v;->c:Lcom/google/googlenav/ui/bx;

    iput-object p7, p0, Lx/v;->d:Lcom/google/googlenav/ui/bx;

    iput-object p8, p0, Lx/v;->e:Lcom/google/googlenav/ui/bx;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lx/v;->b()Lu/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lu/h;
    .locals 1

    iget-object v0, p0, Lx/v;->a:Lu/g;

    invoke-virtual {v0}, Lu/g;->j_()Lu/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    invoke-virtual {p0}, Lx/v;->d()Lu/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Lu/h;
    .locals 1

    iget-object v0, p0, Lx/v;->a:Lu/g;

    invoke-virtual {v0}, Lu/g;->k_()Lu/h;

    move-result-object v0

    return-object v0
.end method
