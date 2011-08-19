.class public Lcom/google/googlenav/bc;
.super Lak/m;


# static fields
.field static a:Z

.field private static final b:Ljava/lang/Object;

.field private static c:I

.field private static d:J

.field private static e:Lcom/google/googlenav/A;

.field private static final f:Ljava/util/Hashtable;


# instance fields
.field private final g:Law/e;

.field private final h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/bc;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/googlenav/bc;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/google/googlenav/bc;->f:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>(Law/e;Z)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/bc;->g:Law/e;

    invoke-static {}, Lac/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/bc;->e:Lcom/google/googlenav/A;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/googlenav/bc;->e:Lcom/google/googlenav/A;

    invoke-interface {v0, p0}, Lcom/google/googlenav/A;->a(Lcom/google/googlenav/bc;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlenav/bc;->l()J

    move-result-wide v0

    sget-object v2, Lcom/google/googlenav/bc;->b:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p2, :cond_2

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/google/googlenav/bc;->h:Z

    :goto_0
    sget v3, Lcom/google/googlenav/bc;->c:I

    if-nez v3, :cond_1

    sput-wide v0, Lcom/google/googlenav/bc;->d:J

    :cond_1
    sget v0, Lcom/google/googlenav/bc;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/googlenav/bc;->c:I

    monitor-exit v2

    return-void

    :cond_2
    sget v3, Lcom/google/googlenav/bc;->c:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_4

    move v3, v8

    :goto_1
    sget v4, Lcom/google/googlenav/bc;->c:I

    if-lez v4, :cond_5

    sget-wide v4, Lcom/google/googlenav/bc;->d:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    move v4, v8

    :goto_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    move v3, v8

    :goto_3
    iput-boolean v3, p0, Lcom/google/googlenav/bc;->h:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v3, v9

    goto :goto_1

    :cond_5
    move v4, v9

    goto :goto_2

    :cond_6
    move v3, v9

    goto :goto_3
.end method

.method public static a(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Law/e;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/bc;->c(Law/e;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Law/e;)V
    .locals 0

    invoke-static {p0}, Lcom/google/googlenav/bc;->d(Law/e;)V

    return-void
.end method

.method static synthetic b(I)Z
    .locals 1

    invoke-static {p0}, Lcom/google/googlenav/bc;->c(I)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0xa -> :sswitch_0
        0xe -> :sswitch_0
        0x1d -> :sswitch_0
    .end sparse-switch
.end method

.method private static c(Law/e;)Z
    .locals 4

    invoke-static {p0}, Lcom/google/googlenav/bc;->e(Law/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/google/googlenav/bc;->f(Law/e;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/bc;->f:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Hashtable;

    if-nez p0, :cond_0

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sget-object v3, Lcom/google/googlenav/bc;->f:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :goto_0
    invoke-virtual {v0, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private static d(Law/e;)V
    .locals 2

    invoke-static {p0}, Lcom/google/googlenav/bc;->e(Law/e;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/bc;->f:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static e(Law/e;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Law/e;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Law/e;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v3}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Law/e;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/google/googlenav/bc;->i:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/googlenav/bc;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/googlenav/bc;->c:I

    sub-int/2addr v1, v2

    sput v1, Lcom/google/googlenav/bc;->c:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-boolean v2, p0, Lcom/google/googlenav/bc;->i:Z

    iget-object v0, p0, Lcom/google/googlenav/bc;->g:Law/e;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 1

    sget-object v0, Ls/k;->c:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    const/4 v0, 0x1

    return v0
.end method

.method public e_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/bc;->h:Z

    return v0
.end method

.method public f_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected l()J
    .locals 2

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->p()Lac/p;

    move-result-object v0

    invoke-interface {v0}, Lac/p;->b()J

    move-result-wide v0

    return-wide v0
.end method
