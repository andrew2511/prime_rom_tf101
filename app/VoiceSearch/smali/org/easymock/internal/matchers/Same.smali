.class public Lorg/easymock/internal/matchers/Same;
.super Ljava/lang/Object;
.source "Same.java"

# interfaces
.implements Lorg/easymock/IArgumentMatcher;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0xf31f9cf04d3d1e8L


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
    iput-object p1, p0, Lorg/easymock/internal/matchers/Same;->expected:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private appendQuoting(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lorg/easymock/internal/matchers/Same;->expected:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 35
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/easymock/internal/matchers/Same;->expected:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 37
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const-string v0, "same("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    invoke-direct {p0, p1}, Lorg/easymock/internal/matchers/Same;->appendQuoting(Ljava/lang/StringBuffer;)V

    .line 28
    iget-object v0, p0, Lorg/easymock/internal/matchers/Same;->expected:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 29
    invoke-direct {p0, p1}, Lorg/easymock/internal/matchers/Same;->appendQuoting(Ljava/lang/StringBuffer;)V

    .line 30
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lorg/easymock/internal/matchers/Same;->expected:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
