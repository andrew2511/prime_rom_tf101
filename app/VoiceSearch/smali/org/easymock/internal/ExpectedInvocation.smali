.class public Lorg/easymock/internal/ExpectedInvocation;
.super Ljava/lang/Object;
.source "ExpectedInvocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4d16ac24d5c51c83L


# instance fields
.field private final invocation:Lorg/easymock/internal/Invocation;

.field private final matcher:Lorg/easymock/ArgumentsMatcher;

.field private final matchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/easymock/IArgumentMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/easymock/internal/Invocation;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/internal/Invocation;",
            "Ljava/util/List",
            "<",
            "Lorg/easymock/IArgumentMatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/easymock/internal/ExpectedInvocation;-><init>(Lorg/easymock/internal/Invocation;Ljava/util/List;Lorg/easymock/ArgumentsMatcher;)V

    .line 30
    return-void
.end method

.method private constructor <init>(Lorg/easymock/internal/Invocation;Ljava/util/List;Lorg/easymock/ArgumentsMatcher;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/internal/Invocation;",
            "Ljava/util/List",
            "<",
            "Lorg/easymock/IArgumentMatcher;",
            ">;",
            "Lorg/easymock/ArgumentsMatcher;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    .line 36
    iput-object p3, p0, Lorg/easymock/internal/ExpectedInvocation;->matcher:Lorg/easymock/ArgumentsMatcher;

    .line 37
    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/easymock/internal/ExpectedInvocation;->createMissingMatchers(Lorg/easymock/internal/Invocation;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createMissingMatchers(Lorg/easymock/internal/Invocation;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/easymock/internal/Invocation;",
            "Ljava/util/List",
            "<",
            "Lorg/easymock/IArgumentMatcher;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/easymock/IArgumentMatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    if-eqz p2, :cond_2

    .line 44
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lorg/easymock/internal/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/easymock/internal/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " matchers expected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recorded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    .line 57
    :cond_1
    return-object v0

    .line 53
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/easymock/internal/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 55
    new-instance v5, Lorg/easymock/internal/matchers/Equals;

    invoke-direct {v5, v4}, Lorg/easymock/internal/matchers/Equals;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private matches([Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 85
    array-length v0, p1

    iget-object v1, p0, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    move v0, v3

    .line 93
    :goto_0
    return v0

    :cond_0
    move v1, v3

    .line 88
    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_2

    .line 89
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/easymock/IArgumentMatcher;

    aget-object v2, p1, v1

    invoke-interface {v0, v2}, Lorg/easymock/IArgumentMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 90
    goto :goto_0

    .line 88
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 93
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private myToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 102
    iget-object v1, p0, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    invoke-virtual {v1}, Lorg/easymock/internal/Invocation;->getMockAndMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    iget-object v1, p0, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/IArgumentMatcher;

    invoke-interface {p0, v0}, Lorg/easymock/IArgumentMatcher;->appendTo(Ljava/lang/StringBuffer;)V

    .line 106
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 110
    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 61
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

    .line 65
    :goto_0
    return v0

    .line 64
    :cond_1
    check-cast p1, Lorg/easymock/internal/ExpectedInvocation;

    .line 65
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    iget-object v1, p1, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    invoke-virtual {v0, v1}, Lorg/easymock/internal/Invocation;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->matcher:Lorg/easymock/ArgumentsMatcher;

    if-nez v0, :cond_2

    iget-object v0, p1, Lorg/easymock/internal/ExpectedInvocation;->matcher:Lorg/easymock/ArgumentsMatcher;

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->matcher:Lorg/easymock/ArgumentsMatcher;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->matcher:Lorg/easymock/ArgumentsMatcher;

    iget-object v1, p1, Lorg/easymock/internal/ExpectedInvocation;->matcher:Lorg/easymock/ArgumentsMatcher;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    if-nez v0, :cond_4

    iget-object v0, p1, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    iget-object v1, p1, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    invoke-virtual {v0}, Lorg/easymock/internal/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    invoke-virtual {v0}, Lorg/easymock/internal/Invocation;->hashCode()I

    move-result v0

    return v0
.end method

.method public matches(Lorg/easymock/internal/Invocation;)Z
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    invoke-virtual {v0}, Lorg/easymock/internal/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/easymock/internal/Invocation;->getMock()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    invoke-virtual {v0}, Lorg/easymock/internal/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p1}, Lorg/easymock/internal/Invocation;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/easymock/internal/Invocation;->getArguments()[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/easymock/internal/ExpectedInvocation;->matches([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    iget-object v1, p0, Lorg/easymock/internal/ExpectedInvocation;->matcher:Lorg/easymock/ArgumentsMatcher;

    invoke-virtual {v0, p1, v1}, Lorg/easymock/internal/Invocation;->matches(Lorg/easymock/internal/Invocation;Lorg/easymock/ArgumentsMatcher;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->matchers:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/easymock/internal/ExpectedInvocation;->myToString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    iget-object v1, p0, Lorg/easymock/internal/ExpectedInvocation;->matcher:Lorg/easymock/ArgumentsMatcher;

    invoke-virtual {v0, v1}, Lorg/easymock/internal/Invocation;->toString(Lorg/easymock/ArgumentsMatcher;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public withMatcher(Lorg/easymock/ArgumentsMatcher;)Lorg/easymock/internal/ExpectedInvocation;
    .locals 3
    .parameter

    .prologue
    .line 120
    new-instance v0, Lorg/easymock/internal/ExpectedInvocation;

    iget-object v1, p0, Lorg/easymock/internal/ExpectedInvocation;->invocation:Lorg/easymock/internal/Invocation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lorg/easymock/internal/ExpectedInvocation;-><init>(Lorg/easymock/internal/Invocation;Ljava/util/List;Lorg/easymock/ArgumentsMatcher;)V

    return-object v0
.end method
