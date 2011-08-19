.class final Lbl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# instance fields
.field private final a:Ljava/lang/reflect/Type;

.field private final b:[Ljava/lang/reflect/Type;

.field private final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbl;->a:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lbl;->b:[Ljava/lang/reflect/Type;

    iput-object p3, p0, Lbl;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_0

    move v0, v3

    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1
    if-ne p0, p1, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lbl;->c:Ljava/lang/reflect/Type;

    if-nez v2, :cond_3

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lbl;->a:Ljava/lang/reflect/Type;

    if-nez v0, :cond_5

    if-nez v1, :cond_4

    :goto_1
    iget-object v0, p0, Lbl;->b:[Ljava/lang/reflect/Type;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lbl;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lbl;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1
.end method

.method public final getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lbl;->b:[Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lbl;->c:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getRawType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lbl;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbl;->b:[Ljava/lang/reflect/Type;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lbl;->c:Ljava/lang/reflect/Type;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    xor-int/2addr v0, v1

    iget-object v1, p0, Lbl;->a:Ljava/lang/reflect/Type;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Lbl;->c:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lbl;->a:Ljava/lang/reflect/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method
