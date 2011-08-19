.class Laj/c;
.super Lak/m;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Laj/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x4b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Law/e;

    sget-object v2, Ls/q;->a:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    invoke-static {}, Laj/b;->e()Law/e;

    move-result-object v2

    invoke-virtual {v2, v9}, Law/e;->i(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-static {}, Laj/b;->e()Law/e;

    move-result-object v4

    invoke-virtual {v4, v9, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    new-instance v5, Law/e;

    sget-object v6, Ls/q;->c:Law/f;

    invoke-direct {v5, v6}, Law/e;-><init>(Law/f;)V

    invoke-static {v4, v9, v11}, Law/b;->c(Law/e;II)I

    move-result v6

    if-eq v6, v11, :cond_0

    invoke-virtual {v5, v9, v6}, Law/e;->h(II)V

    :cond_0
    invoke-virtual {v4, v10}, Law/e;->h(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v10}, Law/e;->e(I)J

    move-result-wide v7

    invoke-virtual {v5, v10, v7, v8}, Law/e;->b(IJ)V

    :cond_1
    invoke-virtual {v1, v9, v5}, Law/e;->a(ILaw/e;)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Law/e;

    sget-object v4, Ls/q;->c:Law/f;

    invoke-direct {v3, v4}, Law/e;-><init>(Law/f;)V

    invoke-virtual {v3, v9, v2}, Law/e;->h(II)V

    invoke-virtual {v1, v9, v3}, Law/e;->a(ILaw/e;)V

    goto :goto_1

    :cond_3
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    sget-object v0, Ls/q;->b:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v6, v2}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Law/e;->h(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Laj/b;->a(Law/e;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Laj/b;->b(Law/e;)V

    move v3, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-static {}, Laj/b;->e()Law/e;

    move-result-object v0

    iget-object v1, p0, Laj/c;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Laj/b;->a(Law/e;Ljava/lang/String;)Z

    :cond_2
    return v6
.end method

.method public e_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
