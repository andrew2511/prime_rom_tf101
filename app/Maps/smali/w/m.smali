.class Lw/m;
.super Lw/b;


# instance fields
.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lw/v;


# direct methods
.method constructor <init>(Lw/v;Lw/z;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lw/m;->e:Lw/v;

    iput-object p5, p0, Lw/m;->c:Ljava/lang/String;

    iput-object p6, p0, Lw/m;->d:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lw/b;-><init>(Lw/z;J)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Lw/m;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    iget-object v0, p0, Lw/m;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
