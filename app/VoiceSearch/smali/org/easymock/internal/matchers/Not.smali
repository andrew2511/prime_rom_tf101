.class public Lorg/easymock/internal/matchers/Not;
.super Ljava/lang/Object;
.source "Not.java"

# interfaces
.implements Lorg/easymock/IArgumentMatcher;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x479dfd234755b8d4L


# instance fields
.field private final first:Lorg/easymock/IArgumentMatcher;


# direct methods
.method public constructor <init>(Lorg/easymock/IArgumentMatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/easymock/internal/matchers/Not;->first:Lorg/easymock/IArgumentMatcher;

    .line 19
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    const-string v0, "not("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    iget-object v0, p0, Lorg/easymock/internal/matchers/Not;->first:Lorg/easymock/IArgumentMatcher;

    invoke-interface {v0, p1}, Lorg/easymock/IArgumentMatcher;->appendTo(Ljava/lang/StringBuffer;)V

    .line 28
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lorg/easymock/internal/matchers/Not;->first:Lorg/easymock/IArgumentMatcher;

    invoke-interface {v0, p1}, Lorg/easymock/IArgumentMatcher;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
