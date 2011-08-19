.class public abstract Lorg/easymock/AbstractMatcher;
.super Ljava/lang/Object;
.source "AbstractMatcher.java"

# interfaces
.implements Lorg/easymock/ArgumentsMatcher;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4bd0b1562dda20a7L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected argumentMatches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected argumentToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 48
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public matches([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    if-ne p1, p2, :cond_0

    move v0, v4

    .line 99
    :goto_0
    return v0

    .line 73
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move v0, v3

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_3

    move v0, v3

    .line 77
    goto :goto_0

    :cond_3
    move v0, v3

    .line 79
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_8

    .line 80
    aget-object v1, p1, v0

    .line 81
    aget-object v2, p2, v0

    .line 83
    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 79
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 87
    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    move v0, v3

    .line 88
    goto :goto_0

    .line 91
    :cond_6
    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    move v0, v3

    .line 92
    goto :goto_0

    .line 95
    :cond_7
    invoke-virtual {p0, v1, v2}, Lorg/easymock/AbstractMatcher;->argumentMatches(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move v0, v3

    .line 96
    goto :goto_0

    :cond_8
    move v0, v4

    .line 99
    goto :goto_0
.end method

.method public toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 113
    if-nez p1, :cond_2

    .line 114
    new-array v0, v2, [Ljava/lang/Object;

    .line 116
    :goto_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 119
    if-lez v2, :cond_0

    .line 120
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Lorg/easymock/AbstractMatcher;->argumentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method
