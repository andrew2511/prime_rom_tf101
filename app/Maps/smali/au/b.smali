.class Lau/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:LG/A;

.field public final b:LG/S;


# direct methods
.method public constructor <init>(LG/A;LG/S;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau/b;->a:LG/A;

    iput-object p2, p0, Lau/b;->b:LG/S;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lau/b;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_1
    new-instance v1, LG/A;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, LG/A;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Lf/h;->a(Ljava/lang/String;)Lf/h;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Lf/h;->a(Ljava/lang/String;)Lf/h;

    move-result-object v0

    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lf/h;->b()I

    move-result v3

    invoke-virtual {v2}, Lf/h;->d()I

    move-result v2

    invoke-static {v3, v2}, LG/Q;->b(II)LG/Q;

    move-result-object v2

    invoke-virtual {v0}, Lf/h;->b()I

    move-result v3

    invoke-virtual {v0}, Lf/h;->d()I

    move-result v0

    invoke-static {v3, v0}, LG/Q;->b(II)LG/Q;

    move-result-object v0

    new-instance v3, Lau/b;

    invoke-static {v2, v0}, LG/S;->a(LG/Q;LG/Q;)LG/S;

    move-result-object v0

    invoke-direct {v3, v1, v0}, Lau/b;-><init>(LG/A;LG/S;)V

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lau/b;

    if-eqz v0, :cond_2

    check-cast p1, Lau/b;

    iget-object v0, p1, Lau/b;->a:LG/A;

    iget-object v1, p0, Lau/b;->a:LG/A;

    invoke-virtual {v0, v1}, LG/A;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lau/b;->b:LG/S;

    iget-object v1, p0, Lau/b;->b:LG/S;

    invoke-virtual {v0, v1}, LG/S;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lau/b;->a:LG/A;

    invoke-virtual {v0}, LG/A;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lau/b;->b:LG/S;

    invoke-virtual {v1}, LG/S;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lau/b;->a:LG/A;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lau/b;->b:LG/S;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
