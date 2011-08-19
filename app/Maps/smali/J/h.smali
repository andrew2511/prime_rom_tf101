.class public LJ/h;
.super Ljava/lang/Object;


# static fields
.field private static a:LJ/h;


# instance fields
.field private volatile b:LJ/a;

.field private c:Lf/Y;

.field private d:LH/f;

.field private e:Lv/t;

.field private f:Ljava/util/List;

.field private g:LJ/j;

.field private h:LaU/a;

.field private i:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LJ/h;->i:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LJ/h;->f:Ljava/util/List;

    new-instance v0, LJ/a;

    const-string v1, ""

    invoke-direct {v0, v1}, LJ/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LJ/h;->b:LJ/a;

    return-void
.end method

.method public static a()LJ/h;
    .locals 1

    sget-object v0, LJ/h;->a:LJ/h;

    return-object v0
.end method

.method private a(LJ/a;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, LJ/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, LJ/h;->i:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, LJ/h;->b:LJ/a;

    invoke-virtual {v2}, LJ/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, LJ/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LJ/h;->b:LJ/a;

    invoke-virtual {v0, p1}, LJ/a;->a(LJ/a;)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Lf/Y;LH/f;Lv/t;LaU/a;)V
    .locals 1

    sget-object v0, LJ/h;->a:LJ/h;

    if-nez v0, :cond_0

    new-instance v0, LJ/h;

    invoke-direct {v0}, LJ/h;-><init>()V

    sput-object v0, LJ/h;->a:LJ/h;

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, LJ/h;->a:LJ/h;

    iput-object p0, v0, LJ/h;->c:Lf/Y;

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, LJ/h;->a:LJ/h;

    iput-object p1, v0, LJ/h;->d:LH/f;

    :cond_2
    if-eqz p2, :cond_3

    sget-object v0, LJ/h;->a:LJ/h;

    iput-object p2, v0, LJ/h;->e:Lv/t;

    :cond_3
    if-eqz p3, :cond_4

    sget-object v0, LJ/h;->a:LJ/h;

    iput-object p3, v0, LJ/h;->h:LaU/a;

    :cond_4
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5

    invoke-direct {p0, p2}, LJ/h;->a(Ljava/util/List;)V

    iget-object v0, p0, LJ/h;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LJ/h;->b:LJ/a;

    invoke-virtual {v1, p1}, LJ/a;->a(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/m;

    :try_start_1
    invoke-interface {v0, p1}, LJ/m;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SuggestManager, Provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    invoke-direct {p0}, LJ/h;->j()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ/m;

    invoke-interface {p0}, LJ/m;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    if-nez p0, :cond_1

    const-string v0, ""

    :goto_0
    if-nez p1, :cond_2

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private d(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LJ/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ/m;

    invoke-interface {p0}, LJ/m;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-interface {p0}, LJ/m;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "o"

    goto :goto_0
.end method

.method private declared-synchronized j()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LJ/h;->i:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, LJ/h;->b:LJ/a;

    invoke-virtual {v1}, LJ/a;->b()LJ/a;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, LJ/h;->g:LJ/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, LJ/h;->g:LJ/j;

    invoke-virtual {p0}, LJ/h;->h()Z

    move-result v2

    invoke-interface {v0, v1, v2}, LJ/j;->a(LJ/a;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Z)I
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, LJ/h;->b:LJ/a;

    invoke-virtual {v1}, LJ/a;->c()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, LJ/h;->b:LJ/a;

    invoke-virtual {v1, v0}, LJ/a;->a(I)LJ/o;

    move-result-object v1

    invoke-virtual {v1}, LJ/o;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_0

    invoke-virtual {v1}, LJ/o;->a()I

    move-result v1

    move v2, v3

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v4, p0, LJ/h;->b:LJ/a;

    invoke-virtual {v4, v2}, LJ/a;->a(I)LJ/o;

    move-result-object v4

    invoke-virtual {v4}, LJ/o;->a()I

    move-result v4

    if-ne v4, v1, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v4

    goto :goto_0
.end method

.method public a(LJ/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, LJ/h;->a(LJ/a;)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, LJ/h;->j()V

    :cond_0
    return-void
.end method

.method public a(LJ/j;)V
    .locals 0

    iput-object p1, p0, LJ/h;->g:LJ/j;

    return-void
.end method

.method public a(LJ/m;)V
    .locals 1

    invoke-virtual {p0}, LJ/h;->b()I

    move-result v0

    invoke-virtual {p0, p1, v0}, LJ/h;->a(LJ/m;I)V

    return-void
.end method

.method public a(LJ/m;I)V
    .locals 1

    invoke-interface {p1, p2}, LJ/m;->b(I)V

    iget-object v0, p0, LJ/h;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lf/Y;)V
    .locals 0

    iput-object p1, p0, LJ/h;->c:Lf/Y;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, LJ/h;->f:Ljava/util/List;

    invoke-direct {p0, p1, v0}, LJ/h;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LJ/h;->a(Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, LJ/h;->i()LJ/a;

    move-result-object v1

    invoke-virtual {v1, v0}, LJ/a;->a(I)LJ/o;

    move-result-object v1

    const/16 v2, 0x49

    const-string v3, "s"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, LJ/h;->i()LJ/a;

    move-result-object v5

    invoke-virtual {v5}, LJ/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "o"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, LJ/o;->a()I

    move-result v5

    invoke-direct {p0, v5}, LJ/h;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "y"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, LJ/o;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "p"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, LJ/h;->a(Ljava/lang/String;Z)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lac/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget v2, p2, v1

    invoke-virtual {p0, v2}, LJ/h;->c(I)LJ/m;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0}, LJ/h;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    iget-object v0, p0, LJ/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ/m;

    invoke-interface {p0}, LJ/m;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 3

    const/16 v0, -0x64

    iget-object v1, p0, LJ/h;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ/m;

    invoke-interface {p0}, LJ/m;->e()I

    move-result v2

    if-le v2, v0, :cond_0

    invoke-interface {p0}, LJ/m;->e()I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, LJ/h;->i:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LJ/h;->b:LJ/a;

    invoke-virtual {v1, p1}, LJ/a;->b(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(I)LJ/m;
    .locals 2

    iget-object v0, p0, LJ/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ/m;

    invoke-interface {p0}, LJ/m;->a()I

    move-result v1

    if-ne v1, p1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LJ/h;->a(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, LJ/h;->a(I)Z

    move-result v0

    return v0
.end method

.method public e()Lv/t;
    .locals 1

    iget-object v0, p0, LJ/h;->e:Lv/t;

    return-object v0
.end method

.method public f()Law/e;
    .locals 1

    iget-object v0, p0, LJ/h;->c:Lf/Y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LJ/h;->c:Lf/Y;

    invoke-virtual {v0}, Lf/Y;->p()Law/e;

    move-result-object v0

    goto :goto_0
.end method

.method public g()Lf/h;
    .locals 1

    iget-object v0, p0, LJ/h;->d:LH/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LJ/h;->d:LH/f;

    invoke-virtual {v0}, LH/f;->q()Lf/h;

    move-result-object v0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, LJ/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ/m;

    invoke-interface {p0}, LJ/m;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public i()LJ/a;
    .locals 1

    iget-object v0, p0, LJ/h;->b:LJ/a;

    return-object v0
.end method
