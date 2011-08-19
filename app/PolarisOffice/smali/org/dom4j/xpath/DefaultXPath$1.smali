.class Lorg/dom4j/xpath/DefaultXPath$1;
.super Ljava/lang/Object;
.source "DefaultXPath.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final this$0:Lorg/dom4j/xpath/DefaultXPath;

.field private final val$sortValues:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/dom4j/xpath/DefaultXPath;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath$1;->this$0:Lorg/dom4j/xpath/DefaultXPath;

    iput-object p2, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 298
    iget-object v2, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 299
    iget-object v2, p0, Lorg/dom4j/xpath/DefaultXPath$1;->val$sortValues:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 301
    if-ne p1, p2, :cond_0

    move v2, v4

    .line 312
    :goto_0
    return v2

    .line 303
    :cond_0
    instance-of v2, p1, Ljava/lang/Comparable;

    if-eqz v2, :cond_1

    .line 304
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v1, v0

    .line 306
    .local v1, c1:Ljava/lang/Comparable;
    invoke-interface {v1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0

    .line 307
    .end local v1           #c1:Ljava/lang/Comparable;
    :cond_1
    if-nez p1, :cond_2

    .line 308
    const/4 v2, 0x1

    goto :goto_0

    .line 309
    :cond_2
    if-nez p2, :cond_3

    move v2, v3

    .line 310
    goto :goto_0

    .line 312
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v4

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_0
.end method
