.class public LG/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:LG/D;


# direct methods
.method public constructor <init>(Ljava/util/List;LG/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/g;->a:Ljava/util/List;

    iput-object p2, p0, LG/g;->b:LG/D;

    return-void
.end method

.method public static a(Ljava/io/DataInput;ILG/q;[Ljava/lang/String;LG/r;Ljava/lang/String;)LG/g;
    .locals 9

    const/16 v0, 0x9

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    if-ge v8, v7, :cond_1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, LG/aa;->a(Ljava/io/DataInput;ILG/q;[Ljava/lang/String;LG/r;Ljava/lang/String;Ljava/util/List;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    invoke-static {p0, p1}, LG/D;->a(Ljava/io/DataInput;I)LG/D;

    move-result-object v0

    :goto_2
    new-instance v1, LG/g;

    invoke-direct {v1, v6, v0}, LG/g;-><init>(Ljava/util/List;LG/D;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, LG/D;->b:LG/D;

    goto :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, LG/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LG/aa;

    invoke-virtual {p0}, LG/aa;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, LG/aa;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, LG/aa;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 2

    iget-object v0, p0, LG/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget-object v0, p0, LG/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG/aa;

    invoke-virtual {v0, p1}, LG/aa;->a(Ljava/io/DataOutput;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, LG/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, LG/g;->b:LG/D;

    invoke-virtual {v0, p1}, LG/D;->a(Ljava/io/DataOutput;)V

    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, LG/g;

    iget-object v0, p0, LG/g;->b:LG/D;

    if-nez v0, :cond_3

    iget-object v0, p1, LG/g;->b:LG/D;

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, LG/g;->b:LG/D;

    iget-object v1, p1, LG/g;->b:LG/D;

    invoke-virtual {v0, v1}, LG/D;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, LG/g;->a:Ljava/util/List;

    iget-object v1, p1, LG/g;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v0, p0, LG/g;->b:LG/D;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/g;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, LG/g;->b:LG/D;

    invoke-virtual {v0}, LG/D;->hashCode()I

    move-result v0

    goto :goto_0
.end method
