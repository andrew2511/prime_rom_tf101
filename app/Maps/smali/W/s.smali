.class final LW/s;
.super Ljava/lang/Object;

# interfaces
.implements LW/f;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataInput;)LW/r;
    .locals 6

    :try_start_0
    sget-object v0, LW/o;->g:LW/f;

    invoke-interface {v0, p1}, LW/f;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/o;

    new-instance v0, LW/r;

    iget v1, p0, LW/o;->a:I

    iget v2, p0, LW/o;->b:I

    iget v3, p0, LW/o;->c:I

    iget v4, p0, LW/o;->d:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, LW/r;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public a(LW/r;Ljava/io/DataOutput;)V
    .locals 1

    :try_start_0
    sget-object v0, LW/o;->g:LW/f;

    invoke-interface {v0, p1, p2}, LW/f;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    iget v0, p1, LW/r;->h:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0

    check-cast p1, LW/r;

    invoke-virtual {p0, p1, p2}, LW/s;->a(LW/r;Ljava/io/DataOutput;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, LW/s;->a(Ljava/io/DataInput;)LW/r;

    move-result-object v0

    return-object v0
.end method
