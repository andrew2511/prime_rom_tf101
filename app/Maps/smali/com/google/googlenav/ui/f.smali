.class public Lcom/google/googlenav/ui/f;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field b:Lk/l;

.field c:J

.field d:C

.field final synthetic e:Lcom/google/googlenav/ui/bB;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/bB;[BJC)V
    .locals 1

    iput-object p1, p0, Lcom/google/googlenav/ui/f;->e:Lcom/google/googlenav/ui/bB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/f;->b:Lk/l;

    iput-char p5, p0, Lcom/google/googlenav/ui/f;->d:C

    iput-wide p3, p0, Lcom/google/googlenav/ui/f;->c:J

    iput-object p2, p0, Lcom/google/googlenav/ui/f;->a:[B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/bB;[BJCLcom/google/googlenav/ui/ai;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/googlenav/ui/f;-><init>(Lcom/google/googlenav/ui/bB;[BJC)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/f;)C
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/f;->c()C

    move-result v0

    return v0
.end method

.method private b()Lk/l;
    .locals 4

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->b:Lk/l;

    if-nez v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->w()Lk/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/f;->a:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/f;->a:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lk/i;->a([BII)Lk/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/f;->b:Lk/l;

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/ui/f;->b:Lk/l;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/f;)Lk/l;
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/f;->b()Lk/l;

    move-result-object v0

    return-object v0
.end method

.method private c()C
    .locals 1

    iget-char v0, p0, Lcom/google/googlenav/ui/f;->d:C

    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/f;->a:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/google/googlenav/ui/f;->b:Lk/l;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/f;->b:Lk/l;

    invoke-interface {v1}, Lk/l;->a()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method
