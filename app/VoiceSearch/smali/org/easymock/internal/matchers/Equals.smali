.class public Lorg/easymock/internal/matchers/Equals;
.super Ljava/lang/Object;
.source "Equals.java"

# interfaces
.implements Lorg/easymock/IArgumentMatcher;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x8176d94333cda73L


# instance fields
.field private final expected:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private appendQuoting(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 36
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 38
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/easymock/internal/matchers/Equals;->appendQuoting(Ljava/lang/StringBuffer;)V

    .line 30
    iget-object v0, p0, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 31
    invoke-direct {p0, p1}, Lorg/easymock/internal/matchers/Equals;->appendQuoting(Ljava/lang/StringBuffer;)V

    .line 32
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 48
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 51
    :goto_0
    return v0

    .line 50
    :cond_1
    check-cast p1, Lorg/easymock/internal/matchers/Equals;

    .line 51
    iget-object v0, p0, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    iget-object v1, p1, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method protected final getExpected()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "hashCode() is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 23
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lorg/easymock/internal/matchers/Equals;->expected:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
