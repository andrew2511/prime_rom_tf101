.class Lw/n;
.super Lw/b;


# instance fields
.field final synthetic c:LW/k;

.field final synthetic d:Lw/v;


# direct methods
.method constructor <init>(Lw/v;Lw/z;JLW/k;)V
    .locals 0

    iput-object p1, p0, Lw/n;->d:Lw/v;

    iput-object p5, p0, Lw/n;->c:LW/k;

    invoke-direct {p0, p2, p3, p4}, Lw/b;-><init>(Lw/z;J)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lw/n;->c:LW/k;

    invoke-static {p1, v0}, LW/k;->a(Ljava/io/PrintWriter;LW/k;)V

    return-void
.end method
