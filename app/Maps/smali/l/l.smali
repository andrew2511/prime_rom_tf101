.class Ll/l;
.super Ljava/lang/Object;


# static fields
.field private static final i:Ljava/util/Set;


# instance fields
.field public final a:LB/c;

.field public final b:LB/l;

.field public final c:I

.field public final d:Lf/h;

.field public final e:J

.field public final f:F

.field public final g:Z

.field public final h:F

.field private final j:F

.field private k:F

.field private l:F

.field private m:Z

.field private n:LB/b;

.field private o:Ll/o;

.field private p:F

.field private q:Ll/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ll/a;->c:Ll/a;

    sget-object v1, Ll/a;->d:Ll/a;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Ll/l;->i:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(LB/c;LB/l;ILf/h;FJFFZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll/l;->a:LB/c;

    iput-object p2, p0, Ll/l;->b:LB/l;

    iput p3, p0, Ll/l;->c:I

    iput-object p4, p0, Ll/l;->d:Lf/h;

    iput p5, p0, Ll/l;->j:F

    iput-wide p6, p0, Ll/l;->e:J

    invoke-direct {p0, p8}, Ll/l;->a(F)F

    move-result v0

    iput v0, p0, Ll/l;->f:F

    iput p9, p0, Ll/l;->h:F

    iput-boolean p10, p0, Ll/l;->g:Z

    sget-object v0, Ll/o;->b:Ll/o;

    iput-object v0, p0, Ll/l;->o:Ll/o;

    invoke-direct {p0}, Ll/l;->g()F

    move-result v0

    iput v0, p0, Ll/l;->p:F

    return-void
.end method

.method private a(F)F
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ll/l;->j:F

    sub-float v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private a(LB/b;F)LB/b;
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Ll/l;->a:LB/c;

    iget-object v1, p1, LB/b;->a:LB/l;

    invoke-virtual {v0, v1}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    invoke-virtual {v0}, LB/u;->D()F

    move-result v0

    cmpl-float v1, p2, v6

    if-lez v1, :cond_3

    const/high16 v1, 0x3f80

    iget v2, p1, LB/b;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    cmpl-float v2, v1, p2

    if-lez v2, :cond_0

    iget v1, p1, LB/b;->b:F

    div-float v0, p2, v0

    add-float/2addr v0, v1

    new-instance v1, LB/b;

    iget-object v2, p1, LB/b;->a:LB/l;

    invoke-direct {v1, v2, v0}, LB/b;-><init>(LB/l;F)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, LB/r;

    iget-object v3, p0, Ll/l;->a:LB/c;

    invoke-direct {v2, v3}, LB/r;-><init>(LB/c;)V

    iget-object v3, p1, LB/b;->a:LB/l;

    invoke-virtual {v2, v3}, LB/r;->a(LB/l;)LB/r;

    move-result-object v2

    iget-object v3, p1, LB/b;->a:LB/l;

    move-object v7, v3

    move v3, v0

    move-object v0, v7

    :goto_1
    invoke-virtual {v2}, LB/r;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    cmpg-float v4, v1, p2

    if-gez v4, :cond_1

    invoke-virtual {v2}, LB/r;->a()LB/l;

    move-result-object v0

    iget-object v3, p0, Ll/l;->a:LB/c;

    invoke-virtual {v3, v0}, LB/c;->a(LB/l;)LB/u;

    move-result-object v3

    invoke-virtual {v3}, LB/u;->D()F

    move-result v3

    add-float/2addr v1, v3

    goto :goto_1

    :cond_1
    cmpg-float v2, v1, p2

    if-gez v2, :cond_2

    new-instance v1, LB/b;

    invoke-direct {v1, v0, v6}, LB/b;-><init>(LB/l;F)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    sub-float v1, p2, v1

    add-float/2addr v1, v3

    div-float/2addr v1, v3

    new-instance v2, LB/b;

    invoke-direct {v2, v0, v1}, LB/b;-><init>(LB/l;F)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    cmpg-float v1, p2, v6

    if-gez v1, :cond_7

    neg-float v1, v0

    iget v2, p1, LB/b;->b:F

    mul-float/2addr v1, v2

    cmpg-float v2, v1, p2

    if-gez v2, :cond_4

    iget v1, p1, LB/b;->b:F

    div-float v0, p2, v0

    add-float/2addr v0, v1

    new-instance v1, LB/b;

    iget-object v2, p1, LB/b;->a:LB/l;

    invoke-direct {v1, v2, v0}, LB/b;-><init>(LB/l;F)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    new-instance v2, LB/r;

    iget-object v3, p0, Ll/l;->a:LB/c;

    invoke-direct {v2, v3}, LB/r;-><init>(LB/c;)V

    iget-object v3, p1, LB/b;->a:LB/l;

    iget-object v4, p1, LB/b;->a:LB/l;

    invoke-virtual {v2, v4}, LB/r;->b(LB/l;)LB/l;

    move-result-object v4

    move-object v7, v4

    move v4, v0

    move-object v0, v7

    move v8, v1

    move-object v1, v3

    move v3, v8

    :goto_2
    if-eqz v0, :cond_5

    cmpl-float v5, v3, p2

    if-lez v5, :cond_5

    invoke-virtual {v2, v0}, LB/r;->b(LB/l;)LB/l;

    move-result-object v1

    iget-object v4, p0, Ll/l;->a:LB/c;

    invoke-virtual {v4, v0}, LB/c;->a(LB/l;)LB/u;

    move-result-object v4

    invoke-virtual {v4}, LB/u;->D()F

    move-result v4

    sub-float/2addr v3, v4

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_5
    cmpl-float v0, v3, p2

    if-lez v0, :cond_6

    new-instance v0, LB/b;

    invoke-direct {v0, v1, v6}, LB/b;-><init>(LB/l;F)V

    goto/16 :goto_0

    :cond_6
    sub-float v0, p2, v3

    div-float/2addr v0, v4

    new-instance v2, LB/b;

    invoke-direct {v2, v1, v0}, LB/b;-><init>(LB/l;F)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private a(LB/b;LB/b;F)V
    .locals 1

    sget-object v0, Ll/o;->a:Ll/o;

    iput-object v0, p0, Ll/l;->o:Ll/o;

    iget v0, p0, Ll/l;->p:F

    neg-float v0, v0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    iget v0, p0, Ll/l;->p:F

    neg-float v0, v0

    invoke-direct {p0, p2, v0}, Ll/l;->a(LB/b;F)LB/b;

    move-result-object v0

    iput-object v0, p0, Ll/l;->n:LB/b;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Ll/l;->n:LB/b;

    goto :goto_0
.end method

.method private b(LB/b;LB/b;F)V
    .locals 1

    sget-object v0, Ll/o;->c:Ll/o;

    iput-object v0, p0, Ll/l;->o:Ll/o;

    iget v0, p0, Ll/l;->p:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    iget v0, p0, Ll/l;->p:F

    invoke-direct {p0, p2, v0}, Ll/l;->a(LB/b;F)LB/b;

    move-result-object v0

    iput-object v0, p0, Ll/l;->n:LB/b;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Ll/l;->n:LB/b;

    goto :goto_0
.end method

.method private g()F
    .locals 4

    const/high16 v3, 0x42c8

    const/high16 v2, 0x41f0

    iget-object v0, p0, Ll/l;->a:LB/c;

    iget-object v1, p0, Ll/l;->b:LB/l;

    invoke-virtual {v0, v1}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    iget v1, p0, Ll/l;->c:I

    invoke-virtual {v0, v1}, LB/u;->d(I)F

    move-result v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    cmpg-float v1, v0, v2

    if-gez v1, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    move v0, v3

    goto :goto_0
.end method

.method private declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ll/l;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Ll/l;->a:LB/c;

    iget-object v1, p0, Ll/l;->b:LB/l;

    invoke-virtual {v0, v1}, LB/c;->a(LB/l;)LB/u;

    move-result-object v0

    iget v1, p0, Ll/l;->c:I

    invoke-virtual {v0, v1}, LB/u;->d(I)F

    move-result v0

    iget v1, p0, Ll/l;->j:F

    div-float v0, v1, v0

    iget v1, p0, Ll/l;->h:F

    sub-float/2addr v1, v0

    iput v1, p0, Ll/l;->k:F

    iget v1, p0, Ll/l;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Ll/l;->l:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Ll/l;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()F
    .locals 1

    invoke-direct {p0}, Ll/l;->h()V

    iget v0, p0, Ll/l;->k:F

    return v0
.end method

.method public a(Ll/l;LB/b;)Ll/o;
    .locals 4

    iget-object v0, p0, Ll/l;->o:Ll/o;

    sget-object v1, Ll/o;->a:Ll/o;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ll/l;->o:Ll/o;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ll/l;->e()Ll/o;

    move-result-object v0

    invoke-virtual {p1}, Ll/l;->f()LB/b;

    move-result-object v1

    iget-object v2, p0, Ll/l;->a:LB/c;

    invoke-static {v2, p2, v1}, LK/n;->a(LB/c;LB/b;LB/b;)F

    move-result v2

    sget-object v3, Ll/o;->b:Ll/o;

    if-ne v0, v3, :cond_3

    iget v0, p0, Ll/l;->p:F

    neg-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_1

    invoke-direct {p0, v1, p2, v2}, Ll/l;->a(LB/b;LB/b;F)V

    :goto_1
    iget-object v0, p0, Ll/l;->o:Ll/o;

    goto :goto_0

    :cond_1
    iget v0, p0, Ll/l;->p:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_2

    invoke-direct {p0, v1, p2, v2}, Ll/l;->b(LB/b;LB/b;F)V

    goto :goto_1

    :cond_2
    sget-object v0, Ll/o;->b:Ll/o;

    iput-object v0, p0, Ll/l;->o:Ll/o;

    iput-object v1, p0, Ll/l;->n:LB/b;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    invoke-direct {p0, v1, p2, v2}, Ll/l;->a(LB/b;LB/b;F)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1, p2, v2}, Ll/l;->b(LB/b;LB/b;F)V

    goto :goto_1
