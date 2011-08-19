.class public LW/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:LW/h;

.field public final b:LW/d;

.field public final c:LW/l;

.field public final d:LW/i;


# direct methods
.method public constructor <init>(LW/h;LW/d;LW/l;LW/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW/b;->a:LW/h;

    iput-object p2, p0, LW/b;->b:LW/d;

    iput-object p3, p0, LW/b;->c:LW/l;

    iput-object p4, p0, LW/b;->d:LW/i;

    if-eqz p1, :cond_0

    iget-object v0, p1, LW/h;->d:LW/n;

    sget-object v1, LW/n;->a:LW/n;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Args"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()LW/k;
    .locals 1

    iget-object v0, p0, LW/b;->b:LW/d;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LW/b;->b:LW/d;

    iget-object v0, v0, LW/d;->a:LW/k;

    goto :goto_0
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "NetworkLocation [\n bestResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LW/b;->a:LW/h;

    if-nez v0, :cond_1

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "\n wifiResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LW/b;->b:LW/d;

    invoke-static {p1, v0}, LW/d;->a(Ljava/io/PrintWriter;LW/d;)V

    const-string v0, "\n cellResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LW/b;->c:LW/l;

    invoke-static {p1, v0}, LW/l;->a(Ljava/io/PrintWriter;LW/l;)V

    const-string v0, "\n glsResult="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, LW/b;->d:LW/i;

    invoke-static {p1, v0}, LW/i;->a(Ljava/io/PrintWriter;LW/i;)V

    const-string v0, "\n]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, LW/b;->a:LW/h;

    iget-object v1, p0, LW/b;->b:LW/d;

    if-ne v0, v1, :cond_2

    const-string v0, "WIFI"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, LW/b;->a:LW/h;

    iget-object v1, p0, LW/b;->c:LW/l;

    if-ne v0, v1, :cond_3

    const-string v0, "CELL"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, LW/b;->a:LW/h;

    iget-object v1, p0, LW/b;->d:LW/i;

    if-ne v0, v1, :cond_0

    const-string v0, "GLS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()LW/m;
    .locals 1

    iget-object v0, p0, LW/b;->c:LW/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LW/b;->c:LW/l;

    iget-object v0, v0, LW/l;->a:LW/a;

    invoke-virtual {v0}, LW/a;->b()LW/m;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "NetworkLocation [\n bestResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW/b;->a:LW/h;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string v1, "\n wifiResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW/b;->b:LW/d;

    invoke-static {v0, v1}, LW/d;->a(Ljava/lang/StringBuilder;LW/d;)V

    const-string v1, "\n cellResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW/b;->c:LW/l;

    invoke-static {v0, v1}, LW/l;->a(Ljava/lang/StringBuilder;LW/l;)V

    const-string v1, "\n glsResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LW/b;->d:LW/i;

    invoke-static {v0, v1}, LW/i;->a(Ljava/lang/StringBuilder;LW/i;)V

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v1, p0, LW/b;->a:LW/h;

    iget-object v2, p0, LW/b;->b:LW/d;

    if-ne v1, v2, :cond_2

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v1, p0, LW/b;->a:LW/h;

    iget-object v2, p0, LW/b;->c:LW/l;

    if-ne v1, v2, :cond_3

    const-string v1, "CELL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, LW/b;->a:LW/h;

    iget-object v2, p0, LW/b;->d:LW/i;

    if-ne v1, v2, :cond_0

    const-string v1, "GLS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
