.class Lw/p;
.super Lw/b;


# instance fields
.field final synthetic c:I

.field final synthetic d:J

.field final synthetic e:Lw/v;


# direct methods
.method constructor <init>(Lw/v;Lw/z;JIJ)V
    .locals 0

    iput-object p1, p0, Lw/p;->e:Lw/v;

    iput p5, p0, Lw/p;->c:I

    iput-wide p6, p0, Lw/p;->d:J

    invoke-direct {p0, p2, p3, p4}, Lw/b;-><init>(Lw/z;J)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 2

    iget v0, p0, Lw/p;->c:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v0, p0, Lw/p;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method
