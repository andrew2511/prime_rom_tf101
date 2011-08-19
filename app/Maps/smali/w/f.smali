.class Lw/f;
.super Lw/b;


# instance fields
.field final synthetic c:LW/m;

.field final synthetic d:Lw/v;


# direct methods
.method constructor <init>(Lw/v;Lw/z;JLW/m;)V
    .locals 0

    iput-object p1, p0, Lw/f;->d:Lw/v;

    iput-object p5, p0, Lw/f;->c:LW/m;

    invoke-direct {p0, p2, p3, p4}, Lw/b;-><init>(Lw/z;J)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lw/f;->c:LW/m;

    invoke-static {p1, v0}, LW/m;->a(Ljava/io/PrintWriter;LW/m;)V

    return-void
.end method
