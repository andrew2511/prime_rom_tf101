.class public LaD/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private final c:LaD/j;

.field private d:Lk/l;

.field private e:Lk/l;

.field private f:Lk/l;

.field private final g:Lk/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/16 v0, 0xe

    :goto_0
    sput v0, LaD/q;->a:I

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->U()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const/16 v0, 0xa

    :goto_1
    sput v0, LaD/q;->b:I

    return-void

    :cond_2
    const/16 v0, 0x9

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_1
.end method

.method public constructor <init>(Lk/l;Lk/l;Lk/l;Lk/l;LaD/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaD/q;->g:Lk/l;

    iput-object p2, p0, LaD/q;->f:Lk/l;

    iput-object p3, p0, LaD/q;->e:Lk/l;

    iput-object p4, p0, LaD/q;->d:Lk/l;

    iput-object p5, p0, LaD/q;->c:LaD/j;

    return-void
.end method

.method public constructor <init>(Lk/l;Lk/l;Lk/l;Lk/l;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 6

    new-instance v5, LaD/j;

    invoke-direct {v5, p5, p6}, LaD/j;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LaD/q;-><init>(Lk/l;Lk/l;Lk/l;Lk/l;LaD/j;)V

    return-void
.end method

.method public static a(LaD/j;ILaw/e;II)LaD/q;
    .locals 6

    const/4 v3, 0x0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, p3, p1}, Law/e;->e(II)Law/e;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->aj()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, p3, v0}, Law/e;->e(II)Law/e;

    move-result-object v0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, p3, v2}, Law/e;->e(II)Law/e;

    move-result-object v2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p2, p3, v3}, Law/e;->e(II)Law/e;

    move-result-object v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    :goto_1
    new-instance v0, LaD/q;

    invoke-static {v1, p4}, LaD/q;->a(Law/e;I)Lk/l;

    move-result-object v1

    invoke-static {v2, p4}, LaD/q;->a(Law/e;I)Lk/l;

    move-result-object v2

    invoke-static {v3, p4}, LaD/q;->a(Law/e;I)Lk/l;

    move-result-object v3

    invoke-static {v4, p4}, LaD/q;->a(Law/e;I)Lk/l;

    move-result-object v4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LaD/q;-><init>(Lk/l;Lk/l;Lk/l;Lk/l;LaD/j;)V

    return-object v0

    :cond_1
    move v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v4, v3

    move-object v2, v3

    goto :goto_1
.end method

