.class final Lal/e;
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
.method public a(Ljava/io/DataInput;)Ljava/lang/Long;
    .locals 2

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Long;Ljava/io/DataOutput;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lal/e;->a(Ljava/lang/Long;Ljava/io/DataOutput;)V

    return-void
.end method

.method public bridge synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lal/e;->a(Ljava/io/DataInput;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
