.class final Laz;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lap;

.field private final b:Z


# direct methods
.method constructor <init>(Lap;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laz;->a:Lap;

    iput-boolean p2, p0, Laz;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lao;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lao;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laz;->a:Lap;

    invoke-interface {v0}, Lap;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lao;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lao;->e()Lak;

    move-result-object v0

    iget-object v1, p0, Laz;->a:Lap;

    invoke-interface {v1}, Lap;->b()V

    invoke-virtual {v0}, Lak;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v6

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lao;

    invoke-virtual {v0}, Lao;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Laz;->a:Lap;

    invoke-interface {v3, v2}, Lap;->c(Z)V

    invoke-virtual {p0, v0}, Laz;->a(Lao;)V

    :goto_2
    if-eqz v2, :cond_d

    move v0, v5

    :goto_3
    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lao;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lao;->e()Lak;

    move-result-object v0

    iget-object v3, p0, Laz;->a:Lap;

    invoke-interface {v3, v2}, Lap;->a(Z)V

    invoke-virtual {p0, v0}, Laz;->a(Lao;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lao;->b()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lao;->d()Lat;

    move-result-object v0

    iget-object v3, p0, Laz;->a:Lap;

    invoke-interface {v3, v2}, Lap;->b(Z)V

    invoke-virtual {p0, v0}, Laz;->a(Lao;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Laz;->a:Lap;

    invoke-virtual {v0}, Lao;->f()Lau;

    move-result-object v0

    invoke-interface {v3, v0, v2}, Lap;->a(Lau;Z)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Laz;->a:Lap;

    invoke-interface {v0}, Lap;->c()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lao;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lao;->d()Lat;

    move-result-object v0

    iget-object v1, p0, Laz;->a:Lap;

    invoke-interface {v1}, Lap;->d()V

    invoke-virtual {v0}, Lat;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v6

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lao;

    invoke-virtual {v0}, Lao;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Laz;->b:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Laz;->a:Lap;

    invoke-interface {v4, v1, v3}, Lap;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lao;->g()Las;

    move-result-object v0

    invoke-virtual {p0, v0}, Laz;->a(Lao;)V

    :goto_5
    move v0, v6

    :goto_6
    if-eqz v0, :cond_c

    if-eqz v3, :cond_c

    move v0, v5

    :goto_7
    move v3, v0

    goto :goto_4

    :cond_6
    move v0, v5

    goto :goto_6

    :cond_7
    invoke-virtual {v0}, Lao;->a()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Lao;->e()Lak;

    move-result-object v0

    iget-object v4, p0, Laz;->a:Lap;

    invoke-interface {v4, v1, v3}, Lap;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Laz;->a(Lao;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lao;->b()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Lao;->d()Lat;

    move-result-object v0

    iget-object v4, p0, Laz;->a:Lap;

    invoke-interface {v4, v1, v3}, Lap;->b(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Laz;->a(Lao;)V

    goto :goto_5

    :cond_9
    iget-object v4, p0, Laz;->a:Lap;

    invoke-virtual {v0}, Lao;->f()Lau;

    move-result-object v0

    invoke-interface {v4, v1, v0, v3}, Lap;->a(Ljava/lang/String;Lau;Z)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Laz;->a:Lap;

    invoke-interface {v0}, Lap;->e()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Laz;->a:Lap;

    invoke-virtual {p1}, Lao;->f()Lau;

    move-result-object v1

    invoke-interface {v0, v1}, Lap;->a(Lau;)V

    goto/16 :goto_0

    :cond_c
    move v0, v3

    goto :goto_7

    :cond_d
    move v0, v2

    goto/16 :goto_3
.end method
