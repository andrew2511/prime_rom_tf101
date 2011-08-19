.class Lw/b;
.super Ljava/lang/Object;


# instance fields
.field final a:Lw/z;

.field final b:J


# direct methods
.method public constructor <init>(Lw/z;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw/b;->a:Lw/z;

    iput-wide p2, p0, Lw/b;->b:J

    return-void
.end method


# virtual methods
.method public a(Ljava/io/PrintWriter;)V
    .locals 3

    const/16 v2, 0x20

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v0, p0, Lw/b;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lw/b;->a:Lw/z;

    invoke-virtual {v0}, Lw/z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Lw/b;->b(Ljava/io/PrintWriter;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public a(Ljava/text/Format;Ljava/util/Date;Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lw/b;->b:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/util/Date;->setTime(J)V

    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p3}, Lw/b;->a(Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected b(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method
