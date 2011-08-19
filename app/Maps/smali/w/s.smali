.class Lw/s;
.super Lw/b;


# instance fields
.field final synthetic c:I

.field final synthetic d:Lw/v;


# direct methods
.method constructor <init>(Lw/v;Lw/z;JI)V
    .locals 0

    iput-object p1, p0, Lw/s;->d:Lw/v;

    iput p5, p0, Lw/s;->c:I

    invoke-direct {p0, p2, p3, p4}, Lw/b;-><init>(Lw/z;J)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/io/PrintWriter;)V
    .locals 1

    iget v0, p0, Lw/s;->c:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method
