.class public LaA/c;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([LaA/e;I)I
    .locals 2

    aget-object v0, p0, p1

    invoke-virtual {v0}, LaA/e;->b()Lf/h;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, LaA/e;->c()Lf/h;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, LaA/e;->a()Lf/h;

    move-result-object v1

    invoke-virtual {v0}, LaA/e;->c()Lf/h;

    move-result-object v0

    :goto_1
    invoke-static {v1, v0}, LaA/a;->a(Lf/h;Lf/h;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, LaA/e;->c()Lf/h;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, LaA/e;->b()Lf/h;

    move-result-object v1

    invoke-virtual {v0}, LaA/e;->a()Lf/h;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, LaA/e;->b()Lf/h;

    move-result-object v1

    invoke-virtual {v0}, LaA/e;->a()Lf/h;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(I[LaA/e;Lf/l;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    aget-object v0, p1, p0

    invoke-virtual {v0}, LaA/e;->a()Lf/h;

    move-result-object v0

    invoke-static {p1, p0}, LaA/c;->a([LaA/e;I)I

    move-result v1

    invoke-static {v1}, LaA/a;->a(I)I

    move-result v1

    invoke-static {v0, v2, v1, v2, p2}, LaA/c;->a(Lf/h;Ljava/lang/String;ILf/h;Lf/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lf/h;Lf/l;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v1, p1}, LaA/c;->a(Lf/h;Ljava/lang/String;ILf/h;Lf/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lf/h;Ljava/lang/String;ILf/h;Lf/l;)Ljava/lang/String;
    .locals 5

    invoke-static {p2}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    const-string v1, "5"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "google.streetview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lf/h;->b()I

    move-result v2

    invoke-static {v2}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lf/h;->d()I

    move-result v3

    invoke-static {v3}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cbll="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    :cond_0
    invoke-static {p1}, LR/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "panoid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lf/h;->b()I

    move-result v2

    invoke-static {v2}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lf/h;->d()I

    move-result v3

    invoke-static {v3}, LR/a;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "faceto_ll="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&"

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cbp=1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mz="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lf/l;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lf/h;Lf/l;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, LaA/c;->a(Lf/h;Ljava/lang/String;ILf/h;Lf/l;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
