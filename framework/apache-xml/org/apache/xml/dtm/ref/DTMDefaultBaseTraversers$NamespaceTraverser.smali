.class Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;
.super Lorg/apache/xml/dtm/DTMAxisTraverser;
.source "DTMDefaultBaseTraversers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NamespaceTraverser"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;


# direct methods
.method private constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V
    .registers 2
    .parameter

    .prologue
    .line 1076
    iput-object p1, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-direct {p0}, Lorg/apache/xml/dtm/DTMAxisTraverser;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1076
    invoke-direct {p0, p1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;-><init>(Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;)V

    return-void
.end method


# virtual methods
.method public next(II)I
    .registers 5
    .parameter "context"
    .parameter "current"

    .prologue
    const/4 v1, 0x1

    .line 1090
    if-ne p1, p2, :cond_a

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstNamespaceNode(IZ)I

    move-result v0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextNamespaceNode(IIZ)I

    move-result v0

    goto :goto_9
.end method

.method public next(III)I
    .registers 7
    .parameter "context"
    .parameter "current"
    .parameter "expandedTypeID"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 1108
    if-ne p1, p2, :cond_15

    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getFirstNamespaceNode(IZ)I

    move-result v0

    move p2, v0

    .line 1114
    :cond_b
    :goto_b
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p2}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getExpandedTypeID(I)I

    move-result v0

    if-ne v0, p3, :cond_1d

    move v0, p2

    .line 1120
    :goto_14
    return v0

    .line 1108
    :cond_15
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextNamespaceNode(IIZ)I

    move-result v0

    move p2, v0

    goto :goto_b

    .line 1118
    :cond_1d
    iget-object v0, p0, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers$NamespaceTraverser;->this$0:Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/xml/dtm/ref/DTMDefaultBaseTraversers;->getNextNamespaceNode(IIZ)I

    move-result p2

    if-ne v2, p2, :cond_b

    move v0, v2

    .line 1120
    goto :goto_14
.end method
