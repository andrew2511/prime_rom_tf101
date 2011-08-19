.class public Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterAdapter;
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
    name = "MultiplexFilterAdapter"
.end annotation


# instance fields
.field private final filter:Lcom/google/android/common/html/parser/HtmlDocument$Filter;


# direct methods
.method public constructor <init>(Lcom/google/android/common/html/parser/HtmlDocument$Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 939
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 940
    iput-object p1, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/common/html/parser/HtmlDocument$Filter;

    .line 941
    return-void
.end method


# virtual methods
.method public filter(Lcom/google/android/common/html/parser/HtmlDocument$Node;Ljava/util/List;)V
    .locals 4
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
    .line 948
    .local p2, out:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    if-nez p1, :cond_1

    .line 968
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 953
    .restart local p1
    :cond_1
    instance-of v1, p1, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    if-eqz v1, :cond_2

    .line 954
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/common/html/parser/HtmlDocument$Filter;

    check-cast p1, Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    .end local p1
    invoke-interface {v1, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Filter;->visitTag(Lcom/google/android/common/html/parser/HtmlDocument$Tag;)Lcom/google/android/common/html/parser/HtmlDocument$Tag;

    move-result-object v0

    .line 965
    .local v0, resultNode:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    :goto_1
    if-eqz v0, :cond_0

    .line 966
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 955
    .end local v0           #resultNode:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    .restart local p1
    :cond_2
    instance-of v1, p1, Lcom/google/android/common/html/parser/HtmlDocument$Text;

    if-eqz v1, :cond_3

    .line 956
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/common/html/parser/HtmlDocument$Filter;

    check-cast p1, Lcom/google/android/common/html/parser/HtmlDocument$Text;

    .end local p1
    invoke-interface {v1, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Filter;->visitText(Lcom/google/android/common/html/parser/HtmlDocument$Text;)Lcom/google/android/common/html/parser/HtmlDocument$Text;

    move-result-object v0

    .restart local v0       #resultNode:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    goto :goto_1

    .line 957
    .end local v0           #resultNode:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    .restart local p1
    :cond_3
    instance-of v1, p1, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    if-eqz v1, :cond_4

    .line 958
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/common/html/parser/HtmlDocument$Filter;

    check-cast p1, Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    .end local p1
    invoke-interface {v1, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Filter;->visitEndTag(Lcom/google/android/common/html/parser/HtmlDocument$EndTag;)Lcom/google/android/common/html/parser/HtmlDocument$EndTag;

    move-result-object v0

    .restart local v0       #resultNode:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    goto :goto_1

    .line 959
    .end local v0           #resultNode:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    .restart local p1
    :cond_4
    instance-of v1, p1, Lcom/google/android/common/html/parser/HtmlDocument$Comment;

    if-eqz v1, :cond_5

    .line 960
    iget-object v1, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/common/html/parser/HtmlDocument$Filter;

    check-cast p1, Lcom/google/android/common/html/parser/HtmlDocument$Comment;

    .end local p1
    invoke-interface {v1, p1}, Lcom/google/android/common/html/parser/HtmlDocument$Filter;->visitComment(Lcom/google/android/common/html/parser/HtmlDocument$Comment;)Lcom/google/android/common/html/parser/HtmlDocument$Comment;

    move-result-object v0

    .restart local v0       #resultNode:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    goto :goto_1

    .line 962
    .end local v0           #resultNode:Lcom/google/android/common/html/parser/HtmlDocument$Node;
    .restart local p1
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown node type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public finish(Ljava/util/List;)V
    .locals 1
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
    .line 971
    .local p1, out:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/common/html/parser/HtmlDocument$Node;>;"
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/common/html/parser/HtmlDocument$Filter;

    invoke-interface {v0}, Lcom/google/android/common/html/parser/HtmlDocument$Filter;->finish()V

    .line 972
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 944
    iget-object v0, p0, Lcom/google/android/common/html/parser/HtmlDocument$MultiplexFilterAdapter;->filter:Lcom/google/android/common/html/parser/HtmlDocument$Filter;

    invoke-interface {v0}, Lcom/google/android/common/html/parser/HtmlDocument$Filter;->start()V

    .line 945
    return-void
.end method
