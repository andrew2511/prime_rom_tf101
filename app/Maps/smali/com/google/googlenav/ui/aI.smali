.class public Lcom/google/googlenav/ui/aI;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/googlenav/ui/av;

.field public final c:Z

.field public final d:Z

.field public final e:Lx/Q;

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/Q;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/googlenav/ui/aI;->g:I

    iput v0, p0, Lcom/google/googlenav/ui/aI;->h:I

    iput v0, p0, Lcom/google/googlenav/ui/aI;->i:I

    iput v0, p0, Lcom/google/googlenav/ui/aI;->j:I

    iput-object p1, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    iput-boolean p3, p0, Lcom/google/googlenav/ui/aI;->c:Z

    iput-boolean p4, p0, Lcom/google/googlenav/ui/aI;->d:Z

    iput-object p5, p0, Lcom/google/googlenav/ui/aI;->e:Lx/Q;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/google/googlenav/ui/aI;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/aI;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/Q;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Z)Lcom/google/googlenav/ui/aI;
    .locals 6

    new-instance v0, Lcom/google/googlenav/ui/aI;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/aI;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/Q;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;
    .locals 6

    new-instance v0, Lcom/google/googlenav/ui/aI;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/aI;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/Q;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;
    .locals 6

    new-instance v0, Lcom/google/googlenav/ui/aI;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/aI;-><init>(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/Q;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public a(IIII)V
    .locals 0

    iput p1, p0, Lcom/google/googlenav/ui/aI;->g:I

    iput p2, p0, Lcom/google/googlenav/ui/aI;->h:I

    iput p3, p0, Lcom/google/googlenav/ui/aI;->i:I

    iput p4, p0, Lcom/google/googlenav/ui/aI;->j:I

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/googlenav/ui/aI;->f:Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/aI;->g:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/aI;->h:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/aI;->i:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/googlenav/ui/aI;->j:I

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/aI;->g:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/aI;->i:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/aI;->h:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/googlenav/ui/aI;

    iget-boolean v0, p0, Lcom/google/googlenav/ui/aI;->c:Z

    iget-boolean v1, p1, Lcom/google/googlenav/ui/aI;->c:Z

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/google/googlenav/ui/aI;->d:Z

    iget-boolean v1, p1, Lcom/google/googlenav/ui/aI;->d:Z

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    iget-object v1, p1, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    if-ne v0, v1, :cond_6

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/aI;->j:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlenav/ui/aI;->b:Lcom/google/googlenav/ui/av;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlenav/ui/aI;->c:Z

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlenav/ui/aI;->d:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/aI;->a:Ljava/lang/String;

    return-object v0
.end method
