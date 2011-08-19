.class public Lorg/easymock/internal/matchers/And;
.super Ljava/lang/Object;
.source "And.java"

# interfaces
.implements Lorg/easymock/IArgumentMatcher;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x35c54691e205a8eaL


# instance fields
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
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/easymock/IArgumentMatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/easymock/internal/matchers/And;->matchers:Ljava/util/List;

    .line 21
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    const-string v0, "and("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    iget-object v0, p0, Lorg/easymock/internal/matchers/And;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/IArgumentMatcher;

    invoke-interface {p0, p1}, Lorg/easymock/IArgumentMatcher;->appendTo(Ljava/lang/StringBuffer;)V

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 40
    :cond_1
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    return-void
.end method

.method public matches(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lorg/easymock/internal/matchers/And;->matchers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/IArgumentMatcher;

    .line 25
    invoke-interface {p0, p1}, Lorg/easymock/IArgumentMatcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
