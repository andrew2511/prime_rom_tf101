.class Lorg/dom4j/swing/BranchTreeNode$1;
.super Ljava/lang/Object;
.source "BranchTreeNode.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private index:I

.field final this$0:Lorg/dom4j/swing/BranchTreeNode;


# direct methods
.method constructor <init>(Lorg/dom4j/swing/BranchTreeNode;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/dom4j/swing/BranchTreeNode$1;->this$0:Lorg/dom4j/swing/BranchTreeNode;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/dom4j/swing/BranchTreeNode$1;->index:I

    .line 1
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lorg/dom4j/swing/BranchTreeNode$1;->index:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/dom4j/swing/BranchTreeNode$1;->this$0:Lorg/dom4j/swing/BranchTreeNode;

    invoke-virtual {v1}, Lorg/dom4j/swing/BranchTreeNode;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/dom4j/swing/BranchTreeNode$1;->this$0:Lorg/dom4j/swing/BranchTreeNode;

    iget v1, p0, Lorg/dom4j/swing/BranchTreeNode$1;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/dom4j/swing/BranchTreeNode$1;->index:I

    invoke-virtual {v0, v1}, Lorg/dom4j/swing/BranchTreeNode;->getChildAt(I)Ljavax/swing/tree/TreeNode;

    move-result-object v0

    return-object v0
.end method
