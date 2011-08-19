.class Lw/q;
.super Lw/b;


# instance fields
.field final synthetic c:LW/b;

.field final synthetic d:Lw/v;


# direct methods
.method constructor <init>(Lw/v;Lw/z;JLW/b;)V
    .locals 0

    iput-object p1, p0, Lw/q;->d:Lw/v;

    iput-object p5, p0, Lw/q;->c:LW/b;

    invoke-direct {p0, p2, p3, p4}, Lw/b;-><init>(Lw/z;J)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lw/q;->c:LW/b;

    invoke-virtual {v0, p1}, LW/b;->a(Ljava/io/PrintWriter;)V

    return-void
.end method
