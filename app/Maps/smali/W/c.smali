.class final LW/c;
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
.method public a(Ljava/io/DataInput;)LW/h;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, LW/n;->values()[LW/n;

    move-result-object v1

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v2

    aget-object v1, v1, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v2, LW/n;->a:LW/n;

    if-ne v1, v2, :cond_0

    sget-object v0, LW/o;->g:LW/f;

    invoke-interface {v0, p1}, LW/f;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW/o;

    move-object v0, p0

    :cond_0
    new-instance v2, LW/h;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    invoke-direct {v2, v0, v1, v3, v4}, LW/h;-><init>(LW/o;LW/n;J)V

    return-object v2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid status"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(LW/h;Ljava/io/DataOutput;)V
    .locals 2

    iget-object v0, p1, LW/h;->d:LW/n;

    invoke-virtual {v0}, LW/n;->ordinal()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p1, LW/h;->d:LW/n;

    sget-object v1, LW/n;->a:LW/n;

    if-ne v0, v1, :cond_0

    sget-object v0, LW/o;->g:LW/f;

    iget-object v1, p1, LW/h;->c:LW/o;

    invoke-interface {v0, v1, p2}, LW/f;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    :cond_0
    iget-wide v0, p1, LW/h;->e:J

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0

    check-cast p1, LW/h;

    invoke-virtual {p0, p1, p2}, LW/c;->a(LW/h;Ljava/io/DataOutput;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, LW/c;->a(Ljava/io/DataInput;)LW/h;

    move-result-object v0

    return-object v0
.end method
