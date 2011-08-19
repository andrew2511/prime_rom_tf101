.class public Lorg/easymock/internal/matchers/ArrayEquals;
.super Lorg/easymock/internal/matchers/Equals;
.source "ArrayEquals.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method private appendArray([Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 61
    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 63
    new-instance v1, Lorg/easymock/internal/matchers/Equals;

    aget-object v2, p1, v0

    invoke-direct {v1, v2}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Lorg/easymock/internal/matchers/Equals;->appendTo(Ljava/lang/StringBuffer;)V

    .line 64
    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    .line 65
    const-string v1, ", "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    return-void
.end method

.method public static createObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 72
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 73
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    .line 79
    :cond_0
    return-object v0

    .line 75
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 77
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/easymock/internal/matchers/ArrayEquals;->getExpected()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/easymock/internal/matchers/ArrayEquals;->getExpected()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lorg/easymock/internal/matchers/ArrayEquals;->getExpected()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/easymock/internal/matchers/ArrayEquals;->createObjectArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/easymock/internal/matchers/ArrayEquals;->appendArray([Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lorg/easymock/internal/matchers/Equals;->appendTo(Ljava/lang/StringBuffer;)V

    goto :goto_0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Lorg/easymock/internal/matchers/ArrayEquals;->getExpected()Ljava/lang/Object;

    move-result-object v1

    .line 20
    instance-of v2, v1, [Z

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    instance-of v2, p1, [Z

    if-eqz v2, :cond_1

    .line 22
    :cond_0
    move-object v0, v1

    check-cast v0, [Z

    move-object p0, v0

    check-cast p0, [Z

    check-cast p1, [Z

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    .line 48
    :goto_0
    return v1

    .line 23
    :cond_1
    instance-of v2, v1, [B

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    instance-of v2, p1, [B

    if-eqz v2, :cond_3

    .line 25
    :cond_2
    check-cast v1, [B

    check-cast v1, [B

    check-cast p1, [B

    check-cast p1, [B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    goto :goto_0

    .line 26
    :cond_3
    instance-of v2, v1, [C

    if-eqz v2, :cond_5

    if-eqz p1, :cond_4

    instance-of v2, p1, [C

    if-eqz v2, :cond_5

    .line 28
    :cond_4
    check-cast v1, [C

    check-cast v1, [C

    check-cast p1, [C

    check-cast p1, [C

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    goto :goto_0

    .line 29
    :cond_5
    instance-of v2, v1, [D

    if-eqz v2, :cond_7

    if-eqz p1, :cond_6

    instance-of v2, p1, [D

    if-eqz v2, :cond_7

    .line 31
    :cond_6
    check-cast v1, [D

    check-cast v1, [D

    check-cast p1, [D

    check-cast p1, [D

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v1

    goto :goto_0

    .line 32
    :cond_7
    instance-of v2, v1, [F

    if-eqz v2, :cond_9

    if-eqz p1, :cond_8

    instance-of v2, p1, [F

    if-eqz v2, :cond_9

    .line 34
    :cond_8
    check-cast v1, [F

    check-cast v1, [F

    check-cast p1, [F

    check-cast p1, [F

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    goto :goto_0

    .line 35
    :cond_9
    instance-of v2, v1, [I

    if-eqz v2, :cond_b

    if-eqz p1, :cond_a

    instance-of v2, p1, [I

    if-eqz v2, :cond_b

    .line 37
    :cond_a
    check-cast v1, [I

    check-cast v1, [I

    check-cast p1, [I

    check-cast p1, [I

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    goto :goto_0

    .line 38
    :cond_b
    instance-of v2, v1, [J

    if-eqz v2, :cond_d

    if-eqz p1, :cond_c

    instance-of v2, p1, [J

    if-eqz v2, :cond_d

    .line 40
    :cond_c
    check-cast v1, [J

    check-cast v1, [J

    check-cast p1, [J

    check-cast p1, [J

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    goto/16 :goto_0

    .line 41
    :cond_d
    instance-of v2, v1, [S

    if-eqz v2, :cond_f

    if-eqz p1, :cond_e

    instance-of v2, p1, [S

    if-eqz v2, :cond_f

    .line 43
    :cond_e
    check-cast v1, [S

    check-cast v1, [S

    check-cast p1, [S

    check-cast p1, [S

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([S[S)Z

    move-result v1

    goto/16 :goto_0

    .line 44
    :cond_f
    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_11

    if-eqz p1, :cond_10

    instance-of v2, p1, [Ljava/lang/Object;

    if-eqz v2, :cond_11

    .line 46
    :cond_10
    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 48
    :cond_11
    invoke-super {p0, p1}, Lorg/easymock/internal/matchers/Equals;->matches(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method
