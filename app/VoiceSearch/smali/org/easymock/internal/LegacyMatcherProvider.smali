.class public Lorg/easymock/internal/LegacyMatcherProvider;
.super Ljava/lang/Object;
.source "LegacyMatcherProvider.java"


# instance fields
.field private defaultMatcher:Lorg/easymock/ArgumentsMatcher;

.field private defaultMatcherSet:Z

.field private matchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Method;",
            "Lorg/easymock/ArgumentsMatcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/easymock/internal/LegacyMatcherProvider;->matchers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMatcher(Ljava/lang/reflect/Method;)Lorg/easymock/ArgumentsMatcher;
    .locals 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lorg/easymock/internal/LegacyMatcherProvider;->matchers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    iget-boolean v0, p0, Lorg/easymock/internal/LegacyMatcherProvider;->defaultMatcherSet:Z

    if-nez v0, :cond_0

    .line 26
    sget-object v0, Lorg/easymock/MockControl;->EQUALS_MATCHER:Lorg/easymock/ArgumentsMatcher;

    invoke-virtual {p0, v0}, Lorg/easymock/internal/LegacyMatcherProvider;->setDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lorg/easymock/internal/LegacyMatcherProvider;->matchers:Ljava/util/Map;

    iget-object v1, p0, Lorg/easymock/internal/LegacyMatcherProvider;->defaultMatcher:Lorg/easymock/ArgumentsMatcher;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_1
    iget-object v0, p0, Lorg/easymock/internal/LegacyMatcherProvider;->matchers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/easymock/ArgumentsMatcher;

    return-object p0
.end method

.method public setDefaultMatcher(Lorg/easymock/ArgumentsMatcher;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/easymock/internal/LegacyMatcherProvider;->defaultMatcherSet:Z

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "default matcher can only be set once directly after creation of the MockControl"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lorg/easymock/internal/LegacyMatcherProvider;->defaultMatcher:Lorg/easymock/ArgumentsMatcher;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/easymock/internal/LegacyMatcherProvider;->defaultMatcherSet:Z

    .line 42
    return-void
.end method

.method public setMatcher(Ljava/lang/reflect/Method;Lorg/easymock/ArgumentsMatcher;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lorg/easymock/internal/LegacyMatcherProvider;->matchers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/easymock/internal/LegacyMatcherProvider;->matchers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_1

    .line 46
    new-instance v0, Lorg/easymock/internal/RuntimeExceptionWrapper;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "for method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_0

    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), a matcher has already been set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/easymock/internal/RuntimeExceptionWrapper;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_0
    const-string v3, "..."

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lorg/easymock/internal/LegacyMatcherProvider;->matchers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
.end method
