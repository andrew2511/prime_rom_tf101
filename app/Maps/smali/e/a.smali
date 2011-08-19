.class public Le/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Thread;

.field private volatile b:Le/d;

.field private final c:LS/b;

.field private final d:Le/o;

.field private final e:Le/B;

.field private final f:Le/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lt/y;Ljava/lang/Thread;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Le/a;->a:Ljava/lang/Thread;

    new-instance v0, LS/b;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, LS/b;-><init>(Lt/y;Z)V

    iput-object v0, p0, Le/a;->c:LS/b;

    new-instance v0, Le/B;

    iget-object v1, p0, Le/a;->c:LS/b;

    invoke-direct {v0, p1, v1}, Le/B;-><init>(Landroid/content/Context;LS/b;)V

    iput-object v0, p0, Le/a;->e:Le/B;

    new-instance v0, Le/o;

    iget-object v1, p0, Le/a;->c:LS/b;

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v2

    invoke-virtual {v2}, Lad/t;->D()Lad/o;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/o;-><init>(LS/b;Lad/o;)V

    iput-object v0, p0, Le/a;->d:Le/o;

    new-instance v0, Le/i;

    iget-object v1, p0, Le/a;->c:LS/b;

    invoke-direct {v0, v1}, Le/i;-><init>(LS/b;)V

    iput-object v0, p0, Le/a;->f:Le/i;

    return-void
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)LG/S;
    .locals 5

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v1, v0, [LG/Q;

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/A;

    add-int/lit8 v4, v3, 0x1

    iget-object v0, v0, Le/A;->b:LG/Q;

    aput-object v0, v1, v3

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/A;

    add-int/lit8 v4, v3, 0x1

    iget-object v0, v0, Le/A;->b:LG/Q;

    aput-object v0, v1, v3

    move v3, v4

    goto :goto_1

    :cond_1
    invoke-static {v1}, LG/S;->a([LG/Q;)LG/S;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/A;

    iget-object v1, p0, Le/A;->b:LG/Q;

    invoke-virtual {v1}, LG/Q;->e()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {}, Lad/b;->a()Lad/t;

    move-result-object v2

    invoke-virtual {v2}, Lad/t;->D()Lad/o;

    move-result-object v2

    invoke-virtual {v2}, Lad/o;->a()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, LG/S;->b(I)LG/S;

    move-result-object v0

    return-object v0
.end method

.method private final b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Le/a;->f:Le/i;

    invoke-virtual {v0}, Le/i;->a()V

    return-void
.end method

.method public a(Laa/E;LF/M;)V
    .locals 3

    invoke-direct {p0}, Le/a;->b()V

    iget-object v0, p0, Le/a;->b:Le/d;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Le/a;->b(Laa/E;LF/M;)Le/g;

    move-result-object v0

    iget-object v1, p0, Le/a;->b:Le/d;

    iget-object v2, v0, Le/g;->a:LF/M;

    iget v0, v0, Le/g;->b:I

    invoke-interface {v1, v2, v0}, Le/d;->a(LF/M;I)V

    goto :goto_0
.end method

.method public a(Le/d;)V
    .locals 0

    iput-object p1, p0, Le/a;->b:Le/d;

    return-void
.end method

.method public b(Laa/E;LF/M;)Le/g;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Le/a;->b()V

    iget-object v0, p0, Le/a;->c:LS/b;

    invoke-virtual {v0, v4}, LS/b;->a(LG/S;)V

    iget-object v0, p0, Le/a;->d:Le/o;

    invoke-virtual {v0, p1}, Le/o;->a(Laa/E;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Le/g;

    invoke-direct {v0, v4, v3}, Le/g;-><init>(LF/M;I)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Le/a;->d:Le/o;

    invoke-virtual {v1, p1, p2}, Le/o;->a(Laa/E;LF/M;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Le/g;

    invoke-direct {v0, v4, v3}, Le/g;-><init>(LF/M;I)V

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Le/a;->a(Ljava/util/Collection;Ljava/util/Collection;)LG/S;

    move-result-object v2

    iget-object v3, p0, Le/a;->c:LS/b;

    invoke-virtual {v3, v2}, LS/b;->a(LG/S;)V

    iget-object v2, p0, Le/a;->f:Le/i;

    invoke-virtual {v2, v0, v1}, Le/i;->a(Ljava/util/Collection;Ljava/util/Collection;)Le/h;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Le/g;

    const/4 v1, 0x2

    invoke-direct {v0, v4, v1}, Le/g;-><init>(LF/M;I)V

    goto :goto_0

    :cond_2
    new-instance v1, LF/u;

    invoke-virtual {p1}, Laa/E;->l()LG/y;

    move-result-object v2

    invoke-direct {v1, v2}, LF/u;-><init>(LG/y;)V

    iget-object v2, p0, Le/a;->e:Le/B;

    invoke-virtual {v2, v0, v1, p2}, Le/B;->a(Le/h;LF/u;LF/M;)LF/M;

    move-result-object v0

    new-instance v1, Le/g;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/g;-><init>(LF/M;I)V

    move-object v0, v1

    goto :goto_0
.end method
