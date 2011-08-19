.class public Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterChain;
.super Ljava/lang/Object;
.source "HtmlDocument.java"

# interfaces
.implements Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/html/parser/HtmlDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiplexFilterChain"
.end annotation


# instance fields
.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1026
    .local p1, sourceFilters:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1021
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterChain;->filters:Ljava/util/List;

    .line 1027
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterChain;->filters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1028
    return-void
.end method


# virtual methods
.method public filter(Lcom/google/android/common/html/parser/HtmlDocument$Node;Ljava/util/List;)V
    .locals 7
    .parameter "originalNode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/common/html/parser/HtmlDocument$Node;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p2, out:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterChain;->filters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;

    .line 1049
    .local v0, filter:Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1062
    .end local v0           #filter:Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;
    :goto_1
    return-void

    .line 1054
    .restart local v0       #filter:Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v3, newResult:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/common/html/parser/HtmlDocument$Node;

    .line 1056
    .local v4, node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    invoke-interface {v0, v4, v3}, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;->filter(Lcom/google/android/common/html/parser/HtmlDocument$Node;Ljava/util/List;)V

    goto :goto_2

    .line 1058
    .end local v4           #node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    :cond_1
    move-object v5, v3

    .line 1059
    goto :goto_0

    .line 1061
    .end local v0           #filter:Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #newResult:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    :cond_2
    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public finish(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/common/html/parser/HtmlDocument$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1068
    .local p1, out:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    iget-object v6, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterChain;->filters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;

    .line 1074
    .local v0, filter:Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v3, newResult:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/common/html/parser/HtmlDocument$Node;

    .line 1076
    .local v4, node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    invoke-interface {v0, v4, v3}, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;->filter(Lcom/google/android/common/html/parser/HtmlDocument$Node;Ljava/util/List;)V

    goto :goto_1

    .line 1078
    .end local v4           #node:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    :cond_0
    invoke-interface {v0, v3}, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;->finish(Ljava/util/List;)V

    .line 1079
    move-object v5, v3

    .line 1080
    goto :goto_0

    .line 1082
    .end local v0           #filter:Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #newResult:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1083
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 1034
    iget-object v2, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterChain;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;

    .line 1035
    .local v0, filter:Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;
    invoke-interface {v0}, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;->start()V

    goto :goto_0

    .line 1037
    .end local v0           #filter:Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilter;
    :cond_0
    return-void
.end method
