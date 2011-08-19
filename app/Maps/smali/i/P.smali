.class public Li/P;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lac/m;->c(I)I

    move-result v0

    sput v0, Li/P;->a:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Li/P;->b:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Vector;ILx/U;Lcom/google/googlenav/c;)I
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p3}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    new-instance v1, LI/b;

    invoke-direct {v1, p3, p2}, LI/b;-><init>(Lcom/google/googlenav/c;Lx/U;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(LI/B;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v1

    move v2, v5

    :goto_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bx;

    iget-object v3, v0, Lcom/google/googlenav/ui/bx;->s:LI/B;

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/google/googlenav/ui/bx;->s:LI/B;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, LI/b;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    if-eq v0, v4, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_3
    move v0, v4

    goto :goto_2
.end method

.method public static a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Li/P;->a(Lcom/google/googlenav/c;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, p1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/googlenav/H;ZLx/q;Lx/U;Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/bx;
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/H;->a()[Lcom/google/googlenav/U;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    move v2, v5

    :goto_1
    array-length v3, v1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    invoke-static {v5, v0, v3, v4, v6}, Li/P;->a(ZLjava/util/Vector;Lcom/google/googlenav/U;ZLx/q;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/google/googlenav/H;->h()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/googlenav/H;->b()Lcom/google/googlenav/U;

    move-result-object v1

    invoke-static {v5, v0, v1, v5, v6}, Li/P;->a(ZLjava/util/Vector;Lcom/google/googlenav/U;ZLx/q;)V

    :goto_2
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/H;->f()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/google/googlenav/ui/aS;

    invoke-virtual {p0}, Lcom/google/googlenav/H;->c()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/googlenav/ui/aV;->bM:I

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, p4}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :goto_3
    invoke-virtual {p0}, Lcom/google/googlenav/H;->h()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, " "

    sget-object v3, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p1, :cond_6

    const/16 v2, 0x338

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3, v5, v5, p2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    :goto_4
    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    goto :goto_0

    :cond_4
    array-length v2, v1

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    invoke-static {v5, v0, v1, v5, v6}, Li/P;->a(ZLjava/util/Vector;Lcom/google/googlenav/U;ZLx/q;)V

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->y()Lk/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    goto :goto_3

    :cond_6
    const/16 v2, 0x339

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3, v5, v5, p2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method static a(Lcom/google/googlenav/aq;Lx/U;)Lcom/google/googlenav/ui/bx;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v0, v1, v2}, Li/P;->a(Lcom/google/googlenav/aq;Ljava/util/Vector;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/c;IILjava/lang/String;)Lcom/google/googlenav/ui/bx;
    .locals 2

    invoke-static {p0}, Li/P;->j(Lcom/google/googlenav/c;)Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    if-eqz p3, :cond_0

    sget-object v1, Lcom/google/googlenav/ui/av;->ad:Lcom/google/googlenav/ui/av;

    invoke-static {p3, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/c;ILk/l;Lx/U;)Lcom/google/googlenav/ui/bx;
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/google/googlenav/ui/bi;->a(Lk/l;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v2

    :goto_1
    sget-object v3, Lcom/google/googlenav/ui/av;->ak:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->al:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_2
    new-instance v2, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v3, 0x15

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->ak:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->c(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v2, 0x2bc

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Z)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->al:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.google.com/m/place?hl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lac/m;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/reviews.html?cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    invoke-virtual {v1}, Lf/h;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    invoke-virtual {v1}, Lf/h;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/c;Z)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/c;->C()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-eqz v2, :cond_2

    const-string v3, " \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Law/e;)Lx/q;
    .locals 4

    const/4 v0, 0x1

    invoke-static {p0, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v1}, Law/b;->g(Law/e;I)J

    move-result-wide v1

    long-to-int v1, v1

    if-nez v1, :cond_0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aV;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lx/q;

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v0}, Lx/q;-><init>(IILjava/lang/Object;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(ILcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Li/E;Lcom/google/googlenav/ui/aG;LaD/n;)V
    .locals 8

    invoke-virtual {p1, p0}, Lcom/google/googlenav/c;->a(I)[Lcom/google/googlenav/H;

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p4, v2, p0}, Li/E;->a(II)Z

    move-result v4

    new-instance v5, Lx/q;

    const/16 v6, 0x903

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {v5, v6, v2, v7}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v3, v4, v5, p3, p5}, Li/P;->a(Lcom/google/googlenav/H;ZLx/q;Lx/U;Lcom/google/googlenav/ui/aG;)Lcom/google/googlenav/ui/bx;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/googlenav/H;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/googlenav/ui/aS;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/googlenav/H;->c()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/googlenav/ui/aV;->bM:I

    invoke-direct {v3, v4, v5}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p5}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v4

    invoke-virtual {v4, v3}, LaD/p;->c(Lcom/google/googlenav/ui/aS;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p5}, Lcom/google/googlenav/ui/aG;->a()LaD/p;

    move-result-object v0

    invoke-virtual {v0, v1, p6}, LaD/p;->a(Ljava/util/List;LaD/n;)V

    :cond_2
    return-void
.end method

.method private static a(Law/e;ZLjava/lang/StringBuilder;[Lcom/google/googlenav/ui/aI;[Lcom/google/googlenav/ui/aI;)V
    .locals 12

    if-eqz p1, :cond_2

    sget-char p1, Lcom/google/googlenav/ui/aV;->bs:C

    invoke-static {p1}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Law/e;->i(I)I

    move-result p1

    const/4 v0, 0x5

    if-le p1, v0, :cond_3

    const/4 v0, 0x5

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_7

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v1}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Law/e;->i(I)I

    move-result v5

    const/4 v6, 0x0

    move v11, v6

    move-object v6, v2

    move v2, v11

    :goto_3
    if-ge v2, v5, :cond_4

    const/4 v7, 0x3

    invoke-virtual {v4, v7, v2}, Law/e;->e(II)Law/e;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    sub-int v8, v5, v8

    if-ge v2, v8, :cond_0

    const-string v8, ", "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v8, 0x1

    invoke-static {v7, v8}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-static {v7, v9}, Law/b;->g(Law/e;I)J

    move-result-wide v9

    long-to-int v7, v9

    invoke-static {v8}, LR/a;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/googlenav/ui/aV;->b(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v7, :cond_1

    new-instance v6, Lx/q;

    const/4 v7, 0x5

    const/4 v9, -0x1

    invoke-direct {v6, v7, v9, v8}, Lx/q;-><init>(IILjava/lang/Object;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    sget-char p1, Lcom/google/googlenav/ui/aV;->br:C

    invoke-static {p1}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    invoke-static {v4, v2}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    aput-object v4, p3, v1

    if-eqz v6, :cond_6

    sget-object v4, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    :goto_4
    const/4 v5, 0x1

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v7, v6}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    aput-object v3, p4, v1

    if-lt v1, v0, :cond_5

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    sub-int v2, p1, v2

    if-ge v1, v2, :cond_5

    const-string v2, ", "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_6
    sget-object v4, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    goto :goto_4

    :cond_7
    return-void
.end method

.method public static a(Lcom/google/googlenav/aB;Ljava/util/Vector;Li/x;)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/googlenav/ui/h;

    invoke-direct {v0, p0, v1, v1, p2}, Lcom/google/googlenav/ui/h;-><init>(Lcom/google/googlenav/aB;IILi/x;)V

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/googlenav/aB;->a(Lcom/google/googlenav/C;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/google/googlenav/c;Lcom/google/googlenav/ui/aG;Lcom/google/googlenav/ui/aQ;Z)V
    .locals 8

    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ak()Lcom/google/googlenav/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/bj;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    :goto_1
    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-eqz v1, :cond_6

    new-instance v2, Lx/q;

    const/16 v3, 0xf

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lx/q;-><init>(II)V

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/google/googlenav/c;->q()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v1, :cond_4

    :cond_3
    invoke-static {v0}, Li/bl;->a(Lcom/google/googlenav/bj;)Lcom/google/googlenav/ui/aS;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;Lx/Q;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :cond_4
    if-eqz v1, :cond_9

    const/16 v0, 0x1b

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/d;->R()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/googlenav/c;->u()[Lcom/google/googlenav/bu;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Lcom/google/googlenav/c;->u()[Lcom/google/googlenav/bu;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_8

    invoke-virtual {p0}, Lcom/google/googlenav/c;->t()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v3, Lx/q;

    const/16 v4, 0x907

    invoke-direct {v3, v4, v7, v2}, Lx/q;-><init>(IILjava/lang/Object;)V

    move-object v2, v3

    goto :goto_2

    :cond_7
    new-instance v2, Lx/q;

    const/16 v3, 0x908

    invoke-virtual {p0}, Lcom/google/googlenav/c;->u()[Lcom/google/googlenav/bu;

    move-result-object v4

    invoke-direct {v2, v3, v7, v4}, Lx/q;-><init>(IILjava/lang/Object;)V

    goto :goto_2

    :cond_8
    new-instance v2, Lx/q;

    const/4 v3, 0x5

    invoke-static {p0}, Li/P;->c(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v7, v4}, Lx/q;-><init>(IILjava/lang/Object;)V

    goto :goto_2

    :cond_9
    const/16 v0, 0x1a

    goto :goto_3
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x1de

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aq:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->aL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->as()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/googlenav/ui/av;->aq:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-static {v0}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;)[Lcom/google/googlenav/ui/aI;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a([Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    return-void
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;I)V
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x28a

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p0, v0}, Li/P;->g(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x76c

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gt p2, v1, :cond_0

    invoke-virtual {p1, v0, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_0
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;IZLcom/google/googlenav/ui/aG;LaD/n;)V
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v1, 0x23e

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v0, p0, p3, p4, p5}, Li/P;->a(Ljava/util/Vector;Lcom/google/googlenav/c;ZLcom/google/googlenav/ui/aG;LaD/n;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x79e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    if-ltz p2, :cond_1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gt p2, v1, :cond_1

    invoke-virtual {p1, v0, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;Li/x;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bf()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->M()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/d;->x()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x340

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c0

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    move v0, v2

    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/googlenav/c;->L()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v1

    invoke-virtual {p2, v1}, Li/x;->b(Lf/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x34a

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5dc

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    move v0, v2

    goto :goto_1
.end method

.method private static a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object v1, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {p2, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {p0}, Li/P;->i(Lcom/google/googlenav/c;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/google/googlenav/ui/aV;->e(I)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private static a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->B()Ljava/util/Vector;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/aq;

    invoke-static {p0, p2}, Li/P;->a(Lcom/google/googlenav/aq;Lx/U;)Lcom/google/googlenav/ui/bx;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Lcom/google/googlenav/ui/aG;)V
    .locals 22

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Law/e;->i(I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    invoke-static {v5, v7}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v7

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object v8

    sget-char v9, Lcom/google/googlenav/ui/aV;->bs:C

    invoke-interface {v8, v9}, Lk/j;->c(C)I

    move-result v8

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v6, :cond_8

    const/4 v11, 0x2

    invoke-virtual {v5, v11, v10}, Law/e;->e(II)Law/e;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x2

    invoke-static {v12, v14}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x2

    invoke-static {v11, v14}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v14

    if-eqz v14, :cond_2

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Law/e;->h(I)Z

    move-result v15

    if-eqz v15, :cond_2

    const-string v15, " "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Law/e;->d(I)I

    move-result v14

    invoke-static {v14}, Lcom/google/googlenav/c;->d(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static {v12}, Li/P;->a(Law/e;)Lx/q;

    move-result-object v12

    move-object v0, v13

    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object v4, v12

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v12

    const/4 v13, 0x3

    invoke-static {v11, v13}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13}, LR/a;->b(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    new-instance v14, Lcom/google/googlenav/ui/aS;

    const/16 v15, 0x10

    invoke-direct {v14, v13, v15}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    move-object v0, v14

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v13

    :goto_2
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    const/4 v15, 0x4

    invoke-virtual {v11, v15}, Law/e;->i(I)I

    move-result v15

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_7

    const/16 v17, 0x4

    move-object v0, v11

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Law/e;->e(II)Law/e;

    move-result-object v17

    const-string v18, "\""

    sget-object v19, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static/range {v18 .. v19}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v18, 0x3

    invoke-static/range {v17 .. v18}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    sget-object v20, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    move-object v0, v14

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    const-string v18, " "

    sget-object v19, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static/range {v18 .. v19}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v18, 0x6

    invoke-static/range {v17 .. v18}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    sget-object v20, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    move-object v0, v14

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    const-string v18, "\""

    sget-object v19, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static/range {v18 .. v19}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v18, 0x4

    invoke-static/range {v17 .. v18}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v18

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, LR/a;->b(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string v19, " "

    sget-object v20, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    invoke-static/range {v19 .. v20}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v19, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    invoke-static/range {v18 .. v19}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, LR/a;->b(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string v19, " - "

    sget-object v20, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    invoke-static/range {v19 .. v20}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v19, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    invoke-static/range {v18 .. v19}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v18

    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    const/16 v18, 0x9

    invoke-static/range {v17 .. v18}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuffer;

    const/16 v19, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v19, " \u00bb"

    const-string v20, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, LR/a;->b(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    const-string v19, " - "

    sget-object v20, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    invoke-static/range {v19 .. v20}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v19

    move-object v0, v14

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v19, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    const/16 v20, 0x1

    const/16 v21, 0x0

    invoke-static/range {v17 .. v17}, Li/P;->a(Law/e;)Lx/q;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v17

    :goto_4
    if-eqz v16, :cond_5

    sget v18, Li/P;->a:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move v1, v8

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/aI;->a(IIII)V

    :cond_5
    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_6
    const-string v17, ""

    sget-object v18, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    invoke-static/range {v17 .. v18}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v17

    goto :goto_4

    :cond_7
    new-instance v11, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v11}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v11, v12}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v11

    invoke-virtual {v11, v14}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v11

    invoke-virtual {v11, v13}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v11

    const/16 v12, 0x32

    invoke-virtual {v11, v12}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_8
    new-instance p3, Ljava/util/Vector;

    invoke-direct/range {p3 .. p3}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Li/P;->e(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Li/P;->q(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/4 v8, 0x3

    invoke-static {v5, v8}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuffer;

    const/4 v10, 0x2

    invoke-static {v5, v10}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, " \u00bb"

    const-string v10, ""

    invoke-static {v5, v10, v8}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_9

    new-instance v8, Lx/q;

    const/16 v10, 0x2ce

    const/16 v11, 0x12

    invoke-static/range {p0 .. p0}, Li/P;->e(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Lx/q;-><init>(IILjava/lang/Object;)V

    sget-object v10, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v5, v10, v11, v12, v8}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9
    new-instance v5, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v5}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v5, v7}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    move-object/from16 v0, p3

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->c(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    const/16 v5, 0x32

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p1, 0x21

    invoke-virtual/range {p0 .. p1}, Lcom/google/googlenav/c;->g(I)V

    goto/16 :goto_0

    :cond_a
    move-object v13, v14

    goto/16 :goto_2
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Lcom/google/googlenav/ui/aG;Li/E;)V
    .locals 2

    const/16 v0, 0x1c

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3, p4}, Li/P;->b(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Lcom/google/googlenav/ui/aG;Li/E;)V

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Lcom/google/googlenav/ui/bu;)V
    .locals 11

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, v9}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v1

    invoke-static {v1, v9}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v6}, Law/e;->i(I)I

    move-result v3

    if-le v3, v4, :cond_2

    move v3, v4

    :cond_2
    move v4, v10

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v6, v4}, Law/e;->e(II)Law/e;

    move-result-object v5

    invoke-static {v5}, Lcom/google/googlenav/bD;->a(Law/e;)Lcom/google/googlenav/bD;

    move-result-object v5

    invoke-static {v2, v5, p2, p3, v9}, Li/P;->a(Ljava/util/Vector;Lcom/google/googlenav/bD;Lx/U;Lcom/google/googlenav/ui/bu;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/16 v3, 0x25a

    invoke-static {v3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    new-instance v5, Lx/q;

    const/16 v6, 0xf

    const/16 v7, 0x11

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v3, v4, v9, v10, v5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v3, v2}, Lcom/google/googlenav/ui/aQ;->c(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    :cond_4
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Li/E;)V
    .locals 12

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x1

    invoke-static {v6, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v1

    invoke-static {v6}, Li/P;->b(Law/e;)[Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->bc:Lcom/google/googlenav/ui/av;

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/ui/aV;->a([Ljava/lang/String;Lcom/google/googlenav/ui/av;)I

    move-result v5

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Law/e;->i(I)I

    move-result v7

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v7, :cond_3

    const/4 v1, 0x2

    invoke-virtual {v6, v1, v2}, Law/e;->e(II)Law/e;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p3, v2}, Li/E;->b(I)Z

    move-result v4

    invoke-static/range {v0 .. v5}, Li/P;->a(Ljava/util/Vector;Law/e;IZZI)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    invoke-static {v6, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p3}, Li/E;->a()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_4

    sget-char v4, Lcom/google/googlenav/ui/aV;->bs:C

    invoke-static {v4}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/av;->bc:Lcom/google/googlenav/ui/av;

    const/4 v4, 0x1

    const/4 v7, 0x0

    new-instance v8, Lx/q;

    const/16 v9, 0x8fe

    const/4 v10, -0x1

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v1, v3, v4, v7, v8}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v1, v3, v4, v7, v8}, Lcom/google/googlenav/ui/aI;->a(IIII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {v6, v1}, Law/e;->i(I)I

    move-result v7

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v7, :cond_5

    const/4 v1, 0x3

    invoke-virtual {v6, v1, v2}, Law/e;->e(II)Law/e;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p3, v2}, Li/E;->a(I)Z

    move-result v4

    invoke-static/range {v0 .. v5}, Li/P;->a(Ljava/util/Vector;Law/e;IZZI)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_4
    sget-char v4, Lcom/google/googlenav/ui/aV;->br:C

    invoke-static {v4}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    new-instance p3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {p3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    const/16 v0, 0x13

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    sget-object p3, Lcom/google/googlenav/ui/bx;->c:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lcom/google/googlenav/c;->g(I)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Li/E;Lcom/google/googlenav/ui/aG;LaD/n;)V
    .locals 8

    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p3}, Li/E;->b()Z

    move-result v7

    const/4 v0, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Li/P;->a(ILcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Li/E;Lcom/google/googlenav/ui/aG;LaD/n;)V

    if-eqz v7, :cond_2

    const/4 v0, 0x2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Li/P;->a(ILcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Li/E;Lcom/google/googlenav/ui/aG;LaD/n;)V

    :cond_2
    invoke-static {p0, v2, p2}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->y()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/google/googlenav/c;->z()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->w()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    const/4 v0, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Li/P;->a(ILcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Li/E;Lcom/google/googlenav/ui/aG;LaD/n;)V

    if-eqz v7, :cond_4

    const/4 v0, 0x3

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Li/P;->a(ILcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Li/E;Lcom/google/googlenav/ui/aG;LaD/n;)V

    :cond_4
    const/4 p3, -0x1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->x()Z

    move-result p4

    if-eqz p4, :cond_7

    if-eqz v7, :cond_6

    const/16 p3, 0x338

    invoke-static {p3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object p3

    :goto_1
    sget-object p4, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    const/4 p5, 0x1

    const/4 v0, 0x0

    new-instance v1, Lx/q;

    const/16 v3, 0x904

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {p3, p4, p5, v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object p3

    new-instance p4, Lcom/google/googlenav/ui/aQ;

    invoke-direct {p4}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {p4, p3}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p2, 0x904

    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->v()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->z()Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p0}, Lcom/google/googlenav/c;->w()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_5

    move-object p3, p4

    :cond_5
    new-instance p4, Lcom/google/googlenav/ui/aQ;

    invoke-direct {p4}, Lcom/google/googlenav/ui/aQ;-><init>()V

    sget-object p5, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {p3, p5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {v2, p3, p4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    new-instance p3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {p3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {p3, v2}, Lcom/google/googlenav/ui/aQ;->c(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    const/16 p3, 0x2f

    invoke-virtual {p2, p3}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p1, 0x1d

    invoke-virtual {p0, p1}, Lcom/google/googlenav/c;->g(I)V

    goto/16 :goto_0

    :cond_6
    const/16 p3, 0x339

    invoke-static {p3}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_7
    move p2, p3

    goto :goto_2
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Z)V
    .locals 11

    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    if-eqz p3, :cond_4

    sget-char v3, Lcom/google/googlenav/ui/aV;->bs:C

    :goto_1
    invoke-static {v3}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p3, :cond_8

    const/4 p3, 0x0

    :goto_2
    if-ge p3, v1, :cond_f

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p3}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v3, v5}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v7}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/googlenav/ui/aV;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v5, ""

    :cond_2
    invoke-static {v4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v6}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    sget-char v3, Lcom/google/googlenav/ui/aV;->br:C

    goto :goto_1

    :cond_5
    const/4 v7, 0x4

    invoke-static {v3, v7}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "... "

    sget-object v9, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v7}, LR/a;->b(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    sget-object v7, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v7}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v4, 0x5

    invoke-static {v3, v4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_7
    const-string v3, " ..."

    sget-object v4, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/googlenav/ui/av;->aY:Lcom/google/googlenav/ui/av;

    const/4 v4, 0x1

    const/4 v7, 0x0

    new-instance v8, Lx/q;

    const/4 v9, 0x5

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10, v5}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v6, v3, v4, v7, v8}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/googlenav/ui/aI;->a(IIII)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    const/4 p3, 0x3

    if-le v1, p3, :cond_a

    const/4 p3, 0x3

    :goto_4
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x0

    :goto_5
    if-ge v3, p3, :cond_c

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v4, v5}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2ee

    invoke-static {v6}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v5, 0x1

    sub-int v5, p3, v5

    if-ge v3, v5, :cond_b

    const-string v5, " ... "

    sget-object v6, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_6
    const/4 v5, 0x6

    invoke-static {v4, v5}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, LR/a;->a(Ljava/lang/String;ZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_a
    move p3, v1

    goto :goto_4

    :cond_b
    const-string v5, ""

    sget-object v6, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 p3, 0x0

    move v3, p3

    :goto_7
    if-ge v3, v0, :cond_e

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/4 v4, 0x1

    sub-int v4, v0, v4

    if-ge v3, v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v4, ", "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_d
    sget-object v4, Lcom/google/googlenav/ui/av;->aX:Lcom/google/googlenav/ui/av;

    invoke-static {p3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p3, v3, 0x1

    move v3, p3

    goto :goto_7

    :cond_e
    const-string p3, ""

    sget-object v0, Lcom/google/googlenav/ui/av;->aX:Lcom/google/googlenav/ui/av;

    invoke-static {p3, v0}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_f
    new-instance p3, Lcom/google/googlenav/ui/aQ;

    invoke-direct {p3}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {p3, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    const/16 v0, 0x13

    invoke-virtual {p3, v0}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    const/16 p3, 0x8ff

    invoke-virtual {p2, p3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-virtual {p2, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/google/googlenav/c;->g(I)V

    goto/16 :goto_0
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;ZZ)V
    .locals 19

    const/4 v5, 0x7

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    const/16 v8, 0xf

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v8

    if-eqz v8, :cond_2

    new-instance v9, Lcom/google/googlenav/aA;

    invoke-virtual {v8}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/google/googlenav/aA;-><init>(Law/e;)V

    if-eqz p4, :cond_3

    invoke-virtual {v9, v7}, Lcom/google/googlenav/aA;->b(Ljava/util/Vector;)V

    :cond_2
    :goto_1
    const/16 p4, 0x2

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result p4

    const/4 v8, 0x5

    move/from16 v0, p4

    move v1, v8

    if-le v0, v1, :cond_4

    const/4 v8, 0x5

    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p4

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    move-object v10, v0

    move/from16 v0, p4

    new-array v0, v0, [Lcom/google/googlenav/ui/aI;

    move-object v11, v0

    move-object v0, v5

    move/from16 v1, p3

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    invoke-static {v0, v1, v2, v3, v4}, Li/P;->a(Law/e;ZLjava/lang/StringBuilder;[Lcom/google/googlenav/ui/aI;[Lcom/google/googlenav/ui/aI;)V

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v8, :cond_5

    aget-object v13, v10, v12

    invoke-virtual {v6, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    aget-object v13, v11, v12

    invoke-virtual {v6, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v9, v7}, Lcom/google/googlenav/aA;->a(Ljava/util/Vector;)V

    goto :goto_1

    :cond_4
    move/from16 v8, p4

    goto :goto_2

    :cond_5
    add-int/lit8 v12, v8, 0x1

    move v0, v12

    move/from16 v1, p4

    if-ge v0, v1, :cond_6

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v12, Lcom/google/googlenav/ui/av;->ba:Lcom/google/googlenav/ui/av;

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v15, Lx/q;

    const/16 v16, 0x900

    const/16 v17, -0x1

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v9, v12, v13, v14, v15}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v9, v12, v13, v14, v15}, Lcom/google/googlenav/ui/aI;->a(IIII)V

    invoke-virtual {v6, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_4
    if-eqz p3, :cond_a

    move/from16 p3, v8

    :goto_5
    move/from16 v0, p3

    move/from16 v1, p4

    if-ge v0, v1, :cond_7

    aget-object v8, v10, p3

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    aget-object v8, v11, p3

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_6
    const/16 p3, 0x1

    goto :goto_4

    :cond_7
    const/16 p3, 0x3

    move-object v0, v5

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Law/e;->i(I)I

    move-result p3

    const/16 p4, 0x0

    :goto_6
    move/from16 v0, p4

    move/from16 v1, p3

    if-ge v0, v1, :cond_9

    const/4 v8, 0x3

    move-object v0, v5

    move v1, v8

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Law/e;->e(II)Law/e;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v9}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    sub-int v9, p3, v9

    move/from16 v0, p4

    move v1, v9

    if-ge v0, v1, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_8
    sget-object v9, Lcom/google/googlenav/ui/av;->aX:Lcom/google/googlenav/ui/av;

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    :cond_9
    const-string p3, ""

    sget-object p4, Lcom/google/googlenav/ui/av;->aX:Lcom/google/googlenav/ui/av;

    invoke-static/range {p3 .. p4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object p3

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p3, 0x4

    move-object v0, v5

    move/from16 v1, p3

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long p4, v8, v10

    if-eqz p4, :cond_a

    const/16 p4, 0x2

    invoke-static/range {p3 .. p4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object p3

    invoke-static/range {p3 .. p3}, LR/a;->b(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_a

    sget-object p4, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    const/4 v5, 0x1

    const/4 v8, 0x0

    new-instance v9, Lx/q;

    const/4 v10, 0x5

    const/4 v11, -0x1

    invoke-static/range {p0 .. p0}, Li/P;->d(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lx/q;-><init>(IILjava/lang/Object;)V

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move v2, v5

    move v3, v8

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object p3

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a
    const/16 p3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Z)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_b

    const/16 p3, 0x0

    :goto_7
    new-instance p4, Lcom/google/googlenav/ui/aQ;

    invoke-direct/range {p4 .. p4}, Lcom/google/googlenav/ui/aQ;-><init>()V

    move-object/from16 v0, p4

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p4

    move-object/from16 v0, p4

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p4

    const/16 v5, 0x2e

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p4

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    sget-object p4, Lcom/google/googlenav/ui/bx;->d:Ljava/lang/Object;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    invoke-virtual/range {p2 .. p3}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p2

    invoke-virtual/range {p1 .. p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 p1, 0xa

    invoke-virtual/range {p0 .. p1}, Lcom/google/googlenav/c;->g(I)V

    goto/16 :goto_0

    :cond_b
    sget-object p4, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static/range {p3 .. p4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object p3

    goto :goto_7
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v5}, Lcom/google/googlenav/c;->b(Z)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v5, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/googlenav/ui/av;->be:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aV()Lcom/google/googlenav/ay;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ay;->a(J)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_3

    move v1, v5

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    :cond_3
    return-void
.end method

.method public static a(Lcom/google/googlenav/c;Ljava/util/Vector;ZZ)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/16 v0, 0x4b1

    :goto_1
    if-eqz p3, :cond_4

    const/16 v1, 0x224

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    if-eqz p2, :cond_5

    sget-object v3, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    :goto_3
    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {p0, p3}, Li/P;->b(Lcom/google/googlenav/c;Z)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/google/googlenav/ui/av;->x:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    if-nez p2, :cond_2

    invoke-static {v0}, Lcom/google/googlenav/ui/aV;->f(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :cond_2
    invoke-virtual {v1}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x4b0

    goto :goto_1

    :cond_4
    const/16 v1, 0x226

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_5
    sget-object v3, Lcom/google/googlenav/ui/av;->v:Lcom/google/googlenav/ui/av;

    goto :goto_3
.end method

.method public static a(Lf/h;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/ui/aQ;)V
    .locals 1

    const/16 v0, 0x18

    invoke-static {p2, p0, v0}, LQ/h;->a(Lcom/google/googlenav/ui/aQ;Lf/h;I)V

    return-void
.end method

.method public static a(Ljava/util/Vector;ILjava/util/Vector;Lc/p;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v2, 0x204

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v4

    move v3, v4

    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    const/4 v0, 0x6

    if-ge v3, v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/ba;

    invoke-static {v1, v0, p3}, Li/P;->a(Ljava/util/Vector;Li/ba;Lc/p;)V

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->c(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x14e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void
.end method

.method private static a(Ljava/util/Vector;Law/e;IZZI)V
    .locals 7

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Law/e;->f(I)Law/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Law/b;->e(Law/e;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq p2, v4, :cond_7

    if-eqz p3, :cond_4

    const/16 p3, 0x8fd

    :goto_0
    new-instance v3, Lx/q;

    const/4 v4, 0x0

    invoke-direct {v3, p3, p2, v4}, Lx/q;-><init>(IILjava/lang/Object;)V

    move-object p2, v3

    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_5

    sget-char v3, Lcom/google/googlenav/ui/aV;->bs:C

    invoke-static {v3}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v3, Lcom/google/googlenav/ui/av;->bc:Lcom/google/googlenav/ui/av;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p3, v3, v4, v5, p2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object p3

    sget-object v3, Lcom/google/googlenav/ui/av;->bc:Lcom/google/googlenav/ui/av;

    invoke-virtual {p3, v1, v3}, Lcom/google/googlenav/ui/aV;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)I

    move-result p3

    sub-int p3, p5, p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    sget-object p5, Lcom/google/googlenav/ui/av;->bk:Lcom/google/googlenav/ui/av;

    invoke-static {p3, p5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object p3, Lcom/google/googlenav/ui/av;->bb:Lcom/google/googlenav/ui/av;

    const/4 p5, 0x1

    const/4 v1, 0x0

    invoke-static {v2, p3, p5, v1, p2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p5, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p2, p3, p5, v1, v2}, Lcom/google/googlenav/ui/aI;->a(IIII)V

    invoke-virtual {p0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Law/e;->i(I)I

    move-result p2

    if-eqz p2, :cond_0

    if-eqz p4, :cond_6

    :goto_3
    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/googlenav/ui/aV;->n()Lk/j;

    move-result-object p3

    sget-char p4, Lcom/google/googlenav/ui/aV;->bs:C

    invoke-interface {p3, p4}, Lk/j;->c(C)I

    move-result p3

    if-lez p2, :cond_2

    const/4 p4, 0x2

    invoke-static {v0, p4}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, LR/a;->b(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_2

    sget-object p5, Lcom/google/googlenav/ui/av;->aV:Lcom/google/googlenav/ui/av;

    invoke-static {p4, p5}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object p4

    const/4 p5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p4, p3, p5, v0, v1}, Lcom/google/googlenav/ui/aI;->a(IIII)V

    invoke-virtual {p0, p4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    const/4 p4, 0x0

    :goto_4
    if-ge p4, p2, :cond_0

    const/4 p5, 0x3

    invoke-virtual {p1, p5, p4}, Law/e;->e(II)Law/e;

    move-result-object p5

    const/4 v0, 0x1

    invoke-static {p5, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p5, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object p5

    const/4 v1, 0x2

    invoke-static {p5, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p5, v2}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object p5

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/google/googlenav/ui/aV;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string p5, ""

    :cond_3
    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p5}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/googlenav/ui/av;->bd:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p3, v2, v3, v4}, Lcom/google/googlenav/ui/aI;->a(IIII)V

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/googlenav/ui/av;->aY:Lcom/google/googlenav/ui/av;

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Lx/q;

    const/4 v5, 0x5

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6, p5}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object p5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {p5, p3, v0, v1, v2}, Lcom/google/googlenav/ui/aI;->a(IIII)V

    invoke-virtual {p0, p5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    :cond_4
    const/16 p3, 0x8fc

    goto/16 :goto_0

    :cond_5
    sget-char v3, Lcom/google/googlenav/ui/aV;->br:C

    invoke-static {v3}, Lcom/google/googlenav/ui/aV;->a(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_6
    const/4 p2, 0x0

    goto/16 :goto_3

    :cond_7
    move-object p2, v3

    goto/16 :goto_1
.end method

.method private static a(Ljava/util/Vector;Law/e;Z)V
    .locals 6

    if-eqz p2, :cond_1

    const/16 v0, 0x9

    :goto_0
    if-eqz p2, :cond_2

    const/16 v1, 0x22

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_3

    invoke-virtual {p1, v0, v4}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    sub-int v5, v3, v5

    if-ge v4, v5, :cond_0

    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    const/16 v1, 0x21

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    const-string v0, ""

    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private static a(Ljava/util/Vector;Lcom/google/googlenav/U;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/google/googlenav/U;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/googlenav/U;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/googlenav/U;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    return-void
.end method

.method private static a(Ljava/util/Vector;Lcom/google/googlenav/U;ZLx/q;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/google/googlenav/U;->b:Ljava/lang/String;

    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    sget-object v2, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    invoke-static {p0, v0, v1, v2}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    iget-object v0, p1, Lcom/google/googlenav/U;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v3, v4, p3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/google/googlenav/U;->c:Ljava/lang/String;

    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1, v3, v4, p3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const-string v0, " "

    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Vector;Lcom/google/googlenav/bD;Lx/U;Lcom/google/googlenav/ui/bu;Z)V
    .locals 10

    const/16 v9, 0x11

    const/16 v8, 0x10

    const/4 v7, 0x1

    iget-object v0, p1, Lcom/google/googlenav/bD;->c:Law/e;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/googlenav/bD;->c:Law/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    if-eqz p4, :cond_7

    iget-object v3, p1, Lcom/google/googlenav/bD;->b:Ljava/lang/String;

    invoke-static {v3}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    sget-object v3, Lcom/google/googlenav/ui/av;->bn:Lcom/google/googlenav/ui/av;

    const/4 v4, 0x0

    new-instance v5, Lx/q;

    iget-object v6, p1, Lcom/google/googlenav/bD;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v8, v6}, Lx/q;-><init>(IILjava/lang/Object;)V

    invoke-static {v0, v3, v7, v4, v5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p1, Lcom/google/googlenav/bD;->e:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/google/googlenav/bD;->e:Ljava/lang/String;

    sget-object v3, Lcom/google/googlenav/ui/av;->bo:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/googlenav/bD;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1, v7}, Lcom/google/googlenav/bD;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bx;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/bD;->b:Ljava/lang/String;

    invoke-static {v1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, v9}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v1

    iget-object v2, p1, Lcom/google/googlenav/bD;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;

    :cond_5
    iget-object v1, p1, Lcom/google/googlenav/bD;->a:Lf/h;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/google/googlenav/bD;->a:Lf/h;

    invoke-static {v1, p3, v0}, Li/P;->a(Lf/h;Lcom/google/googlenav/ui/bu;Lcom/google/googlenav/ui/aQ;)V

    :cond_6
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lcom/google/googlenav/ui/av;->bm:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private static a(Ljava/util/Vector;Li/ba;Lc/p;)V
    .locals 5

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Li/ba;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Li/ba;->c()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bj:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    new-instance v1, Lc/a;

    invoke-virtual {p1}, Li/ba;->a()J

    move-result-wide v2

    sget v4, Lcom/google/googlenav/ui/aV;->bG:I

    invoke-direct {v1, v2, v3, v4}, Lc/a;-><init>(JI)V

    invoke-static {v1, p2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/util/Vector;Z)V
    .locals 3

    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    sget-object v2, Lcom/google/googlenav/ui/av;->aM:Lcom/google/googlenav/ui/av;

    :goto_0
    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    if-nez p1, :cond_0

    sget-char v1, Lcom/google/googlenav/ui/aV;->av:C

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/aV;->x()Lk/j;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/lang/String;Lk/j;)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v2, Lcom/google/googlenav/ui/av;->w:Lcom/google/googlenav/ui/av;

    goto :goto_0
.end method

.method private static a(ZLjava/util/Vector;Lcom/google/googlenav/U;ZLx/q;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Li/P;->a(Ljava/util/Vector;Lcom/google/googlenav/U;ZLx/q;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Li/P;->a(Ljava/util/Vector;Lcom/google/googlenav/U;Z)V

    goto :goto_0
.end method

.method public static a(Lcom/google/googlenav/aq;Ljava/util/Vector;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/aq;->b()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ak;

    invoke-virtual {v0}, Lcom/google/googlenav/ak;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/googlenav/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, v5}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;Z)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/googlenav/aq;->a()Lcom/google/googlenav/ak;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ak;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/ak;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-static {v1, p3, v6, v5, v0}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v0, v6

    goto :goto_0

    :cond_3
    new-instance v2, Lx/q;

    const/4 v3, 0x5

    const/4 v4, -0x1

    invoke-virtual {v0}, Lcom/google/googlenav/ak;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lx/q;-><init>(IILjava/lang/Object;)V

    move-object v0, v2

    goto :goto_1
.end method

.method public static a(Ljava/util/Vector;Lcom/google/googlenav/c;ZLcom/google/googlenav/ui/aG;LaD/n;)Z
    .locals 9

    const/16 v8, 0x24

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/c;->D()Lcom/google/googlenav/B;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/B;->a()Lcom/google/googlenav/bk;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/googlenav/B;->b()Lcom/google/googlenav/bk;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bD()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v6

    :goto_1
    invoke-static {v2, p3, p4}, Lcom/google/googlenav/ui/M;->a(Lcom/google/googlenav/bk;Lcom/google/googlenav/ui/aG;LaD/n;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/googlenav/bk;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/googlenav/c;->bE()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0x23d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v4, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    invoke-static {v1, v2}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lx/q;

    const/16 v2, 0x79e

    invoke-direct {v1, v2, v7}, Lx/q;-><init>(II)V

    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v8, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-eq v2, v7, :cond_2

    if-ne v3, v7, :cond_8

    :cond_2
    sget-object v2, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2, v6, v5, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_3
    move v0, v6

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x23b

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v4, v1, v5

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x23c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v4, v1, v5

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/google/googlenav/bk;->a()I

    move-result v0

    if-nez v0, :cond_7

    :cond_4
    if-nez p2, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/google/googlenav/bk;->a()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v5

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x244

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const/16 v0, 0x243

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object v4, v1, v5

    invoke-static {v0, v1}, LR/a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v4, v3, v5, v5, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v3, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3, v5, v5, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v2, v6, v5, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    move-object v2, v1

    move-object v1, v0

    move v0, v5

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Li/P;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/googlenav/c;Z)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->d()[Lcom/google/googlenav/c;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    const/16 v1, 0x223

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->c()I

    move-result v2

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->c()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/16 v1, 0x225

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static b(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x31f

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x909

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private static b(Lcom/google/googlenav/c;Ljava/util/Vector;Lx/U;Lcom/google/googlenav/ui/aG;Li/E;)V
    .locals 21

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v5

    const/4 v6, 0x3

    invoke-static {v5, v6}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Law/e;->i(I)I

    move-result v7

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_a

    const/4 v10, 0x1

    invoke-virtual {v5, v10, v9}, Law/e;->e(II)Law/e;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v12

    invoke-static {v12}, Li/P;->a(Law/e;)Lx/q;

    move-result-object v13

    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    const/4 v15, 0x2

    invoke-static {v12, v15}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v12

    const/4 v15, 0x6

    invoke-static {v10, v15}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v12}, LR/a;->b(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-static {v15}, LR/a;->b(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_2

    :cond_0
    if-eqz v13, :cond_5

    sget-object v16, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    :goto_1
    move-object v0, v12

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-static {v15}, LR/a;->b(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_1

    const-string v12, " - "

    sget-object v16, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v12, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    invoke-static {v15, v12}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    const-string v12, ""

    sget-object v15, Lcom/google/googlenav/ui/av;->aU:Lcom/google/googlenav/ui/av;

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v0, v12

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object v4, v13

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v12

    invoke-virtual {v14, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Law/e;->h(I)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x2

    invoke-virtual {v10, v13}, Law/e;->d(I)I

    move-result v13

    invoke-static {v13}, Lcom/google/googlenav/c;->d(I)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v13, v15}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v13, " "

    sget-object v15, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v13, v15}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    const/4 v13, 0x3

    invoke-static {v10, v13}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, LR/a;->b(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "\\<.*?>"

    const-string v16, ""

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    invoke-static {v13, v15}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v13, " "

    sget-object v15, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    invoke-static {v13, v15}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    const/4 v13, 0x5

    invoke-static {v10, v13}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x4

    invoke-static {v10, v15}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p4

    move v1, v9

    invoke-virtual {v0, v1}, Li/E;->c(I)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v17, v15

    :goto_2
    sget-object v18, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    sget-object v19, Lcom/google/googlenav/ui/av;->aQ:Lcom/google/googlenav/ui/av;

    move-object v0, v12

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/google/googlenav/ui/i;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/av;Lcom/google/googlenav/ui/av;)V

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v15, v13, :cond_8

    const-string v13, " "

    sget-object v15, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    invoke-static {v13, v15}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-eqz v16, :cond_7

    const/16 v13, 0x36a

    invoke-static {v13}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v13

    :goto_3
    sget-object v15, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    const/16 v16, 0x1

    const/16 v17, 0x0

    new-instance v18, Lx/q;

    const/16 v19, 0x906

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v9

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lx/q;-><init>(IILjava/lang/Object;)V

    move-object v0, v13

    move-object v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_4
    const/4 v13, 0x1

    invoke-static {v12, v10, v13}, Li/P;->a(Ljava/util/Vector;Law/e;Z)V

    const/4 v13, 0x0

    invoke-static {v12, v10, v13}, Li/P;->a(Ljava/util/Vector;Law/e;Z)V

    new-instance v10, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v10}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {v10, v12}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object v10

    const/16 v12, 0x33

    invoke-virtual {v10, v12}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v10

    const/4 v12, 0x2

    invoke-static {v11, v12}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, LR/a;->b(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/google/googlenav/ui/aV;->m()Lcom/google/googlenav/ui/aV;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/google/googlenav/ui/aV;->a(ZI)Lk/l;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/googlenav/ui/aQ;->a(Lk/l;)Lcom/google/googlenav/ui/aQ;

    :goto_5
    invoke-virtual {v10}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object v16, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    goto/16 :goto_1

    :cond_6
    move-object/from16 v17, v13

    goto/16 :goto_2

    :cond_7
    const/16 v13, 0x36b

    invoke-static {v13}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :cond_8
    const-string v13, ""

    sget-object v15, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v13, v15}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    new-instance v12, Lcom/google/googlenav/ui/aS;

    sget v13, Lcom/google/googlenav/ui/aV;->bS:I

    invoke-direct {v12, v11, v13}, Lcom/google/googlenav/ui/aS;-><init>(Ljava/lang/String;I)V

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/aH;Lcom/google/googlenav/ui/aj;)Lcom/google/googlenav/ui/bi;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    goto :goto_5

    :cond_a
    new-instance p3, Ljava/util/Vector;

    invoke-direct/range {p3 .. p3}, Ljava/util/Vector;-><init>()V

    const/16 p4, 0x4

    move-object v0, v5

    move/from16 v1, p4

    invoke-static {v0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object p4

    new-instance v5, Ljava/lang/StringBuffer;

    const/4 v7, 0x2

    move-object/from16 v0, p4

    move v1, v7

    invoke-static {v0, v1}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object p4

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p4, " \u00bb"

    const-string v7, ""

    move-object/from16 v0, p4

    move-object v1, v7

    move-object v2, v5

    invoke-static {v0, v1, v2}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)I

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p4 .. p4}, LR/a;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    new-instance v5, Lx/q;

    const/16 v7, 0x2cf

    const/16 v9, 0x13

    invoke-static/range {p0 .. p0}, Li/P;->f(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object p0

    move-object v0, v5

    move v1, v7

    move v2, v9

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lx/q;-><init>(IILjava/lang/Object;)V

    sget-object p0, Lcom/google/googlenav/ui/av;->aR:Lcom/google/googlenav/ui/av;

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move v2, v7

    move v3, v9

    move-object v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object p0

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b
    new-instance p0, Lcom/google/googlenav/ui/aQ;

    invoke-direct/range {p0 .. p0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->c(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lx/U;)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    const/16 p2, 0x33

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    sget-object p2, Lcom/google/googlenav/ui/bx;->e:Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->b(Ljava/lang/Object;)Lcom/google/googlenav/ui/aQ;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object p0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static b(Lcom/google/googlenav/c;Ljava/util/Vector;Z)V
    .locals 5

    const/16 v4, 0x3b2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v0}, Lcom/google/googlenav/ui/aQ;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    if-eqz p2, :cond_2

    const/16 v1, 0x11

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aN:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->j(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;

    const/16 v2, 0x19

    invoke-virtual {p0, v2}, Lcom/google/googlenav/c;->g(I)V

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    invoke-static {p0}, Li/P;->i(Lcom/google/googlenav/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/google/googlenav/ui/aV;->e(I)Lcom/google/googlenav/ui/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/bi;)Lcom/google/googlenav/ui/aQ;

    :cond_1
    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    invoke-static {v4}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->aO:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/aQ;->a(Lcom/google/googlenav/ui/aI;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    invoke-static {p0}, Li/P;->b(Lcom/google/googlenav/c;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_1
.end method

.method private static b(Law/e;)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v9}, Law/e;->i(I)I

    move-result v0

    invoke-virtual {p0, v10}, Law/e;->i(I)I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [Ljava/lang/String;

    move v3, v7

    move v4, v7

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0, v9, v3}, Law/e;->e(II)Law/e;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-static {v5, v8}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    move v0, v7

    move v3, v4

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v10, v0}, Law/e;->e(II)Law/e;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-static {v4, v8}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    move v3, v5

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method public static c(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Li/P;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ppmode=image&cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 2

    const/16 v0, 0x40b

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x258

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    return-void
.end method

.method public static d(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Li/P;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ppmode=info&cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {p0, v0}, Li/P;->p(Lcom/google/googlenav/c;Ljava/util/Vector;)V

    new-instance v1, Lcom/google/googlenav/ui/aQ;

    invoke-direct {v1}, Lcom/google/googlenav/ui/aQ;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->az()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/googlenav/ui/av;->ac:Lcom/google/googlenav/ui/av;

    invoke-static {v2, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->az()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/ui/aQ;->a(Ljava/lang/String;)Lcom/google/googlenav/ui/aQ;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/google/googlenav/ui/aQ;->f(I)Lcom/google/googlenav/ui/aQ;

    :cond_1
    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/aQ;->a(Ljava/util/Vector;)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/aQ;->d(I)Lcom/google/googlenav/ui/aQ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/aQ;->a()Lcom/google/googlenav/ui/bx;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static e(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Li/P;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ppmode=provider_blocks&start=0&cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v4}, Lcom/google/googlenav/c;->b(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static f(Lcom/google/googlenav/c;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Li/P;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&ppmode=google_reviews&start=0&cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 5

    new-instance v0, Lx/q;

    const/16 v1, 0x578

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2, p0}, Lx/q;-><init>(IILjava/lang/Object;)V

    const/16 v1, 0x3f0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->bv:Lcom/google/googlenav/ui/av;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;ZZLx/q;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    return-void
.end method

.method public static g(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->D()Lcom/google/googlenav/B;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bD()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/M;->a(Lcom/google/googlenav/B;Z)Lcom/google/googlenav/bk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bD()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aT()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x9d

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->aS()I

    move-result v1

    move v2, v8

    :goto_0
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Lcom/google/googlenav/c;->c(I)Law/e;

    move-result-object v3

    if-lt v2, v9, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->D()Lcom/google/googlenav/B;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, v10}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->D()Lcom/google/googlenav/B;

    move-result-object v4

    invoke-virtual {v3, v10}, Law/e;->d(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/googlenav/B;->a(I)Lcom/google/googlenav/bk;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/googlenav/bk;->a(Lcom/google/googlenav/bk;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-static {v4, v5}, Lcom/google/googlenav/ui/M;->a(Lcom/google/googlenav/bk;Z)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/googlenav/bk;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_2
    invoke-virtual {v4}, Lcom/google/googlenav/bk;->a()I

    move-result v4

    invoke-static {v4, v5}, Lcom/google/googlenav/ui/M;->a(IZ)Lcom/google/googlenav/ui/av;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v3, v9}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v3, v4}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v5, v8

    goto :goto_1

    :cond_5
    const/16 v0, 0x25c

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aP:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    const/16 v0, 0x3b7

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aT:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->a(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public static g(Lcom/google/googlenav/c;)[I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Law/e;->f(I)Law/e;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Law/e;->i(I)I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v0, v6

    sub-int v2, v4, v2

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v5

    :cond_2
    invoke-virtual {v1, v7}, Law/e;->f(I)Law/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v5}, Law/e;->i(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v7

    sub-int v1, v4, v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v0, v4

    goto :goto_0

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static h(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bj()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x245

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2c3

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0
.end method

.method public static h(Lcom/google/googlenav/c;)[I
    .locals 4

    const/4 v3, 0x2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->b(I)Lcom/google/googlenav/aE;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Li/P;->b:[I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aE;->a()Law/e;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Li/P;->b:[I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Law/e;->i(I)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Law/e;->i(I)I

    move-result v0

    new-array v2, v3, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public static i(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 4

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->I()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x40

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25e

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0
.end method

.method public static i(Lcom/google/googlenav/c;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->am()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->E()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ai()Lcom/google/googlenav/aB;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Lcom/google/googlenav/c;)Ljava/util/Vector;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/google/googlenav/ui/av;->B:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aw()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->C:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ax()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->C:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ay()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/av;->C:Lcom/google/googlenav/ui/av;

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->aa()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static j(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->g()Lf/N;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x3af

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25a

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0
.end method

.method public static k(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 5

    const/16 v4, 0x2c1

    invoke-virtual {p0}, Lcom/google/googlenav/c;->X()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->aP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aN()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->aO()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-lez v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v0, 0x1e1

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v4}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    :goto_1
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x1df

    invoke-static {v2}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, LR/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v4}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x1e2

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v4}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x1e0

    invoke-static {v1}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, LR/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, v4}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public static l(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3d4

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0
.end method

.method public static m(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->ag()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->M()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/googlenav/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/googlenav/c;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2bf

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    goto :goto_0
.end method

.method public static n(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 2

    invoke-static {}, Lcom/google/googlenav/d;->a()Lcom/google/googlenav/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/labs/android/e;->a:Lcom/google/googlenav/labs/android/e;

    invoke-virtual {v0}, Lcom/google/googlenav/labs/android/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/c;->h()Lf/h;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x28d

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static o(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->bD()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x63

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x843

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    :goto_0
    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lcom/google/googlenav/c;->g(I)V

    return-void

    :cond_0
    const/16 v0, 0x84

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x834

    invoke-static {p0, p1, v0, v1}, Li/P;->a(Lcom/google/googlenav/c;Ljava/util/Vector;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static p(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/c;->O()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/c;->av()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/googlenav/ui/av;->aL:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/googlenav/c;->aw()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aE:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/googlenav/c;->ax()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->aE:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static q(Lcom/google/googlenav/c;Ljava/util/Vector;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/google/googlenav/c;->f()Law/e;

    move-result-object v0

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v5}, Law/e;->h(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v4

    move v2, v4

    :goto_1
    if-ge v1, v5, :cond_2

    invoke-virtual {v0, v5, v1}, Law/e;->c(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v4

    :goto_2
    if-ge v2, v5, :cond_4

    invoke-virtual {v0, v5, v2}, Law/e;->c(II)I

    move-result v3

    if-eqz v2, :cond_3

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/av;->ab:Lcom/google/googlenav/ui/av;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/aI;->b(Ljava/lang/String;Lcom/google/googlenav/ui/av;)Lcom/google/googlenav/ui/aI;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method
