.class public LG/k;
.super Ljava/lang/Object;


# instance fields
.field private a:LG/z;

.field private b:I

.field private c:[LG/Q;

.field private d:Z

.field private final e:Ljava/util/ArrayList;

.field private final f:Ljava/util/ArrayList;

.field private g:I


# direct methods
.method public constructor <init>(LG/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG/k;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LG/k;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, LG/k;->a(LG/z;)V

    return-void
.end method

.method private a(ILG/Q;IZ)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, LG/k;->b:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p2, p3, p4}, LG/k;->a(LG/Q;IZ)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, LG/k;->a:LG/z;

    invoke-virtual {v0}, LG/z;->c()LG/Q;

    move-result-object v0

    iget-object v1, p0, LG/k;->a:LG/z;

    invoke-virtual {v1, v4}, LG/z;->a(I)LG/Q;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    invoke-static {v1, v0, p2}, LG/H;->a(LG/Q;LG/Q;LG/Q;)I

    move-result v2

    if-ltz v2, :cond_4

    if-nez p4, :cond_1

    iget-object v2, p0, LG/k;->c:[LG/Q;

    aget-object v2, v2, p1

    invoke-static {v1, v0, v2}, LG/H;->a(LG/Q;LG/Q;LG/Q;)I

    move-result v2

    if-gez v2, :cond_1

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    iget-object v3, p0, LG/k;->c:[LG/Q;

    aget-object v3, v3, p1

    invoke-static {v1, v0, p2, v3, v2}, LG/H;->a(LG/Q;LG/Q;LG/Q;LG/Q;LG/Q;)Z

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, v2, p3, v5}, LG/k;->a(ILG/Q;IZ)V

    :cond_1
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, p2, p3, p4}, LG/k;->a(ILG/Q;IZ)V

    :cond_2
    :goto_2
    iget-object v0, p0, LG/k;->c:[LG/Q;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, LG/Q;->b(LG/Q;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LG/k;->a:LG/z;

    sub-int v1, p1, v5

    invoke-virtual {v0, v1}, LG/z;->a(I)LG/Q;

    move-result-object v0

    iget-object v1, p0, LG/k;->a:LG/z;

    invoke-virtual {v1, p1}, LG/z;->a(I)LG/Q;

    move-result-object v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1

    :cond_4
    if-nez p4, :cond_2

    iget-object v2, p0, LG/k;->c:[LG/Q;

    aget-object v2, v2, p1

    invoke-static {v1, v0, v2}, LG/H;->a(LG/Q;LG/Q;LG/Q;)I

    move-result v2

    if-ltz v2, :cond_2

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    iget-object v3, p0, LG/k;->c:[LG/Q;

    aget-object v3, v3, p1

    invoke-static {v1, v0, v3, p2, v2}, LG/H;->a(LG/Q;LG/Q;LG/Q;LG/Q;LG/Q;)Z

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0, v2, p3, v4}, LG/k;->a(ILG/Q;IZ)V

    goto :goto_2
.end method

.method private a(LG/Q;IZ)V
    .locals 3

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    iget v0, p0, LG/k;->g:I

    iget-object v1, p0, LG/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LG/k;->e:Ljava/util/ArrayList;

    new-instance v1, LG/b;

    invoke-direct {v1}, LG/b;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, LG/k;->f:Ljava/util/ArrayList;

    new-instance v1, LG/ad;

    invoke-direct {v1}, LG/ad;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, LG/k;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LG/k;->g:I

    :cond_1
    iget-object v0, p0, LG/k;->e:Ljava/util/ArrayList;

    iget v1, p0, LG/k;->g:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/b;

    invoke-virtual {v0, p1}, LG/b;->a(LG/Q;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, LG/k;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, LG/k;->f:Ljava/util/ArrayList;

    iget v1, p0, LG/k;->g:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/ad;

    invoke-virtual {p0, p2}, LG/ad;->a(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(LG/m;Ljava/util/ArrayList;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v4, p0, LG/k;->g:I

    iput-boolean v4, p0, LG/k;->d:Z

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    invoke-virtual {p1}, LG/m;->b()I

    move-result v1

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2, v0}, LG/m;->a(ILG/Q;)V

    invoke-direct {p0, v4, v0, v4, v5}, LG/k;->a(ILG/Q;IZ)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3, v0}, LG/m;->a(ILG/Q;)V

    invoke-direct {p0, v4, v0, v4, v4}, LG/k;->a(ILG/Q;IZ)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_1
    iget v0, p0, LG/k;->g:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, LG/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/b;

    invoke-virtual {v0}, LG/b;->a()I

    move-result v2

    if-le v2, v5, :cond_1

    invoke-virtual {v0}, LG/b;->d()LG/m;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, LG/b;->c()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(LG/m;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, LG/k;->a(LG/m;[ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public a(LG/m;[ILjava/util/List;Ljava/util/List;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v4, p0, LG/k;->g:I

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    move v0, v5

    :goto_0
    iput-boolean v0, p0, LG/k;->d:Z

    invoke-virtual {p1}, LG/m;->a()LG/S;

    move-result-object v0

    iget-object v1, p0, LG/k;->a:LG/z;

    invoke-virtual {v1, v0}, LG/z;->b(LG/z;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v1, p0, LG/k;->a:LG/z;

    invoke-virtual {v1, v0}, LG/z;->a(LG/z;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, LG/k;->d:Z

    if-eqz v0, :cond_0

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    invoke-virtual {p1}, LG/m;->b()I

    move-result v1

    invoke-virtual {p1, v4, v0}, LG/m;->a(ILG/Q;)V

    iget-boolean v2, p0, LG/k;->d:Z

    if-eqz v2, :cond_4

    aget v2, p2, v4

    :goto_2
    invoke-direct {p0, v4, v0, v2, v5}, LG/k;->a(ILG/Q;IZ)V

    move v2, v5

    :goto_3
    if-ge v2, v1, :cond_6

    invoke-virtual {p1, v2, v0}, LG/m;->a(ILG/Q;)V

    iget-boolean v3, p0, LG/k;->d:Z

    if-eqz v3, :cond_5

    aget v3, p2, v2

    :goto_4
    invoke-direct {p0, v4, v0, v3, v4}, LG/k;->a(ILG/Q;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_4

    :cond_6
    move v1, v4

    :goto_5
    iget v0, p0, LG/k;->g:I

    if-ge v1, v0, :cond_0

    iget-object v0, p0, LG/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/b;

    invoke-virtual {v0}, LG/b;->a()I

    move-result v2

    if-le v2, v5, :cond_7

    invoke-virtual {v0}, LG/b;->d()LG/m;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual {v0}, LG/b;->c()V

    iget-boolean v0, p0, LG/k;->d:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, LG/k;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/ad;

    invoke-virtual {v0}, LG/ad;->c()I

    move-result v2

    if-le v2, v5, :cond_8

    invoke-virtual {v0}, LG/ad;->a()[I

    move-result-object v2

    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v0}, LG/ad;->b()V

    :cond_9
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5
.end method

.method public a(LG/z;)V
    .locals 3

    iput-object p1, p0, LG/k;->a:LG/z;

    invoke-virtual {p1}, LG/z;->a()I

    move-result v0

    iput v0, p0, LG/k;->b:I

    iget v0, p0, LG/k;->b:I

    new-array v0, v0, [LG/Q;

    iput-object v0, p0, LG/k;->c:[LG/Q;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, LG/k;->c:[LG/Q;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LG/k;->c:[LG/Q;

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
