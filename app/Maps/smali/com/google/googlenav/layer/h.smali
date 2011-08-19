.class public Lcom/google/googlenav/layer/h;
.super Ljava/lang/Object;


# static fields
.field private static f:I


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private final d:Ljava/util/Hashtable;

.field private final e:Ljava/util/Hashtable;

.field private g:Lcom/google/googlenav/ui/bB;

.field private h:Z

.field private i:Z

.field private j:Law/e;

.field private k:Lcom/google/googlenav/layer/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lcom/google/googlenav/layer/h;->f:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/googlenav/layer/h;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/layer/h;->c:J

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/layer/h;->d:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/layer/h;->e:Ljava/util/Hashtable;

    new-instance v0, Lcom/google/googlenav/ui/bB;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/bB;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/layer/h;->g:Lcom/google/googlenav/ui/bB;

    iput-boolean v2, p0, Lcom/google/googlenav/layer/h;->h:Z

    iput-boolean v2, p0, Lcom/google/googlenav/layer/h;->i:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/layer/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/googlenav/layer/h;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/googlenav/layer/h;
    .locals 1

    sget-object v0, Lcom/google/googlenav/layer/o;->a:Lcom/google/googlenav/layer/h;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/google/googlenav/layer/h;->h:Z

    if-eqz v0, :cond_0

    if-eq p1, v1, :cond_0

    sget v0, Lcom/google/googlenav/layer/h;->f:I

    add-int/2addr v0, p1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/layer/r;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/layer/r;

    return-object p0
.end method