.method public static a(Lk/l;Ljava/lang/String;Ljava/lang/Long;)LaD/q;
    .locals 11

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/ui/aV;->r()Lk/j;

    move-result-object v0

    sget-char v2, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v0, v2}, Lk/j;->b(C)I

    move-result v5

    invoke-interface {p0}, Lk/l;->f()I

    move-result v3

    invoke-interface {p0}, Lk/l;->e()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v5

    move v7, v1

    invoke-static/range {v0 .. v7}, Lk/e;->a(Lk/l;IIIIIII)Lk/l;

    move-result-object v10

    invoke-virtual {v8}, Lcom/google/googlenav/ui/aV;->s()Lk/j;

    move-result-object v0

    sget-char v2, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v0, v2}, Lk/j;->b(C)I

    move-result v5

    invoke-interface {p0}, Lk/l;->f()I

    move-result v3

    invoke-interface {p0}, Lk/l;->e()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v5

    move v7, v1

    invoke-static/range {v0 .. v7}, Lk/e;->a(Lk/l;IIIIIII)Lk/l;

    move-result-object v0

    invoke-virtual {v8}, Lcom/google/googlenav/ui/aV;->t()Lk/j;

    move-result-object v2

    sget-char v3, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v2, v3}, Lk/j;->b(C)I

    move-result v5

    invoke-interface {v0}, Lk/l;->f()I

    move-result v3

    invoke-interface {v0}, Lk/l;->e()I

    move-result v4

    move v2, v1

    move v6, v5

    move v7, v1

    invoke-static/range {v0 .. v7}, Lk/e;->a(Lk/l;IIIIIII)Lk/l;

    move-result-object v2

    invoke-virtual {v8}, Lcom/google/googlenav/ui/aV;->u()Lk/j;

    move-result-object v3

    sget-char v4, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v3, v4}, Lk/j;->b(C)I

    move-result v7

    invoke-interface {v2}, Lk/l;->f()I

    move-result v5

    invoke-interface {v2}, Lk/l;->e()I

    move-result v6

    move v3, v1

    move v4, v1

    move v8, v7

    move v9, v1

    invoke-static/range {v2 .. v9}, Lk/e;->a(Lk/l;IIIIIII)Lk/l;

    move-result-object v7

    new-instance v3, LaD/q;

    move-object v4, v10

    move-object v5, v0

    move-object v6, v2

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v3 .. v9}, LaD/q;-><init>(Lk/l;Lk/l;Lk/l;Lk/l;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v3
.end method

.method private a(Lk/l;)Law/e;
    .locals 3

    new-instance v0, Law/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x3

    invoke-static {p1}, Lk/e;->c(Lk/l;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(I[B)V

    return-object v0
.end method

.method private static a(Law/e;I)Lk/l;
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Law/e;->h(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Law/e;->c(I)[B

    move-result-object v0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v1

    invoke-virtual {v1}, Lac/m;->w()Lk/i;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lk/i;->a([BII)Lk/l;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, LaD/q;->c:LaD/j;

    invoke-virtual {v0}, LaD/j;->b()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b()LaD/j;
    .locals 1

    iget-object v0, p0, LaD/q;->c:LaD/j;

    return-object v0
.end method

.method public c()Lk/l;
    .locals 3

    iget-object v0, p0, LaD/q;->d:Lk/l;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->u()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v0, v1}, Lk/j;->c(C)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->u()Lk/j;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v1, v2}, Lk/j;->b(C)I

    move-result v1

    invoke-virtual {p0}, LaD/q;->f()Lk/l;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lk/l;->a(II)Lk/l;

    move-result-object v0

    iput-object v0, p0, LaD/q;->d:Lk/l;

    :cond_0
    iget-object v0, p0, LaD/q;->d:Lk/l;

    return-object v0
.end method

.method public d()Lk/l;
    .locals 3

    iget-object v0, p0, LaD/q;->e:Lk/l;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->t()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v0, v1}, Lk/j;->c(C)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->t()Lk/j;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v1, v2}, Lk/j;->b(C)I

    move-result v1

    invoke-virtual {p0}, LaD/q;->f()Lk/l;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lk/l;->a(II)Lk/l;

    move-result-object v0

    iput-object v0, p0, LaD/q;->e:Lk/l;

    :cond_0
    iget-object v0, p0, LaD/q;->e:Lk/l;

    return-object v0
.end method

.method public e()Lk/l;
    .locals 3

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->aj()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->s()Lk/j;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v0, v1}, Lk/j;->c(C)I

    move-result v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->s()Lk/j;

    move-result-object v1

    sget-char v2, Lcom/google/googlenav/ui/aV;->M:C

    invoke-interface {v1, v2}, Lk/j;->b(C)I

    move-result v1

    invoke-virtual {p0}, LaD/q;->f()Lk/l;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lk/l;->a(II)Lk/l;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LaD/q;->f:Lk/l;

    goto :goto_0

    :cond_1
    iget-object v0, p0, LaD/q;->e:Lk/l;

    goto :goto_0
.end method

.method public f()Lk/l;
    .locals 1

    iget-object v0, p0, LaD/q;->g:Lk/l;

    return-object v0
.end method

.method public g()Law/e;
    .locals 3

    const/4 v2, 0x2

    new-instance v0, Law/e;

    sget-object v1, Ls/T;->w:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, LaD/q;->g:Lk/l;

    invoke-direct {p0, v1}, LaD/q;->a(Lk/l;)Law/e;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Law/e;->a(ILaw/e;)V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/aV;->aj()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, LaD/q;->f:Lk/l;

    invoke-direct {p0, v1}, LaD/q;->a(Lk/l;)Law/e;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Law/e;->a(ILaw/e;)V

    :cond_1
    iget-object v1, p0, LaD/q;->e:Lk/l;

    invoke-direct {p0, v1}, LaD/q;->a(Lk/l;)Law/e;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Law/e;->a(ILaw/e;)V

    iget-object v1, p0, LaD/q;->d:Lk/l;

    invoke-direct {p0, v1}, LaD/q;->a(Lk/l;)Law/e;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Law/e;->a(ILaw/e;)V

    :cond_2
    return-object v0
.end method

.method public h()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->aj()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LaD/q;->g:Lk/l;

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/googlenav/ui/aV;->ah()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, LaD/q;->f:Lk/l;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, LaD/q;->g:Lk/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, LaD/q;->e:Lk/l;

    if-eqz v0, :cond_3

    iget-object v0, p0, LaD/q;->d:Lk/l;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public i()I
    .locals 2

    iget-object v0, p0, LaD/q;->c:LaD/j;

    invoke-virtual {v0}, LaD/j;->d()I

    move-result v0

    iget-object v1, p0, LaD/q;->d:Lk/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, LaD/q;->d:Lk/l;

    invoke-interface {v1}, Lk/l;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, LaD/q;->e:Lk/l;

    if-eqz v1, :cond_1

    iget-object v1, p0, LaD/q;->e:Lk/l;

    invoke-interface {v1}, Lk/l;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, LaD/q;->f:Lk/l;

    if-eqz v1, :cond_2

    iget-object v1, p0, LaD/q;->f:Lk/l;

    invoke-interface {v1}, Lk/l;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, LaD/q;->g:Lk/l;

    if-eqz v1, :cond_3

    iget-object v1, p0, LaD/q;->g:Lk/l;

    invoke-interface {v1}, Lk/l;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method
