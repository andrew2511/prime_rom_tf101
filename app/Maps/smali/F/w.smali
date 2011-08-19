.class public LF/w;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private f:Z

.field private g:LF/w;

.field private final h:Ljava/lang/String;

.field private final i:I

.field private j:LF/y;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "PREPARE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ACT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SUCCESS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "NOTE"

    aput-object v2, v0, v1

    sput-object v0, LF/w;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIIIZLjava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LF/w;->b:I

    iput p2, p0, LF/w;->c:I

    iput p3, p0, LF/w;->d:I

    iput p4, p0, LF/w;->e:I

    iput-boolean p5, p0, LF/w;->f:Z

    iput-object p6, p0, LF/w;->h:Ljava/lang/String;

    iput p7, p0, LF/w;->i:I

    iput p8, p0, LF/w;->k:I

    return-void
.end method

.method public static a(Law/e;D)LF/w;
    .locals 13

    const/4 v7, 0x5

    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v8, -0x1

    invoke-virtual {p0, v6}, Law/e;->d(I)I

    move-result v1

    if-ltz v1, :cond_0

    if-lt v1, v4, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p0, v0}, Law/b;->e(Law/e;I)I

    move-result v0

    int-to-double v2, v0

    mul-double v9, v2, p1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Law/b;->e(Law/e;I)I

    move-result v3

    invoke-static {p0, v4}, Law/b;->e(Law/e;I)I

    move-result v0

    int-to-double v4, v0

    mul-double v11, v4, p1

    invoke-virtual {p0, v7}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v7}, Law/e;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v5, v6

    :goto_1
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x7

    invoke-static {p0, v0, v8}, Law/b;->c(Law/e;II)I

    move-result v7

    const/16 v0, 0x8

    invoke-static {p0, v0, v8}, Law/b;->c(Law/e;II)I

    move-result v8

    new-instance v0, LF/w;

    double-to-int v2, v9

    double-to-int v4, v11

    invoke-direct/range {v0 .. v8}, LF/w;-><init>(IIIIZLjava/lang/String;II)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LF/w;->b:I

    return v0
.end method

.method a(LF/w;)V
    .locals 1

    iput-object p1, p0, LF/w;->g:LF/w;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, LF/w;->f:Z

    :cond_0
    return-void
.end method

.method a(LF/y;)V
    .locals 0

    iput-object p1, p0, LF/w;->j:LF/y;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, LF/w;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LF/w;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LF/w;->e:I

    return v0
.end method

.method public e()LF/y;
    .locals 1

    iget-object v0, p0, LF/w;->j:LF/y;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, LF/w;->f:Z

    return v0
.end method

.method public g()LF/w;
    .locals 1

    iget-object v0, p0, LF/w;->g:LF/w;

    return-object v0
.end method

.method public h()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, LF/w;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LF/w;->h:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, LF/w;->i:I

    if-ltz v0, :cond_1

    iget v0, p0, LF/w;->i:I

    iget-object v1, p0, LF/w;->j:LF/y;

    invoke-virtual {v1}, LF/y;->t()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, LF/w;->j:LF/y;

    invoke-virtual {v0}, LF/y;->t()Ljava/util/List;

    move-result-object v0

    iget v1, p0, LF/w;->i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF/n;

    invoke-virtual {p0}, LF/n;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, LF/w;->j:LF/y;

    invoke-virtual {v0}, LF/y;->n()Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, LF/w;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, LF/w;->i:I

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Lm/R;
    .locals 2

    iget v0, p0, LF/w;->k:I

    if-ltz v0, :cond_0

    new-instance v0, Lm/s;

    iget v1, p0, LF/w;->k:I

    invoke-direct {v0, v1}, Lm/s;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LF/w;->a:[Ljava/lang/String;

    iget v2, p0, LF/w;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LF/w;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LF/w;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LF/w;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LF/w;->h()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " step:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LF/w;->j:LF/y;

    invoke-virtual {v1}, LF/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
