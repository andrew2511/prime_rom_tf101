.class public Lcom/google/googlenav/ui/bV;
.super Ljava/lang/Object;

# interfaces
.implements LA/f;
.implements Lf/q;


# static fields
.field private static final e:I


# instance fields
.field protected a:Lf/v;

.field protected b:Lk/l;

.field protected final c:LaF/a;

.field protected d:Z

.field private f:Lk/m;

.field private g:Lcom/google/googlenav/ui/x;

.field private h:LaF/a;

.field private i:I

.field private j:I

.field private k:Lcom/google/googlenav/ui/aJ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    sput v0, Lcom/google/googlenav/ui/bV;->e:I

    return-void
.end method

.method public constructor <init>(Lf/v;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    new-instance v0, LaF/a;

    invoke-direct {v0}, LaF/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bV;->h:LaF/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bV;->d:Z

    iput-object p1, p0, Lcom/google/googlenav/ui/bV;->a:Lf/v;

    return-void
.end method

.method public static b(I)I
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/bV;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 v0, p0, 0x2

    div-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, p0

    goto :goto_0
.end method

.method public static d(II)Z
    .locals 1

    sget v0, Lcom/google/googlenav/ui/bV;->e:I

    neg-int v0, v0

    if-lt p0, v0, :cond_0

    sget v0, Lcom/google/googlenav/ui/bV;->e:I

    if-gt p0, v0, :cond_0

    sget v0, Lcom/google/googlenav/ui/bV;->e:I

    neg-int v0, v0

    if-lt p1, v0, :cond_0

    sget v0, Lcom/google/googlenav/ui/bV;->e:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g()Z
    .locals 1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->a:Lf/v;

    invoke-virtual {v0}, Lf/v;->c()Lf/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/l;->a(I)I

    move-result v0

    return v0
.end method

.method protected a(II)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    if-nez v0, :cond_0

    iput p1, p0, Lcom/google/googlenav/ui/bV;->i:I

    iput p2, p0, Lcom/google/googlenav/ui/bV;->j:I

    invoke-static {p1}, Lcom/google/googlenav/ui/bV;->b(I)I

    move-result v0

    invoke-static {p2}, Lcom/google/googlenav/ui/bV;->b(I)I

    move-result v1

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v2

    invoke-virtual {v2}, Lac/m;->w()Lk/i;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, v0, v1, v3}, Lk/i;->a(IIZ)Lk/l;

    move-result-object v3

    iput-object v3, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    invoke-interface {v2}, Lk/l;->d()Lk/m;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/bV;->f:Lk/m;

    iget-object v2, p0, Lcom/google/googlenav/ui/bV;->f:Lk/m;

    invoke-static {v2, v0, v1}, Lcom/google/googlenav/ui/x;->b(Lk/m;II)Lcom/google/googlenav/ui/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/bV;->g:Lcom/google/googlenav/ui/x;

    :cond_0
    return-void

    :catch_0
    move-exception v3

    invoke-static {}, Lac/i;->b()V

    invoke-interface {v2, v0, v1, v4}, Lk/i;->a(IIZ)Lk/l;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    goto :goto_0
.end method

