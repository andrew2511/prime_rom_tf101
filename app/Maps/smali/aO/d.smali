.class public LaO/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, LaO/d;->a:F

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, LaO/d;->b:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaO/d;->c:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaO/d;->d:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LaO/d;->e:Ljava/lang/String;

    return-void
.end method

.method private a(I)I
    .locals 2

    invoke-virtual {p0}, LaO/d;->a()F

    move-result v0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x40a0

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, LaO/d;->a:F

    return v0
.end method

.method public b()I
    .locals 1

    const/16 v0, 0x1388

    invoke-direct {p0, v0}, LaO/d;->a(I)I

    move-result v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LaO/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x1

    iget v0, p0, LaO/d;->b:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0x36d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x36c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, LaO/d;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
