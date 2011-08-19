.class public Lcom/google/android/gm/template/EvalContext;
.super Ljava/lang/Object;
.source "EvalContext.java"


# instance fields
.field private final mScopes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, scope:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/template/EvalContext;->mScopes:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gm/template/EvalContext;->push(Ljava/util/Map;)V

    .line 22
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "key"

    .prologue
    .line 49
    iget-object v2, p0, Lcom/google/android/gm/template/EvalContext;->mScopes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 50
    iget-object v2, p0, Lcom/google/android/gm/template/EvalContext;->mScopes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 51
    .local v1, scope:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 55
    .end local v1           #scope:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    :goto_1
    return-object v2

    .line 49
    .restart local v1       #scope:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 55
    .end local v1           #scope:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public pop()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/gm/template/EvalContext;->mScopes:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gm/template/EvalContext;->mScopes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public push(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, scope:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/android/gm/template/EvalContext;->mScopes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method
