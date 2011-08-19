.class public Lcom/google/googlenav/ui/bB;
.super Ljava/lang/Object;

# interfaces
.implements Lk/j;


# static fields
.field static final a:C


# instance fields
.field final b:I

.field private c:Ljava/util/List;

.field private d:[J

.field private e:Ljava/util/Map;

.field private f:Ljava/util/Map;

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0xec32

    const v1, 0xecff

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-char v0, v0

    sput-char v0, Lcom/google/googlenav/ui/bB;->a:C

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/bB;->h:Z

    sget-char v0, Lcom/google/googlenav/ui/bB;->a:C

    const v1, 0xec00

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/bB;->b:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bB;->b()V

    return-void
.end method

.method private d(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(J)V
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/bB;->b(J)Lcom/google/googlenav/ui/f;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/Integer;

    iget-char v0, v0, Lcom/google/googlenav/ui/f;->d:C

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bB;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/bB;->e:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/googlenav/ui/bB;->f:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private g()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/ui/bB;->h:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->h()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 8

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/google/googlenav/ui/bB;->h:Z

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "SAVED_REMOTE_ICONS_DATA_BLOCK"

    invoke-static {v0, v1}, Lac/i;->a(Ln/a;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Law/e;

    sget-object v2, Ls/v;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    :try_start_0
    const-string v2, "SAVED_REMOTE_ICONS_DATA_BLOCK"

    invoke-interface {v0, v2}, Ln/a;->c(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Law/e;->a([B)Law/e;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Law/e;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/ui/bB;->g:I

    invoke-virtual {v1, v7}, Law/e;->i(I)I

    move-result v0

    new-array v2, v0, [J

    iput-object v2, p0, Lcom/google/googlenav/ui/bB;->d:[J

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v7, v2}, Law/e;->e(II)Law/e;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Law/e;->c(I)[B

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Law/e;->e(I)J

    move-result-wide v5

    iget-object v3, p0, Lcom/google/googlenav/ui/bB;->d:[J

    aput-wide v5, v3, v2

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/googlenav/ui/bB;->a([BJ)Lcom/google/googlenav/ui/f;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(J)C
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/bB;->b(J)Lcom/google/googlenav/ui/f;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0xec00

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/google/googlenav/ui/f;->a(Lcom/google/googlenav/ui/f;)C

    move-result v0

    goto :goto_0
.end method

.method public a([BJ)Lcom/google/googlenav/ui/f;
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/google/googlenav/ui/bB;->b(J)Lcom/google/googlenav/ui/f;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object p1, v0, Lcom/google/googlenav/ui/f;->a:[B

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/ui/bB;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v6

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/ui/bB;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-char v5, v0

    new-instance v0, Lcom/google/googlenav/ui/f;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/googlenav/ui/f;-><init>(Lcom/google/googlenav/ui/bB;[BJCLcom/google/googlenav/ui/ai;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/bB;->e:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/googlenav/ui/bB;->f:Ljava/util/Map;

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/googlenav/ui/bB;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/Set;)Ljava/util/Set;
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bB;->c()I

    move-result v0

    new-array v1, v0, [J

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    move v4, v8

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, v9

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bB;->c()I

    move-result v5

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v1, v4

    move-object v0, v3

    move v3, v5

    :goto_1
    move v4, v3

    move-object v3, v0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_2
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    move v3, v4

    goto :goto_1

    :cond_3
    move v0, v8

    move v2, v4

    :goto_2
    iget-object v4, p0, Lcom/google/googlenav/ui/bB;->d:[J

    array-length v4, v4

    if-ge v0, v4, :cond_4

    iget-object v4, p0, Lcom/google/googlenav/ui/bB;->d:[J

    aget-wide v4, v4, v0

    cmp-long v6, v4, v9

    if-nez v6, :cond_5

    :cond_4
    iput-object v1, p0, Lcom/google/googlenav/ui/bB;->d:[J

    return-object v3

    :cond_5
    invoke-direct {p0, v4, v5}, Lcom/google/googlenav/ui/bB;->d(J)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-direct {p0, v4, v5}, Lcom/google/googlenav/ui/bB;->e(J)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    array-length v6, v1

    if-ge v2, v6, :cond_8

    add-int/lit8 v6, v2, 0x1

    aput-wide v4, v1, v2

    move v2, v6

    goto :goto_3

    :cond_8
    invoke-direct {p0, v4, v5}, Lcom/google/googlenav/ui/bB;->e(J)V

    goto :goto_3
.end method

.method public a(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    iget v0, p0, Lcom/google/googlenav/ui/bB;->g:I

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bB;->b()V

    iput p1, p0, Lcom/google/googlenav/ui/bB;->g:I

    :cond_0
    return-void
.end method

.method public a(C)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bB;->f(C)Lcom/google/googlenav/ui/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(CLk/m;II)Z
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bB;->f(C)Lcom/google/googlenav/ui/f;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/google/googlenav/ui/f;->b(Lcom/google/googlenav/ui/f;)Lk/l;

    move-result-object v1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/google/googlenav/ui/f;->b(Lcom/google/googlenav/ui/f;)Lk/l;

    move-result-object v0

    invoke-interface {p2, v0, p3, p4}, Lk/m;->a(Lk/l;II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ap()LA/c;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/googlenav/ui/bB;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/f;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/f;->a()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    new-instance v1, LA/c;

    const-string v2, "DownloadedIconProvider"

    invoke-direct {v1, v2, v0}, LA/c;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method

.method public b(C)I
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bB;->f(C)Lcom/google/googlenav/ui/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/googlenav/ui/f;->b(Lcom/google/googlenav/ui/f;)Lk/l;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lcom/google/googlenav/ui/f;->b(Lcom/google/googlenav/ui/f;)Lk/l;

    move-result-object v0

    invoke-interface {v0}, Lk/l;->e()I

    move-result v0

    goto :goto_0
.end method

.method protected b(J)Lcom/google/googlenav/ui/f;
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    iget-object v0, p0, Lcom/google/googlenav/ui/bB;->f:Ljava/util/Map;

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/f;

    return-object p0
.end method

.method public b()V
    .locals 4

    const v3, 0xec00

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/bB;->g:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bB;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/bB;->f:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/google/googlenav/ui/bB;->d:[J

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/googlenav/ui/bB;->c()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/bB;->c:Ljava/util/List;

    move v0, v3

    :goto_0
    iget v1, p0, Lcom/google/googlenav/ui/bB;->b:I

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/googlenav/ui/bB;->c:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/bB;->b:I

    return v0
.end method

.method public c(C)I
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bB;->f(C)Lcom/google/googlenav/ui/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/googlenav/ui/f;->b(Lcom/google/googlenav/ui/f;)Lk/l;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-static {v0}, Lcom/google/googlenav/ui/f;->b(Lcom/google/googlenav/ui/f;)Lk/l;

    move-result-object v0

    invoke-interface {v0}, Lk/l;->f()I

    move-result v0

    goto :goto_0
.end method

.method public c(J)[B
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    invoke-virtual {p0, p1, p2}, Lcom/google/googlenav/ui/bB;->b(J)Lcom/google/googlenav/ui/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/googlenav/ui/f;->a:[B

    goto :goto_0
.end method

.method public d(C)I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d()[J
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    move v0, v6

    move v1, v6

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/ui/bB;->d:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/googlenav/ui/bB;->d:[J

    aget-wide v2, v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :cond_0
    new-array v0, v1, [J

    move v2, v6

    move v3, v6

    :goto_1
    if-ge v3, v1, :cond_4

    iget-object v4, p0, Lcom/google/googlenav/ui/bB;->d:[J

    aget-wide v4, v4, v2

    invoke-direct {p0, v4, v5}, Lcom/google/googlenav/ui/bB;->d(J)Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/googlenav/ui/bB;->d:[J

    aget-wide v2, v2, v0

    invoke-direct {p0, v2, v3}, Lcom/google/googlenav/ui/bB;->d(J)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v3, 0x1

    aput-wide v4, v0, v3

    move v3, v6

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public e()I
    .locals 1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    iget v0, p0, Lcom/google/googlenav/ui/bB;->g:I

    return v0
.end method

.method public e(C)Lk/l;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/ui/bB;->f(C)Lcom/google/googlenav/ui/f;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/googlenav/ui/f;->b(Lcom/google/googlenav/ui/f;)Lk/l;

    move-result-object v0

    goto :goto_0
.end method

.method protected f(C)Lcom/google/googlenav/ui/f;
    .locals 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    iget-object v0, p0, Lcom/google/googlenav/ui/bB;->e:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/ui/f;

    return-object p0
.end method

.method public f()V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0}, Lcom/google/googlenav/ui/bB;->g()V

    :try_start_0
    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    new-instance v1, Law/e;

    sget-object v2, Ls/v;->b:Law/f;

    invoke-direct {v1, v2}, Law/e;-><init>(Law/f;)V

    const/16 v2, 0x11

    iget v3, p0, Lcom/google/googlenav/ui/bB;->g:I

    invoke-virtual {v1, v2, v3}, Law/e;->h(II)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/googlenav/ui/bB;->d:[J

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/googlenav/ui/bB;->d:[J

    aget-wide v3, v3, v2

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_2

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Law/e;->i(I)I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_1

    const/4 v3, 0x1

    sub-int/2addr v2, v8

    invoke-virtual {v1, v3, v2}, Law/e;->g(II)V

    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v1, v2}, Law/e;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "SAVED_REMOTE_ICONS_DATA_BLOCK"

    invoke-interface {v0, v1, v2}, Ln/a;->b([BLjava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0, v3, v4}, Lcom/google/googlenav/ui/bB;->d(J)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3, v4}, Lcom/google/googlenav/ui/bB;->b(J)Lcom/google/googlenav/ui/f;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Law/e;->a(I)Law/e;

    move-result-object v4

    const/4 v5, 0x2

    iget-wide v6, v3, Lcom/google/googlenav/ui/f;->c:J

    invoke-virtual {v4, v5, v6, v7}, Law/e;->b(IJ)V

    const/4 v5, 0x3

    iget-object v3, v3, Lcom/google/googlenav/ui/f;->a:[B

    invoke-virtual {v4, v5, v3}, Law/e;->b(I[B)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4}, Law/e;->a(ILaw/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method