.method public final a(IIZ)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/googlenav/ui/bV;->d:Z

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->a:Lf/v;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf/v;->a(Lf/q;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->a:Lf/v;

    invoke-virtual {v0, p1, p2}, Lf/v;->c(II)V

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->a:Lf/v;

    iget-object v1, p0, Lcom/google/googlenav/ui/bV;->a:Lf/v;

    invoke-virtual {v1}, Lf/v;->d()Lf/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lf/v;->d(Lf/h;)V

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    invoke-virtual {v0, v2, v2}, LaF/a;->a(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->h:LaF/a;

    invoke-virtual {v0, v2, v2}, LaF/a;->a(II)V

    return-void
.end method

.method public a(LaF/a;)V
    .locals 2

    iget v0, p1, LaF/a;->a:I

    iget-object v1, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    iget v1, v1, LaF/a;->a:I

    add-int/2addr v0, v1

    iput v0, p1, LaF/a;->a:I

    iget v0, p1, LaF/a;->b:I

    iget-object v1, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    iget v1, v1, LaF/a;->b:I

    add-int/2addr v0, v1

    iput v0, p1, LaF/a;->b:I

    return-void
.end method

.method public a(Lax/b;Z)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lax/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bV;->e()V

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->a:Lf/v;

    invoke-virtual {v0, p0}, Lf/v;->a(Lf/q;)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->h:LaF/a;

    invoke-virtual {p1}, Lax/b;->k()I

    move-result v1

    invoke-virtual {p1}, Lax/b;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, LaF/a;->a(II)V

    iput-boolean v3, p0, Lcom/google/googlenav/ui/bV;->d:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lax/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bV;->d:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lax/b;->k()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bV;->h:LaF/a;

    iget v1, v1, LaF/a;->a:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lax/b;->l()I

    move-result v1

    iget-object v2, p0, Lcom/google/googlenav/ui/bV;->h:LaF/a;

    iget v2, v2, LaF/a;->b:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    iget v2, v2, LaF/a;->b:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    iget v3, v3, LaF/a;->a:I

    sub-int v3, v0, v3

    invoke-static {v3, v2}, Lcom/google/googlenav/ui/bV;->d(II)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    invoke-virtual {v2, v0, v1}, LaF/a;->a(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lax/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bV;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    iget v0, v0, LaF/a;->a:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    iget v1, v1, LaF/a;->b:I

    neg-int v1, v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/googlenav/ui/bV;->a(IIZ)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bV;->f()V

    goto :goto_0
.end method

.method public a(Lcom/google/googlenav/ui/aJ;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bV;->k:Lcom/google/googlenav/ui/aJ;

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/x;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->f()I

    move-result v2

    iget-object v3, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    invoke-interface {v3}, Lk/l;->f()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iget-object v3, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    iget v3, v3, LaF/a;->a:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    invoke-interface {v3}, Lk/l;->e()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    iget v3, v3, LaF/a;->b:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    invoke-interface {v0, v3, v1, v2}, Lk/m;->a(Lk/l;II)V

    return-void
.end method

.method public a(Lf/v;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/bV;->a:Lf/v;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bV;->d:Z

    return v0
.end method

.method public a(Lcom/google/googlenav/gesture/a;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ap()LA/c;
    .locals 3

    new-instance v0, LA/c;

    const-string v1, "DragBuffer"

    iget-object v2, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, LA/c;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    invoke-interface {v2}, Lk/l;->a()I

    move-result v2

    goto :goto_0
.end method

.method public b(II)Lcom/google/googlenav/ui/x;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/bV;->a(II)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->g:Lcom/google/googlenav/ui/x;

    return-object v0
.end method

.method public b(Lcom/google/googlenav/ui/x;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->b()Lk/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/googlenav/ui/x;->f()I

    move-result v2

    const v3, 0xded7d6

    invoke-interface {v0, v3}, Lk/m;->a(I)V

    invoke-interface {v0, v4, v4, v1, v2}, Lk/m;->b(IIII)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/googlenav/ui/bV;->i:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/bV;->j:I

    if-eq p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    invoke-interface {v0}, Lk/l;->b()V

    iput-object v1, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    iput-object v1, p0, Lcom/google/googlenav/ui/bV;->f:Lk/m;

    iput-object v1, p0, Lcom/google/googlenav/ui/bV;->g:Lcom/google/googlenav/ui/x;

    :cond_1
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final e()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->k:Lcom/google/googlenav/ui/aJ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->k:Lcom/google/googlenav/ui/aJ;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aJ;->a()V

    :cond_0
    return-void
.end method

.method protected final f()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->k:Lcom/google/googlenav/ui/aJ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->k:Lcom/google/googlenav/ui/aJ;

    invoke-interface {v0}, Lcom/google/googlenav/ui/aJ;->b()V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->b:Lk/l;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bV;->d:Z

    return-void
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    iget v0, v0, LaF/a;->a:I

    return v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/bV;->c:LaF/a;

    iget v0, v0, LaF/a;->b:I

    return v0
.end method
