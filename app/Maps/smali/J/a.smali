.class public LJ/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static a:I


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    sput v0, LJ/a;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LJ/a;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, LJ/a;->a:I

    if-le p2, v0, :cond_1

    sget v0, LJ/a;->a:I

    :goto_0
    iput-object p1, p0, LJ/a;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method private a(Lae/f;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lj/aq;->a(Ljava/util/Collection;Lae/f;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public a(I)LJ/o;
    .locals 1

    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ/o;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJ/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(LJ/a;)V
    .locals 2

    iget-object v0, p1, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/o;

    invoke-virtual {p0, v0}, LJ/a;->b(LJ/o;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(LJ/o;)V
    .locals 2

    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, LJ/a;->a:I

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LJ/a;->b:Ljava/lang/String;

    return-void
.end method

.method public b()LJ/a;
    .locals 2

    new-instance v0, LJ/a;

    iget-object v1, p0, LJ/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, LJ/a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    iput-object p0, v0, LJ/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    new-instance v0, LJ/f;

    invoke-direct {v0, p0, p1}, LJ/f;-><init>(LJ/a;I)V

    invoke-direct {p0, v0}, LJ/a;->a(Lae/f;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public b(LJ/o;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJ/o;

    if-nez v1, :cond_0

    invoke-virtual {p1}, LJ/o;->f()I

    move-result v3

    invoke-virtual {v0}, LJ/o;->f()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v1, v0

    move v0, v5

    :goto_1
    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, LJ/o;->a(LJ/o;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {p0, p1}, LJ/a;->a(LJ/o;)V

    :cond_5
    :goto_2
    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, LJ/a;->a:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    iget-object v1, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, LJ/a;->b()LJ/a;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    instance-of v0, p1, LJ/a;

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    check-cast p1, LJ/a;

    invoke-virtual {p1}, LJ/a;->c()I

    move-result v0

    invoke-virtual {p0}, LJ/a;->c()I

    move-result v1

    if-eq v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    invoke-virtual {p0}, LJ/a;->c()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, LJ/a;->a(I)LJ/o;

    move-result-object v1

    invoke-virtual {p0, v0}, LJ/a;->a(I)LJ/o;

    move-result-object v2

    invoke-virtual {v1, v2}, LJ/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LJ/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LJ/o;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
