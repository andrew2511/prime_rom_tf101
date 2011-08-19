.class public Lcom/google/googlenav/ag;
.super Ljava/lang/Object;

# interfaces
.implements LA/f;
.implements Lac/h;


# instance fields
.field private a:Lac/c;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lac/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lac/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ag;->a:Lac/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/bb;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/ag;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/ag;
    .locals 1

    sget-object v0, Lcom/google/googlenav/q;->a:Lcom/google/googlenav/ag;

    return-object v0
.end method


# virtual methods
.method public a(Law/e;)V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd_kk.mm.ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ag;->a:Lac/c;

    invoke-virtual {v1, v0, p1}, Lac/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlenav/ag;->c()V

    return-void
.end method

.method public ap()LA/c;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ag;->a:Lac/c;

    invoke-virtual {v1}, Lac/c;->d()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    invoke-virtual {v0}, Law/e;->e()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v0, LA/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, LA/c;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/googlenav/ag;->a:Lac/c;

    invoke-virtual {v0}, Lac/c;->c()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/googlenav/ag;->a:Lac/c;

    invoke-virtual {v3, v0}, Lac/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Law/e;

    invoke-virtual {v0, v8}, Law/e;->i(I)I

    move-result v3

    if-lez v3, :cond_0

    const-string v4, "Headers:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    invoke-virtual {v0, v8, v4}, Law/e;->e(II)Law/e;

    move-result-object v5

    invoke-static {v5, v8}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5, v9}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v0, v9}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ag;->a:Lac/c;

    invoke-virtual {v0}, Lac/c;->b()V

    return-void
.end method
