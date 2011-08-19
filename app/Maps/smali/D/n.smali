.class LD/n;
.super Lak/m;


# instance fields
.field final synthetic a:LD/e;


# direct methods
.method private constructor <init>(LD/e;)V
    .locals 0

    iput-object p1, p0, LD/n;->a:LD/e;

    invoke-direct {p0}, Lak/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LD/e;LD/d;)V
    .locals 0

    invoke-direct {p0, p1}, LD/n;-><init>(LD/e;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x48

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/K;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, LD/n;->a:LD/e;

    invoke-static {v2}, LD/e;->a(LD/e;)[LD/j;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, LD/n;->a:LD/e;

    invoke-static {v3}, LD/e;->a(LD/e;)[LD/j;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-interface {v3}, LD/j;->a()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Law/e;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v6, 0x1

    sget-object v0, Ls/K;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    iget-object v1, p0, LD/n;->a:LD/e;

    invoke-static {v1}, LD/e;->b(LD/e;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    iget-object v2, p0, LD/n;->a:LD/e;

    invoke-static {v2}, LD/e;->c(LD/e;)Ljava/util/Hashtable;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v6, v3}, Law/e;->c(II)I

    move-result v4

    iget-object v5, p0, LD/n;->a:LD/e;

    invoke-static {v5, v4}, LD/e;->a(LD/e;I)LD/j;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, LD/j;->d()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, LD/n;->a:LD/e;

    invoke-static {v5, v4}, LD/e;->a(LD/e;LD/j;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD/j;

    iget-object v2, p0, LD/n;->a:LD/e;

    invoke-static {v2}, LD/e;->d(LD/e;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, LD/j;->c()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, LD/n;->a:LD/e;

    invoke-static {v0}, LD/e;->e(LD/e;)V

    move v0, v6

    goto :goto_0
.end method