.end method

.method public a(LB/b;)V
    .locals 0

    iput-object p1, p0, Ll/l;->n:LB/b;

    return-void
.end method

.method public a(Ll/a;)V
    .locals 0

    iput-object p1, p0, Ll/l;->q:Ll/a;

    return-void
.end method

.method public a(Ll/l;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ll/l;->b:LB/l;

    iget-object v1, p1, Ll/l;->b:LB/l;

    invoke-virtual {v0, v1}, LB/l;->a(LB/l;)I

    move-result v0

    if-eqz v0, :cond_1

    if-gez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Ll/l;->c:I

    iget v1, p1, Ll/l;->c:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Ll/l;->c:I

    iget v1, p1, Ll/l;->c:I

    if-ge v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ll/l;->a()F

    move-result v0

    invoke-virtual {p1}, Ll/l;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public b()F
    .locals 1

    invoke-direct {p0}, Ll/l;->h()V

    iget v0, p0, Ll/l;->l:F

    return v0
.end method

.method public b(Ll/l;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Ll/l;->b:LB/l;

    iget-object v1, p1, Ll/l;->b:LB/l;

    invoke-virtual {v0, v1}, LB/l;->a(LB/l;)I

    move-result v0

    if-eqz v0, :cond_1

    if-gez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v0, p0, Ll/l;->c:I

    iget v1, p1, Ll/l;->c:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Ll/l;->c:I

    iget v1, p1, Ll/l;->c:I

    if-ge v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ll/l;->b()F

    move-result v0

    invoke-virtual {p1}, Ll/l;->a()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gez v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public c(Ll/l;)F
    .locals 2

    iget-object v0, p0, Ll/l;->d:Lf/h;

    iget-object v1, p1, Ll/l;->d:Lf/h;

    invoke-static {v0, v1}, LK/n;->a(Lf/h;Lf/h;)F

    move-result v0

    return v0
.end method

.method public c()Ll/a;
    .locals 1

    iget-object v0, p0, Ll/l;->q:Ll/a;

    return-object v0
.end method

.method public d()Z
    .locals 2

    sget-object v0, Ll/l;->i:Ljava/util/Set;

    iget-object v1, p0, Ll/l;->q:Ll/a;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Ll/o;
    .locals 1

    iget-object v0, p0, Ll/l;->o:Ll/o;

    return-object v0
.end method

.method public f()LB/b;
    .locals 1

    iget-object v0, p0, Ll/l;->n:LB/b;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lae/b;->a(Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "segmentIndex"

    iget-object v2, p0, Ll/l;->b:LB/l;

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "minDistance"

    iget v2, p0, Ll/l;->f:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "accuracy"

    iget v2, p0, Ll/l;->j:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "subSegmentIndex"

    iget v2, p0, Ll/l;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "orthogonalProgress"

    iget v2, p0, Ll/l;->h:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    const-string v1, "isOutsideBounds"

    iget-boolean v2, p0, Ll/l;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lae/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lae/j;

    move-result-object v0

    invoke-virtual {v0}, Lae/j;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
