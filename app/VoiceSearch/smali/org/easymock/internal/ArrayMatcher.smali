.class public Lorg/easymock/internal/ArrayMatcher;
.super Lorg/easymock/AbstractMatcher;
.source "ArrayMatcher.java"


# static fields
.field private static final serialVersionUID:J = -0x3fc3828b9da2e32eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/easymock/AbstractMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public argumentMatches(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v0, p1}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lorg/easymock/internal/matchers/ArrayEquals;->matches(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public argumentToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 17
    new-instance v1, Lorg/easymock/internal/matchers/ArrayEquals;

    invoke-direct {v1, p1}, Lorg/easymock/internal/matchers/ArrayEquals;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lorg/easymock/internal/matchers/ArrayEquals;->appendTo(Ljava/lang/StringBuffer;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
