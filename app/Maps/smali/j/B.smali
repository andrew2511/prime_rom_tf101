.class public final Lj/B;
.super Lj/aw;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field transient a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lj/aw;-><init>(Ljava/util/Map;)V

    const/16 v0, 0xa

    iput v0, p0, Lj/B;->a:I

    return-void
.end method

.method public static e()Lj/B;
    .locals 1

    new-instance v0, Lj/B;

    invoke-direct {v0}, Lj/B;-><init>()V

    return-object v0
.end method


# virtual methods
.method bridge synthetic a()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lj/B;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lj/aw;->a(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lj/aw;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()V
    .locals 0

    invoke-super {p0}, Lj/aw;->b()V

    return-void
.end method

.method public bridge synthetic c()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lj/aw;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-super {p0, p1}, Lj/aw;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lj/aw;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    invoke-super {p0, p1}, Lj/aw;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lj/aw;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method f()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lj/B;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lj/aw;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lj/aw;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
