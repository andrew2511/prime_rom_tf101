.class Lf/s;
.super Ljava/lang/Object;


# instance fields
.field private a:Lf/h;

.field private b:Lf/l;

.field private c:Lf/V;

.field private d:Lf/h;

.field private e:Lf/l;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf/s;->a:Lf/h;

    iput-object v0, p0, Lf/s;->b:Lf/l;

    iput-object v0, p0, Lf/s;->c:Lf/V;

    iput-object v0, p0, Lf/s;->d:Lf/h;

    iput-object v0, p0, Lf/s;->e:Lf/l;

    return-void
.end method

.method private a(Lf/h;ZZLf/v;)V
    .locals 2

    invoke-virtual {p4}, Lf/v;->b()Lf/C;

    move-result-object v0

    iget-object v1, p0, Lf/s;->a:Lf/h;

    iput-object v1, p0, Lf/s;->d:Lf/h;

    iget-object v1, p0, Lf/s;->b:Lf/l;

    iput-object v1, p0, Lf/s;->e:Lf/l;

    iput-object p1, p0, Lf/s;->a:Lf/h;

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v1

    iput-object v1, p0, Lf/s;->b:Lf/l;

    invoke-static {p1, p2, p3, p4}, Lf/s;->b(Lf/h;ZZLf/v;)V

    iget-object v1, p0, Lf/s;->c:Lf/V;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lf/s;->c:Lf/V;

    invoke-interface {v1, v0}, Lf/V;->a(Lf/C;)V

    :cond_0
    return-void
.end method

.method private static a()Z
    .locals 2

    invoke-static {}, Lf/K;->a()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lf/h;ZZLf/v;)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p3}, Lf/v;->b()Lf/C;

    move-result-object v0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-static {p0, v1}, Lf/h;->a(Lf/h;Ljava/io/DataOutput;)V

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v4

    invoke-static {v4, v1}, Lf/h;->a(Lf/h;Ljava/io/DataOutput;)V

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v4

    invoke-virtual {v4}, Lf/l;->a()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p3, v0}, Lf/v;->b(Lf/C;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p3, v0}, Lf/v;->e(Lf/C;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lak/h;->a()Lak/h;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const/4 v5, 0x1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lak/h;->a(I[BZZZ)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method a(Lf/V;)V
    .locals 0

    iput-object p1, p0, Lf/s;->c:Lf/V;

    return-void
.end method

.method a(ZZLf/v;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p3}, Lf/v;->b()Lf/C;

    move-result-object v0

    invoke-virtual {v0}, Lf/C;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lf/s;->a()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lf/s;->a:Lf/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lf/s;->b:Lf/l;

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v2

    if-eq v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lf/s;->a(Lf/h;ZZLf/v;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iget-object v2, p0, Lf/s;->a:Lf/h;

    invoke-virtual {p3, v2}, Lf/v;->c(Lf/h;)LaF/a;

    move-result-object v2

    invoke-virtual {p3}, Lf/v;->r()I

    move-result v3

    invoke-virtual {p3}, Lf/v;->t()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p3}, Lf/v;->q()I

    move-result v4

    invoke-virtual {p3}, Lf/v;->s()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    div-int/lit8 v6, v4, 0x2

    iget v7, v2, LaF/a;->a:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-gt v7, v3, :cond_4

    iget v7, v2, LaF/a;->b:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v7, v4, :cond_7

    :cond_4
    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v1

    :cond_5
    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Lf/s;->d:Lf/h;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lf/s;->e:Lf/l;

    iget-object v3, p0, Lf/s;->b:Lf/l;

    if-ne v2, v3, :cond_6

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lf/h;->a(Lf/h;)J

    move-result-wide v2

    invoke-virtual {v0}, Lf/C;->a()Lf/h;

    move-result-object v0

    iget-object v4, p0, Lf/s;->a:Lf/h;

    invoke-virtual {v0, v4}, Lf/h;->a(Lf/h;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    :cond_6
    invoke-direct {p0, v1, p1, p2, p3}, Lf/s;->a(Lf/h;ZZLf/v;)V

    goto :goto_0

    :cond_7
    iget v7, v2, LaF/a;->a:I

    neg-int v8, v5

    if-ge v7, v8, :cond_9

    :goto_2
    iget v5, v2, LaF/a;->b:I

    neg-int v7, v6

    if-ge v5, v7, :cond_a

    move v2, v4

    :goto_3
    if-nez v2, :cond_8

    if-eqz v3, :cond_5

    :cond_8
    iget-object v1, p0, Lf/s;->a:Lf/h;

    invoke-virtual {v0}, Lf/C;->b()Lf/l;

    move-result-object v4

    invoke-virtual {v1, v3, v2, v4}, Lf/h;->a(IILf/l;)Lf/h;

    move-result-object v1

    goto :goto_1

    :cond_9
    iget v7, v2, LaF/a;->a:I

    if-le v7, v5, :cond_c

    neg-int v3, v3

    goto :goto_2

    :cond_a
    iget v2, v2, LaF/a;->b:I

    if-le v2, v6, :cond_b

    neg-int v2, v4

    goto :goto_3

    :cond_b
    move v2, v9

    goto :goto_3

    :cond_c
    move v3, v9

    goto :goto_2
.end method
