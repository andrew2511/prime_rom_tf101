.class public Lau/a;
.super Ljava/lang/Object;

# interfaces
.implements Lau/c;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lau/a;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Ljava/io/Reader;)Lau/a;
    .locals 1

    invoke-static {p0}, Lau/a;->b(Ljava/io/Reader;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lau/a;->a(Ljava/util/List;)Lau/a;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/util/List;)Lau/a;
    .locals 1

    new-instance v0, Lau/a;

    invoke-direct {v0, p0}, Lau/a;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static b(Ljava/io/Reader;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {}, Lj/X;->b()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Lau/b;->a(Ljava/lang/String;)Lau/b;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public a(LG/Q;)LG/A;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lau/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lau/b;

    iget-object v3, p0, Lau/b;->b:LG/S;

    invoke-virtual {v3, p1}, LG/S;->a(LG/Q;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lau/b;->b:LG/S;

    invoke-virtual {v3}, LG/S;->f()LG/Q;

    move-result-object v3

    invoke-virtual {v3, p1}, LG/Q;->d(LG/Q;)F

    move-result v3

    if-eqz v0, :cond_1

    cmpg-float v4, v3, v1

    if-gez v4, :cond_0

    :cond_1
    iget-object v0, p0, Lau/b;->a:LG/A;

    move v1, v3

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public a(LG/w;)Ljava/util/List;
    .locals 1

    invoke-virtual {p1}, LG/w;->i()LG/S;

    move-result-object v0

    invoke-virtual {p0, v0}, Lau/a;->a(LG/z;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(LG/z;)Ljava/util/List;
    .locals 3

    invoke-static {}, Lj/X;->b()Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lau/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lau/b;

    iget-object v2, p0, Lau/b;->b:LG/S;

    invoke-virtual {v2, p1}, LG/S;->b(LG/z;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lau/b;->a:LG/A;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
