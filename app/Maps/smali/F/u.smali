.class public LF/u;
.super Ljava/lang/Object;


# instance fields
.field private final a:LF/s;

.field private final b:LG/y;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(LF/s;LG/y;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p1}, LF/s;->a()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v2}, LF/s;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v3

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, LF/s;->a()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    :goto_1
    iput-object v1, p0, LF/u;->a:LF/s;

    iput-object p2, p0, LF/u;->b:LG/y;

    iput-object v0, p0, LF/u;->c:Ljava/lang/String;

    iput-object p4, p0, LF/u;->d:Ljava/lang/String;

    iput v2, p0, LF/u;->f:I

    return-void

    :cond_0
    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method

.method public constructor <init>(LF/u;)V
    .locals 1

    iget-object v0, p1, LF/u;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, LF/u;-><init>(LF/u;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LF/u;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, LF/u;->a:LF/s;

    iput-object v0, p0, LF/u;->a:LF/s;

    iget-object v0, p1, LF/u;->b:LG/y;

    iput-object v0, p0, LF/u;->b:LG/y;

    iput-object p2, p0, LF/u;->c:Ljava/lang/String;

    iget-object v0, p1, LF/u;->d:Ljava/lang/String;

    iput-object v0, p0, LF/u;->d:Ljava/lang/String;

    iget-object v0, p1, LF/u;->e:Ljava/lang/String;

    iput-object v0, p0, LF/u;->e:Ljava/lang/String;

    iget v0, p1, LF/u;->f:I

    iput v0, p0, LF/u;->f:I

    iget-object v0, p1, LF/u;->g:Ljava/lang/String;

    iput-object v0, p0, LF/u;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LG/y;)V
    .locals 3

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, LF/s;

    move-object v1, v0

    invoke-direct {p0, v1, p1, v2, v2}, LF/u;-><init>(LF/s;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Law/e;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, LF/u;->a(Law/e;)LF/s;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-static {v1}, Lad/m;->a(Law/e;)LG/y;

    move-result-object v1

    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, LF/u;-><init>(LF/s;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, LF/u;->c(Law/e;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LF/u;->g:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, LF/u;->f:I

    return-void

    :cond_0
    invoke-static {p1}, LF/u;->b(Law/e;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;LG/y;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0, p2, p3, p4}, LF/u;-><init>(LF/s;LG/y;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, LF/s;

    invoke-direct {v0, p1}, LF/s;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Law/e;)LF/s;
    .locals 7

    const/4 v6, 0x4

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v6, v3}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, LF/s;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-direct {v0, p0}, LF/s;-><init>([Ljava/lang/String;)V

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, LF/s;

    invoke-direct {v1, v0}, LF/s;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Law/e;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Law/e;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x77

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Law/e;->f(I)Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Law/e;->e(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/googlenav/ai;->a(J)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, LF/u;->f:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LF/u;->e:Ljava/lang/String;

    return-void
.end method

.method public c()Z
    .locals 1

    iget v0, p0, LF/u;->f:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LF/u;->f:I

    return v0
.end method

.method public e()LG/y;
    .locals 1

    iget-object v0, p0, LF/u;->b:LG/y;

    return-object v0
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
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, LF/u;

    iget-object v0, p0, LF/u;->a:LF/s;

    if-nez v0, :cond_3

    iget-object v0, p1, LF/u;->a:LF/s;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, LF/u;->a:LF/s;

    iget-object v1, p1, LF/u;->a:LF/s;

    invoke-virtual {v0, v1}, LF/s;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, LF/u;->f:I

    iget v1, p1, LF/u;->f:I

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, LF/u;->b:LG/y;

    if-nez v0, :cond_6

    iget-object v0, p1, LF/u;->b:LG/y;

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, LF/u;->b:LG/y;

    iget-object v1, p1, LF/u;->b:LG/y;

    invoke-virtual {v0, v1}, LG/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    iget-object v0, p0, LF/u;->c:Ljava/lang/String;

    if-nez v0, :cond_8

    iget-object v0, p1, LF/u;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_8
    iget-object v0, p0, LF/u;->c:Ljava/lang/String;

    iget-object v1, p1, LF/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    goto :goto_0

    :cond_9
    iget-object v0, p0, LF/u;->d:Ljava/lang/String;

    if-nez v0, :cond_a

    iget-object v0, p1, LF/u;->d:Ljava/lang/String;

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_0

    :cond_a
    iget-object v0, p0, LF/u;->d:Ljava/lang/String;

    iget-object v1, p1, LF/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    goto :goto_0

    :cond_b
    iget-object v0, p0, LF/u;->g:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p1, LF/u;->g:Ljava/lang/String;

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_0

    :cond_c
    iget-object v0, p0, LF/u;->g:Ljava/lang/String;

    iget-object v1, p1, LF/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v2

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, LF/u;->e:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p1, LF/u;->e:Ljava/lang/String;

    if-eqz v0, :cond_f

    move v0, v2

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, LF/u;->e:Ljava/lang/String;

    iget-object v1, p1, LF/u;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v2

    goto/16 :goto_0

    :cond_f
    move v0, v3

    goto/16 :goto_0
.end method

.method public f()LF/s;
    .locals 1

    iget-object v0, p0, LF/u;->a:LF/s;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/u;->d:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, LF/u;->a:LF/s;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LF/u;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LF/u;->b:LG/y;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LF/u;->c:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LF/u;->d:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LF/u;->g:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LF/u;->e:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, LF/u;->a:LF/s;

    invoke-virtual {v0}, LF/s;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, LF/u;->b:LG/y;

    invoke-virtual {v1}, LG/y;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, LF/u;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, LF/u;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    iget-object v1, p0, LF/u;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_5
    iget-object v1, p0, LF/u;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LF/u;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j()Law/e;
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/v;->d:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    iget-object v1, p0, LF/u;->a:LF/s;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, LF/u;->a:LF/s;

    invoke-virtual {v2}, LF/s;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, LF/u;->b:LG/y;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, LF/u;->b:LG/y;

    invoke-static {v2}, Lad/m;->a(LG/y;)Law/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILaw/e;)V

    const/4 v1, 0x5

    iget v2, p0, LF/u;->f:I

    invoke-virtual {v0, v1, v2}, Law/e;->h(II)V

    :cond_1
    iget-object v1, p0, LF/u;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget-object v2, p0, LF/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[addr:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LF/u;->a:LF/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " point:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LF/u;->b:LG/y;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LF/u;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LF/u;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LF/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LF/u;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
