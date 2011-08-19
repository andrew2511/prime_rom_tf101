.class public LG/B;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:LG/Z;


# direct methods
.method private constructor <init>(LG/A;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LG/B;->a:Ljava/util/List;

    iput-object p3, p0, LG/B;->b:Ljava/lang/String;

    iput-object p4, p0, LG/B;->c:Ljava/lang/String;

    iput p5, p0, LG/B;->d:I

    new-instance v0, LG/Z;

    invoke-direct {v0, p1, p6}, LG/Z;-><init>(LG/A;I)V

    iput-object v0, p0, LG/B;->e:LG/Z;

    return-void
.end method

.method public static a(Law/e;)LG/B;
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x0

    new-instance v1, LG/A;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, LG/A;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Law/e;->i(I)I

    move-result v0

    invoke-static {v0}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v2

    move v3, v6

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, LG/A;

    invoke-virtual {p0, v7, v3}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, LG/A;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    if-nez v0, :cond_5

    if-eqz v4, :cond_2

    move-object v0, v4

    :goto_1
    move-object v3, v0

    :goto_2
    if-nez v4, :cond_1

    move-object v4, v3

    :cond_1
    invoke-virtual {p0, v8}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v8}, Law/e;->d(I)I

    move-result v0

    move v5, v0

    :goto_3
    const/high16 v0, -0x8000

    invoke-virtual {p0, v9}, Law/e;->h(I)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v9}, Law/e;->d(I)I

    move-result v0

    move v6, v0

    :goto_4
    new-instance v0, LG/B;

    invoke-direct/range {v0 .. v6}, LG/B;-><init>(LG/A;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    move v6, v0

    goto :goto_4

    :cond_4
    move v5, v6

    goto :goto_3

    :cond_5
    move-object v3, v0

    goto :goto_2
.end method


# virtual methods
.method public a()LG/Z;
    .locals 1

    iget-object v0, p0, LG/B;->e:LG/Z;

    return-object v0
.end method

.method public b()LG/A;
    .locals 1

    iget-object v0, p0, LG/B;->e:LG/Z;

    invoke-virtual {v0}, LG/Z;->a()LG/A;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, LG/B;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/B;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, LG/B;->e:LG/Z;

    invoke-virtual {v0}, LG/Z;->b()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/B;->e:LG/Z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
