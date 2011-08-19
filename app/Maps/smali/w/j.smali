.class Lw/j;
.super Lw/b;


# instance fields
.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lw/v;


# direct methods
.method constructor <init>(Lw/v;Lw/z;JIZ)V
    .locals 0

    iput-object p1, p0, Lw/j;->e:Lw/v;

    iput p5, p0, Lw/j;->c:I

    iput-boolean p6, p0, Lw/j;->d:Z

    invoke-direct {p0, p2, p3, p4}, Lw/b;-><init>(Lw/z;J)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    iget v0, p0, Lw/j;->c:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " trigger "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lw/j;->d:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    return-void
.end method
