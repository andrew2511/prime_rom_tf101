.class public LW/i;
.super LW/h;


# instance fields
.field public final a:LW/k;


# direct methods
.method public constructor <init>(LW/o;LW/n;JLW/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, LW/h;-><init>(LW/o;LW/n;J)V

    iput-object p5, p0, LW/i;->a:LW/k;

    return-void
.end method

.method public static a(Law/e;LW/k;J)LW/i;
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Law/e;->d(I)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Law/e;->h(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->d(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v3}, Law/e;->f(I)Law/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Law/e;->h(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Law/e;->f(I)Law/e;

    move-result-object v1

    invoke-virtual {v1, v2}, Law/e;->d(I)I

    move-result v2

    invoke-virtual {v1, v3}, Law/e;->d(I)I

    move-result v3

    const/4 v1, 0x0

    invoke-virtual {v0, v5}, Law/e;->h(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v5}, Law/e;->d(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    move v4, v0

    :goto_0
    const v0, 0x4c4b40

    if-gt v4, v0, :cond_0

    new-instance v0, LW/i;

    new-instance v1, LW/o;

    invoke-direct {v1, v2, v3, v4}, LW/o;-><init>(III)V

    sget-object v2, LW/n;->a:LW/n;

    move-wide v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LW/i;-><init>(LW/o;LW/n;JLW/k;)V

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v4, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/PrintWriter;LW/i;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "GlsLocatorResult [wifiScan="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, LW/i;->a:LW/k;

    invoke-static {p0, v0}, LW/k;->a(Ljava/io/PrintWriter;LW/k;)V

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0, p1}, LW/h;->a(Ljava/io/PrintWriter;LW/h;)V

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuilder;LW/i;)V
    .locals 1

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    const-string v0, "GlsLocatorResult [wifiScan="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, LW/i;->a:LW/k;

    invoke-static {p0, v0}, LW/k;->a(Ljava/lang/StringBuilder;LW/k;)V

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, LW/h;->a(Ljava/lang/StringBuilder;LW/h;)V

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlsLocatorResult [wifiScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LW/i;->a:LW/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, LW/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
