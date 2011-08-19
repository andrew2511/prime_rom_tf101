.class final Lbg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbg$a;
    }
.end annotation


# instance fields
.field private final a:Lae;

.field private final b:Lbi;


# direct methods
.method constructor <init>(Lbi;Lae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lbm;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lbg;->b:Lbi;

    iput-object p2, p0, Lbg;->a:Lae;

    return-void
.end method


# virtual methods
.method public final a(Lbg$a;)V
    .locals 10

    const/4 v3, 0x1

    const/4 v9, 0x0

    new-instance v0, Lbr;

    iget-object v1, p0, Lbg;->b:Lbi;

    iget-object v1, v1, Lbi;->a:Ljava/lang/reflect/Type;

    invoke-direct {v0, v1}, Lbr;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v1, p0, Lbg;->a:Lae;

    invoke-virtual {v0}, Lbr;->b()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lae;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lbg;->b:Lbi;

    invoke-interface {p1, v1}, Lbg$a;->c(Lbi;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbg;->b:Lbi;

    invoke-virtual {v1}, Lbi;->a()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_0

    iget-object v2, p0, Lbg;->b:Lbi;

    invoke-virtual {v2, v1}, Lbi;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lbg;->b:Lbi;

    invoke-interface {p1, v2}, Lbg$a;->a(Lbi;)V

    :try_start_0
    invoke-virtual {v0}, Lbr;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lbg;->b:Lbi;

    iget-object v0, v0, Lbi;->a:Ljava/lang/reflect/Type;

    invoke-interface {p1, v1, v0}, Lbg$a;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lbg;->b:Lbi;

    invoke-interface {p1, v0}, Lbg$a;->b(Lbi;)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lbr;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_5

    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_5

    invoke-static {v0}, Lbn;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v0, v3

    :goto_2
    if-eqz v0, :cond_7

    invoke-interface {p1, v1}, Lbg$a;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lbg;->b:Lbi;

    invoke-interface {p1, v1}, Lbg$a;->b(Lbi;)V

    throw v0

    :cond_6
    move v0, v9

    goto :goto_2

    :cond_7
    :try_start_2
    invoke-interface {p1}, Lbg$a;->a()V

    iget-object v0, p0, Lbg;->b:Lbi;

    invoke-virtual {v0}, Lbi;->b()Lbi;

    move-result-object v0

    new-instance v2, Lbr;

    iget-object v0, v0, Lbi;->a:Ljava/lang/reflect/Type;

    invoke-direct {v2, v0}, Lbr;-><init>(Ljava/lang/reflect/Type;)V

    invoke-virtual {v2}, Lbr;->b()Ljava/lang/Class;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_3

    const-class v2, Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isSynthetic()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    array-length v3, v2

    move v4, v9

    :goto_4
    if-ge v4, v3, :cond_a

    aget-object v5, v2, v4

    new-instance v6, Laf;

    invoke-direct {v6, v0, v5}, Laf;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    iget-object v7, p0, Lbg;->a:Lae;

    invoke-interface {v7, v6}, Lae;->a(Laf;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lbg;->a:Lae;

    invoke-virtual {v6}, Laf;->c()Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v7, v8}, Lae;->a(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lbg;->b:Lbi;

    iget-object v7, v7, Lbi;->a:Ljava/lang/reflect/Type;

    invoke-static {v5, v7}, Lbu;->a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;)Lbr;

    move-result-object v5

    invoke-virtual {v5}, Lbr;->a()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-interface {p1, v6, v7, v1}, Lbg$a;->c(Laf;Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v5}, Lbr;->c()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {p1, v6, v7, v1}, Lbg$a;->a(Laf;Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    :cond_8
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_9
    invoke-interface {p1, v6, v7, v1}, Lbg$a;->b(Laf;Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_3
.end method
