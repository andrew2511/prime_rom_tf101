.class public Lh/ep;
.super Lh/eR;


# static fields
.field private static b:I

.field private static final c:[C

.field private static final e:LA/p;


# instance fields
.field private a:Z

.field private d:Lcom/google/googlenav/ui/aT;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [C

    const/4 v1, 0x0

    sget-char v2, Lcom/google/googlenav/ui/aV;->aP:C

    aput-char v2, v0, v1

    const/4 v1, 0x1

    sget-char v2, Lcom/google/googlenav/ui/aV;->aQ:C

    aput-char v2, v0, v1

    const/4 v1, 0x2

    sget-char v2, Lcom/google/googlenav/ui/aV;->aR:C

    aput-char v2, v0, v1

    const/4 v1, 0x3

    sget-char v2, Lcom/google/googlenav/ui/aV;->aS:C

    aput-char v2, v0, v1

    sput-object v0, Lh/ep;->c:[C

    new-instance v0, LA/p;

    const-string v1, "WhatsNewWizard duration"

    const-string v2, "wnwd"

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, LA/p;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lh/ep;->e:LA/p;

    return-void
.end method

.method public constructor <init>(Lh/eY;)V
    .locals 0

    invoke-direct {p0, p1}, Lh/eR;-><init>(Lh/eY;)V

    return-void
.end method

.method static a(I)V
    .locals 5

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "whatsnew"

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v4, p0

    aput-byte v4, v2, v3

    invoke-interface {v0, v1, v2}, Ln/a;->a(Ljava/lang/String;[B)Z

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/google/googlenav/d;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/googlenav/d;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x46d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static h()Z
    .locals 1

    invoke-static {}, Lh/ep;->r()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j()Z
    .locals 2

    invoke-static {}, Lh/ep;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    invoke-static {}, Lh/ep;->o()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic m()Ljava/util/List;
    .locals 1

    invoke-static {}, Lh/ep;->r()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n()LaB/f;
    .locals 1

    invoke-static {}, Lh/ep;->s()LaB/f;

    move-result-object v0

    return-object v0
.end method

.method private static o()I
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "whatsnew"

    invoke-interface {v0, v1}, Ln/a;->b_(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    aget-byte v0, v0, v2

    goto :goto_0
.end method

.method private static p()V
    .locals 1

    const/16 v0, 0x16

    invoke-static {v0}, Lh/ep;->a(I)V

    return-void
.end method

.method private q()LI/n;
    .locals 1

    new-instance v0, Lh/bZ;

    invoke-direct {v0, p0}, Lh/bZ;-><init>(Lh/ep;)V

    return-object v0
.end method

.method private static r()Ljava/util/List;
    .locals 4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/google/googlenav/d;->X()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x469

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/d;->w()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x46a

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/d;->p()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x46b

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v2, 0x46c

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lh/ep;->c:[C

    array-length v3, v3

    if-ge v2, v3, :cond_3

    invoke-static {v1, v0}, Lh/ep;->a(Ljava/util/List;Lcom/google/googlenav/d;)V

    :cond_3
    return-object v1
.end method

.method private static s()LaB/f;
    .locals 4

    sget v0, Lh/ep;->b:I

    sget-object v1, Lh/ep;->c:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lh/ep;->b:I

    :cond_0
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aV;->aa()Lk/j;

    move-result-object v0

    sget-object v1, Lh/ep;->c:[C

    sget v2, Lh/ep;->b:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lh/ep;->b:I

    aget-char v1, v1, v2

    invoke-interface {v0, v1}, Lk/j;->e(C)Lk/l;

    move-result-object v0

    check-cast v0, LaB/f;

    return-object v0
.end method


# virtual methods
.method public B_()V
    .locals 1

    iget-object v0, p0, Lh/ep;->j:Lx/J;

    invoke-virtual {p0, v0}, Lh/ep;->a(Lx/J;)V

    invoke-super {p0}, Lh/eR;->b()V

    sget-object v0, Lh/ep;->e:LA/p;

    invoke-virtual {v0}, LA/p;->c()V

    return-void
.end method

.method public F_()V
    .locals 1

    invoke-virtual {p0}, Lh/ep;->a()V

    sget-object v0, Lh/ep;->e:LA/p;

    invoke-virtual {v0}, LA/p;->c()V

    return-void
.end method

.method public a(Lax/b;)I
    .locals 1

    iget-object v0, p0, Lh/ep;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/b;)I

    const/4 v0, 0x3

    return v0
.end method

.method public a(Lax/c;)I
    .locals 2

    invoke-virtual {p1}, Lax/c;->c()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lh/ep;->v()V

    :goto_0
    const/4 v0, 0x3

    return v0

    :cond_0
    iget-object v0, p0, Lh/ep;->j:Lx/J;

    invoke-interface {v0, p1}, Lx/J;->a(Lax/c;)Z

    goto :goto_0
.end method

.method protected a()V
    .locals 3

    iget-object v0, p0, Lh/ep;->j:Lx/J;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ep;->j:Lx/J;

    invoke-interface {v0}, Lx/J;->k()V

    :cond_0
    invoke-static {}, Lx/k;->a()Lx/k;

    move-result-object v0

    new-instance v1, Lx/z;

    invoke-direct {p0}, Lh/ep;->q()LI/n;

    move-result-object v2

    invoke-direct {v1, v2}, Lx/z;-><init>(LI/n;)V

    invoke-virtual {v0, v1, p0}, Lx/k;->a(Lx/z;Lcom/google/googlenav/ui/aY;)Lx/J;

    move-result-object v0

    iput-object v0, p0, Lh/ep;->j:Lx/J;

    iget-object v0, p0, Lh/ep;->j:Lx/J;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lx/J;->c(I)V

    return-void
.end method

.method public final a(Lcom/google/googlenav/ui/aT;)V
    .locals 1

    iput-object p1, p0, Lh/ep;->d:Lcom/google/googlenav/ui/aT;

    invoke-super {p0}, Lh/eR;->u()V

    sget-object v0, Lh/ep;->e:LA/p;

    invoke-virtual {v0}, LA/p;->a()V

    return-void
.end method

.method protected b()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lh/eR;->b()V

    sget-object v0, Lh/ep;->e:LA/p;

    invoke-virtual {v0}, LA/p;->b()V

    invoke-static {}, Lh/ep;->p()V

    iget-object v0, p0, Lh/ep;->d:Lcom/google/googlenav/ui/aT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lh/ep;->d:Lcom/google/googlenav/ui/aT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aT;->c(Z)V

    :cond_0
    iput-boolean v2, p0, Lh/ep;->a:Z

    iput v2, p0, Lh/ep;->k:I

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lh/ep;->a:Z

    return v0
.end method
