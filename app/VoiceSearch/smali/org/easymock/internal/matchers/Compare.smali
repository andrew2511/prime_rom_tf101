.class public Lorg/easymock/internal/matchers/Compare;
.super Ljava/lang/Object;
.source "Compare.java"

# interfaces
.implements Lorg/easymock/IArgumentMatcher;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/easymock/IArgumentMatcher;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4370110ba26743a3L


# instance fields
.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private expected:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private operator:Lorg/easymock/LogicalOperator;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Comparator;Lorg/easymock/LogicalOperator;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/Comparator",
            "<-TT;>;",
            "Lorg/easymock/LogicalOperator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/easymock/internal/matchers/Compare;->expected:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lorg/easymock/internal/matchers/Compare;->comparator:Ljava/util/Comparator;

    .line 26
    iput-object p3, p0, Lorg/easymock/internal/matchers/Compare;->operator:Lorg/easymock/LogicalOperator;

    .line 27
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/easymock/internal/matchers/Compare;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/easymock/internal/matchers/Compare;->expected:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/easymock/internal/matchers/Compare;->operator:Lorg/easymock/LogicalOperator;

    invoke-virtual {v1}, Lorg/easymock/LogicalOperator;->getSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    .line 36
    if-nez p1, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/matchers/Compare;->operator:Lorg/easymock/LogicalOperator;

    iget-object v1, p0, Lorg/easymock/internal/matchers/Compare;->comparator:Ljava/util/Comparator;

    iget-object v2, p0, Lorg/easymock/internal/matchers/Compare;->expected:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/easymock/LogicalOperator;->matchResult(I)Z

    move-result v0

    goto :goto_0
.end method
