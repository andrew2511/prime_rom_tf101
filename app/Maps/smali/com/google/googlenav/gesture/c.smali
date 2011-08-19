.class public abstract Lcom/google/googlenav/gesture/c;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/google/googlenav/gesture/h;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/gesture/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/gesture/c;->a:Lcom/google/googlenav/gesture/h;

    return-void
.end method

.method protected static a(FF)F
    .locals 5

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_0

    sub-float v0, p1, p0

    const-wide v1, 0x401921fb54442d18L

    float-to-double v3, p0

    add-double/2addr v1, v3

    float-to-double v3, p1

    sub-double/2addr v1, v3

    double-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p0}, Lcom/google/googlenav/gesture/c;->a(FF)F

    move-result v0

    neg-float v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/googlenav/gesture/e;
.end method

.method public a(JLjava/util/LinkedList;ZLjava/util/List;)Lcom/google/googlenav/gesture/e;
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/gesture/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/gesture/c;

    invoke-virtual {v0}, Lcom/google/googlenav/gesture/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/gesture/c;->d()Z

    move-result v0

    if-eq p4, v0, :cond_3

    sget-object v0, Lcom/google/googlenav/gesture/e;->a:Lcom/google/googlenav/gesture/e;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/google/googlenav/gesture/c;->a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/googlenav/gesture/e;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x63

    invoke-static {v0, p1}, Lac/g;->a(ILjava/lang/String;)Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/c;->b:Z

    return v0
.end method

.method public a(Lcom/google/googlenav/gesture/w;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/c;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gesture already active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/gesture/c;->b(Lcom/google/googlenav/gesture/w;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/c;->b:Z

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/c;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract b(Lcom/google/googlenav/gesture/w;)Z
.end method

.method public c(Lcom/google/googlenav/gesture/w;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/c;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gesture already inactive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/gesture/c;->b:Z

    invoke-virtual {p0, p1}, Lcom/google/googlenav/gesture/c;->d(Lcom/google/googlenav/gesture/w;)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract d(Lcom/google/googlenav/gesture/w;)V
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lcom/google/googlenav/gesture/w;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/googlenav/gesture/c;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gesture is not active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/gesture/c;->f(Lcom/google/googlenav/gesture/w;)Z

    move-result v0

    return v0
.end method

.method protected abstract f(Lcom/google/googlenav/gesture/w;)Z
.end method
