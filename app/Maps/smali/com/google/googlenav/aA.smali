.class public Lcom/google/googlenav/aA;
.super Ljava/lang/Object;


# static fields
.field protected static final b:Lcom/google/googlenav/ui/av;

.field protected static final c:Lcom/google/googlenav/ui/av;


# instance fields
.field a:Law/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    sput-object v0, Lcom/google/googlenav/aA;->b:Lcom/google/googlenav/ui/av;

    sget-object v0, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    sput-object v0, Lcom/google/googlenav/aA;->c:Lcom/google/googlenav/ui/av;

    return-void
.end method

.method public constructor <init>(Law/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/googlenav/aA;->c(Law/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/google/googlenav/aA;->a:Law/e;

    :cond_0
    return-void
.end method

.method private a(Law/e;Ljava/util/Vector;ZZ)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    invoke-static {p1, v9}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v8}, Law/e;->i(I)I

    move-result v1

    move v2, v10

    :goto_0
    if-ge v2, v1, :cond_3

    if-eqz p3, :cond_1

    if-nez v2, :cond_1

    invoke-direct {p0, p2, p4}, Lcom/google/googlenav/aA;->a(Ljava/util/Vector;Z)V

    :goto_1
    invoke-virtual {p1, v8, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-static {v3, v8}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v3, v5}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v9}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x2a6

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/String;

    aput-object v4, v7, v10

    aput-object v5, v7, v9

    invoke-static {v6, v7}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/aA;->b:Lcom/google/googlenav/ui/av;

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Ljava/util/Vector;)V

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/google/googlenav/aA;->c(Ljava/util/Vector;)V

    goto :goto_1

    :cond_2
    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/aA;->b:Lcom/google/googlenav/ui/av;

    invoke-direct {p0, v4, v3, v5, p2}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Ljava/util/Vector;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/ui/av;Ljava/util/Vector;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lx/q;

    const/16 v1, 0x902

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {p1, p3, v4, v4, v0}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p2, p3, v4, v4, v0}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/Vector;Z)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lx/q;

    const/16 v1, 0x902

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lx/q;-><init>(IILjava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    sget-char v2, Lcom/google/googlenav/ui/aV;->bs:C

    :goto_0
    invoke-static {v2}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2a5

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/aA;->c:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2, v4, v4, v0}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-char v2, Lcom/google/googlenav/ui/aV;->br:C

    goto :goto_0
.end method

.method private a(Law/e;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p1, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private b(Law/e;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, v4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/aA;->a(Law/e;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_0
.end method

.method private c(Ljava/util/Vector;)V
    .locals 2

    const-string v0, ""

    sget-object v1, Lcom/google/googlenav/aA;->b:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private c(Law/e;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    invoke-static {p1, v0}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/aA;->b(Law/e;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v4}, Law/e;->i(I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/googlenav/aA;->b(Law/e;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/util/Vector;)V
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/aA;->a:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/aA;->a:Law/e;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/googlenav/aA;->a(Law/e;Ljava/util/Vector;ZZ)V

    :cond_0
    return-void
.end method

.method public b(Ljava/util/Vector;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/googlenav/aA;->a:Law/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/googlenav/aA;->a:Law/e;

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/googlenav/aA;->a:Law/e;

    invoke-virtual {v2, v6, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    if-nez v1, :cond_0

    move v3, v5

    :goto_1
    invoke-direct {p0, v2, p1, v3, v5}, Lcom/google/googlenav/aA;->a(Law/e;Ljava/util/Vector;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    return-void
.end method
