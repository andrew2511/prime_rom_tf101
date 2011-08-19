.class Lw/g;
.super Lw/b;


# instance fields
.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lw/v;


# direct methods
.method constructor <init>(Lw/v;Lw/z;JIIZ)V
    .locals 0

    iput-object p1, p0, Lw/g;->f:Lw/v;

    iput p5, p0, Lw/g;->c:I

    iput p6, p0, Lw/g;->d:I

    iput-boolean p7, p0, Lw/g;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lw/b;-><init>(Lw/z;J)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "scale "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lw/g;->c:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " level "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lw/g;->d:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " plugged "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lw/g;->e:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    return-void
.end method
