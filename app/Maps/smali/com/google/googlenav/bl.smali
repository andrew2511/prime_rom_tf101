.class public Lcom/google/googlenav/bl;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Z

.field private c:Ljava/util/List;

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bl;->a:Ljava/lang/Integer;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bl;->c:Ljava/util/List;

    iput-boolean v1, p0, Lcom/google/googlenav/bl;->b:Z

    iput v1, p0, Lcom/google/googlenav/bl;->d:I

    return-void
.end method

.method public constructor <init>(Law/e;Lcom/google/googlenav/i;)V
    .locals 7

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/bl;->a:Ljava/lang/Integer;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/bl;->c:Ljava/util/List;

    iput-boolean v6, p0, Lcom/google/googlenav/bl;->b:Z

    invoke-virtual {p1, v1}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Law/e;->d(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bl;->a:Ljava/lang/Integer;

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-nez v0, :cond_2

    iput v2, p0, Lcom/google/googlenav/bl;->d:I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/bl;->d:I

    move v1, v2

    :goto_0
    iget v2, p0, Lcom/google/googlenav/bl;->d:I

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v6, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    new-instance v3, Lcom/google/googlenav/am;

    invoke-direct {v3, p0, p2}, Lcom/google/googlenav/am;-><init>(Lcom/google/googlenav/bl;Lcom/google/googlenav/i;)V

    invoke-virtual {v2, v6}, Law/e;->e(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/googlenav/ai;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/google/googlenav/ad;

    invoke-direct {v4, v3, v2}, Lcom/google/googlenav/ad;-><init>(Lcom/google/googlenav/bh;Ljava/lang/String;)V

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v2

    invoke-virtual {v2, v4}, Lak/h;->c(Lak/d;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/googlenav/bl;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bl;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/bl;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bl;->d:I

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bl;->a:Ljava/lang/Integer;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/bl;->b:Z

    return v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bl;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bl;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
