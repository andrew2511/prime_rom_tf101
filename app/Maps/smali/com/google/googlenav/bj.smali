.class public Lcom/google/googlenav/bj;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bj;->a:Ljava/lang/String;

    iput p2, p0, Lcom/google/googlenav/bj;->b:I

    iput-object p3, p0, Lcom/google/googlenav/bj;->c:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;I[BLcom/google/googlenav/aD;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/bj;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/bj;)I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bj;->b:I

    return v0
.end method

.method public static a(Law/e;)Lcom/google/googlenav/bj;
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Law/e;->d(I)I

    move-result v1

    invoke-virtual {p0, v3}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/googlenav/bj;

    invoke-virtual {p0, v3}, Law/e;->c(I)[B

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/google/googlenav/bj;-><init>(Ljava/lang/String;I[B)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlenav/bj;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/googlenav/bj;-><init>(Ljava/lang/String;I[B)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/bj;->b:I

    return v0
.end method

.method public c()[B
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/bj;->c:[B

    return-object v0
.end method