.method public a(Law/e;)V
    .locals 10

    const/4 v9, 0x7

    const/4 v7, 0x6

    const/4 v5, 0x5

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x2

    invoke-static {p1, v0}, Law/b;->e(Law/e;I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/layer/h;->a:I

    const/4 v0, 0x4

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "__LAYERS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    invoke-static {p1, v0}, Law/b;->f(Law/e;I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlenav/layer/h;->c:J

    :goto_0
    iget-object v0, p0, Lcom/google/googlenav/layer/h;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/r;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/googlenav/layer/r;->c()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    sub-int/2addr v2, v8

    :goto_1
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/google/googlenav/layer/h;->e:Ljava/util/Hashtable;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    invoke-static {p1, v0}, Law/b;->a(Law/e;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/h;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/googlenav/layer/h;->d:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v0

    move v1, v6

    :goto_2
    if-ge v1, v0, :cond_3

    new-instance v2, Lcom/google/googlenav/layer/r;

    invoke-virtual {p1, v5, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/layer/r;-><init>(Law/e;)V

    iget-object v3, p0, Lcom/google/googlenav/layer/h;->d:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lcom/google/googlenav/layer/r;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v7}, Law/e;->i(I)I

    move-result v1

    move v2, v6

    :goto_3
    if-ge v2, v1, :cond_6

    new-instance v3, Lcom/google/googlenav/layer/b;

    invoke-virtual {p1, v7, v2}, Law/e;->e(II)Law/e;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/googlenav/layer/b;-><init>(Law/e;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/r;

    invoke-virtual {v3}, Lcom/google/googlenav/layer/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/googlenav/layer/r;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lcom/google/googlenav/layer/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/google/googlenav/layer/r;->a(Ljava/lang/String;Lcom/google/googlenav/layer/b;)V

    iget-object v4, p0, Lcom/google/googlenav/layer/h;->e:Ljava/util/Hashtable;

    invoke-virtual {v3}, Lcom/google/googlenav/layer/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1, v9}, Law/e;->i(I)I

    move-result v0

    move v1, v6

    :goto_4
    if-ge v1, v0, :cond_8

    new-instance v2, Lcom/google/googlenav/layer/s;

    invoke-virtual {p1, v9, v1}, Law/e;->e(II)Law/e;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/layer/s;-><init>(Law/e;)V

    invoke-virtual {v2}, Lcom/google/googlenav/layer/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/googlenav/layer/h;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Lcom/google/googlenav/layer/b;->a(Lcom/google/googlenav/layer/s;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Law/e;->i(I)I

    move-result v0

    move v1, v6

    :goto_5
    if-ge v1, v0, :cond_a

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Law/e;->e(II)Law/e;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Law/e;->d(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/googlenav/layer/h;->g:Lcom/google/googlenav/ui/bB;

    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Law/e;->c(I)[B

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/googlenav/ui/bB;->a([BJ)Lcom/google/googlenav/ui/f;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iput-boolean v8, p0, Lcom/google/googlenav/layer/h;->h:Z

    iget-object v4, p0, Lcom/google/googlenav/layer/h;->g:Lcom/google/googlenav/ui/bB;

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Law/e;->c(I)[B

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/google/googlenav/layer/h;->a(I)I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v4, v2, v5, v6}, Lcom/google/googlenav/ui/bB;->a([BJ)Lcom/google/googlenav/ui/f;

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method public a(Law/e;Lcom/google/googlenav/layer/g;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/layer/h;->i:Z

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/google/googlenav/layer/h;->j:Law/e;

    iput-object p2, p0, Lcom/google/googlenav/layer/h;->k:Lcom/google/googlenav/layer/g;

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iput-object v1, p0, Lcom/google/googlenav/layer/h;->j:Law/e;

    iput-object v1, p0, Lcom/google/googlenav/layer/h;->k:Lcom/google/googlenav/layer/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->d(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/googlenav/layer/h;->a(Law/e;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/google/googlenav/layer/g;->a()V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/google/googlenav/layer/h;->a()Lcom/google/googlenav/layer/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/h;->l()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/googlenav/layer/h;->i:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->j:Law/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->j:Law/e;

    iget-object v1, p0, Lcom/google/googlenav/layer/h;->k:Lcom/google/googlenav/layer/g;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/layer/h;->a(Law/e;Lcom/google/googlenav/layer/g;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->e:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/layer/r;

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/googlenav/layer/r;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v0

    goto :goto_0
.end method

.method public b()Ljava/util/Vector;
    .locals 3

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/googlenav/layer/h;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public c()Lcom/google/googlenav/layer/s;
    .locals 1

    const-string v0, "TrafficIncident"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/layer/h;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->e()Lcom/google/googlenav/layer/s;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/layer/s;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/layer/h;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/b;->e()Lcom/google/googlenav/layer/s;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Ljava/util/Vector;
    .locals 4

    invoke-virtual {p0}, Lcom/google/googlenav/layer/h;->e()Ljava/util/Vector;

    move-result-object v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/layer/s;

    invoke-virtual {p0}, Lcom/google/googlenav/layer/s;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/googlenav/layer/h;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/r;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/util/Vector;
    .locals 5

    const/4 v2, 0x0

    const-string v0, "__LAYERS"

    invoke-virtual {p0, v0}, Lcom/google/googlenav/layer/h;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/r;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/googlenav/layer/r;->c()[Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/google/googlenav/layer/h;->b(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/googlenav/layer/b;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/googlenav/layer/b;->e()Lcom/google/googlenav/layer/s;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/layer/h;->a:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlenav/layer/h;->c:J

    return-wide v0
.end method

.method public i()V
    .locals 4

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/google/googlenav/layer/h;->k()Law/e;

    move-result-object v3

    invoke-static {v2, v3}, Law/b;->a(Ljava/io/DataOutput;Law/e;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "PROTO_SAVED_CATEGORY_TREE_DB"

    invoke-interface {v0, v1, v2}, Ln/a;->b([BLjava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CATEGORY-CategoryTree save"

    invoke-static {v1, v0}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public j()V
    .locals 3

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->g()Ln/a;

    move-result-object v0

    const-string v1, "PROTO_SAVED_CATEGORY_TREE_DB"

    invoke-static {v0, v1}, Lac/i;->a(Ln/a;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/googlenav/layer/h;->l()V

    sget-object v2, Ls/t;->o:Law/f;

    invoke-static {v2, v1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/layer/h;->a(Law/e;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CATEGORY-CategoryTree load"

    invoke-static {v2, v1}, Lac/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "PROTO_SAVED_CATEGORY_TREE_DB"

    invoke-interface {v0, v1}, Ln/a;->a(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public k()Law/e;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, -0x1

    new-instance v1, Law/e;

    sget-object v0, Ls/t;->o:Law/f;

    invoke-direct {v1, v0}, Law/e;-><init>(Law/f;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v12}, Law/e;->h(II)V

    const/4 v0, 0x2

    iget v2, p0, Lcom/google/googlenav/layer/h;->a:I

    invoke-virtual {v1, v0, v2}, Law/e;->h(II)V

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/googlenav/layer/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILjava/lang/String;)V

    const/16 v0, 0xc

    iget-wide v2, p0, Lcom/google/googlenav/layer/h;->c:J

    invoke-virtual {v1, v0, v2, v3}, Law/e;->b(IJ)V

    const/4 v0, 0x4

    const-string v2, "__ROOT"

    invoke-virtual {v1, v0, v2}, Law/e;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/r;

    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/google/googlenav/layer/r;->a()Law/e;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Law/e;->a(ILaw/e;)V

    invoke-virtual {v0}, Lcom/google/googlenav/layer/r;->c()[Ljava/lang/String;

    move-result-object v3

    move v4, v12

    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    aget-object v5, v3, v4

    invoke-virtual {v0, v5}, Lcom/google/googlenav/layer/r;->a(Ljava/lang/String;)Lcom/google/googlenav/layer/b;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5}, Lcom/google/googlenav/layer/b;->i()Law/e;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Law/e;->a(ILaw/e;)V

    invoke-virtual {v5}, Lcom/google/googlenav/layer/b;->e()Lcom/google/googlenav/layer/s;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v6, 0x7

    invoke-virtual {v5}, Lcom/google/googlenav/layer/b;->e()Lcom/google/googlenav/layer/s;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/googlenav/layer/s;->o()Law/e;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Law/e;->a(ILaw/e;)V

    :cond_1
    invoke-virtual {v5}, Lcom/google/googlenav/layer/b;->d()I

    move-result v5

    if-eq v5, v11, :cond_3

    new-instance v6, Law/e;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Law/e;-><init>(Law/f;)V

    const/16 v7, 0x9

    invoke-virtual {v6, v7, v5}, Law/e;->h(II)V

    const/16 v7, 0xa

    iget-object v8, p0, Lcom/google/googlenav/layer/h;->g:Lcom/google/googlenav/ui/bB;

    int-to-long v9, v5

    invoke-virtual {v8, v9, v10}, Lcom/google/googlenav/ui/bB;->c(J)[B

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Law/e;->b(I[B)V

    invoke-virtual {p0, v5}, Lcom/google/googlenav/layer/h;->a(I)I

    move-result v7

    if-eq v7, v11, :cond_2

    const/16 v7, 0xb

    iget-object v8, p0, Lcom/google/googlenav/layer/h;->g:Lcom/google/googlenav/ui/bB;

    invoke-virtual {p0, v5}, Lcom/google/googlenav/layer/h;->a(I)I

    move-result v5

    int-to-long v9, v5

    invoke-virtual {v8, v9, v10}, Lcom/google/googlenav/ui/bB;->c(J)[B

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Law/e;->b(I[B)V

    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v1, v5, v6}, Law/e;->a(ILaw/e;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public l()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->e:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iput v2, p0, Lcom/google/googlenav/layer/h;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlenav/layer/h;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlenav/layer/h;->c:J

    iput-boolean v2, p0, Lcom/google/googlenav/layer/h;->i:Z

    iput-object v3, p0, Lcom/google/googlenav/layer/h;->k:Lcom/google/googlenav/layer/g;

    iput-object v3, p0, Lcom/google/googlenav/layer/h;->j:Law/e;

    iget-object v0, p0, Lcom/google/googlenav/layer/h;->g:Lcom/google/googlenav/ui/bB;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/bB;->b()V

    iput-boolean v2, p0, Lcom/google/googlenav/layer/h;->h:Z

    return-void
.end method
