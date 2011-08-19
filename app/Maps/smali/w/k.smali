.class Lw/k;
.super Lw/b;


# instance fields
.field final synthetic c:Z

.field final synthetic d:Lw/v;


# direct methods
.method constructor <init>(Lw/v;Lw/z;JZ)V
    .locals 0

    iput-object p1, p0, Lw/k;->d:Lw/v;

    iput-boolean p5, p0, Lw/k;->c:Z

    invoke-direct {p0, p2, p3, p4}, Lw/b;-><init>(Lw/z;J)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    iget-boolean v0, p0, Lw/k;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "on"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "off"

    goto :goto_0
.end method
