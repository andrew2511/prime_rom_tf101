.class final LW/v;
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
.method public a(Ljava/io/DataInput;)LW/o;
    .locals 2

    new-instance v0, LW/t;

    invoke-direct {v0}, LW/t;-><init>()V

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, LW/t;->a:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, LW/t;->b:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, LW/t;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    iput v1, v0, LW/t;->d:I

    invoke-virtual {v0}, LW/t;->a()LW/o;

    move-result-object v0

    return-object v0
.end method

.method public a(LW/o;Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p1, LW/o;->a:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p1, LW/o;->b:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p1, LW/o;->c:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget v0, p1, LW/o;->d:I

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0

    check-cast p1, LW/o;

    invoke-virtual {p0, p1, p2}, LW/v;->a(LW/o;Ljava/io/DataOutput;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, LW/v;->a(Ljava/io/DataInput;)LW/o;

    move-result-object v0

    return-object v0
.end method
