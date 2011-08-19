.class Lw/c;
.super Lw/b;


# instance fields
.field final synthetic c:Lw/A;

.field final synthetic d:Lw/v;


# direct methods
.method constructor <init>(Lw/v;Lw/z;JLw/A;)V
    .locals 0

    iput-object p1, p0, Lw/c;->d:Lw/v;

    iput-object p5, p0, Lw/c;->c:Lw/A;

    invoke-direct {p0, p2, p3, p4}, Lw/b;-><init>(Lw/z;J)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lw/c;->c:Lw/A;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
