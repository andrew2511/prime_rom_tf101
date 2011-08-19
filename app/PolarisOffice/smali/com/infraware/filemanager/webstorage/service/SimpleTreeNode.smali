.class public Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
.super Ljava/lang/Object;
.source "SimpleTreeNode.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private childs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;",
            ">;"
        }
    .end annotation
.end field

.field private isRoot:Z

.field private parent:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

.field private userObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->isRoot:Z

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->isRoot:Z

    .line 26
    invoke-virtual {p1, p0}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 27
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->parent:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 28
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "isRoot"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->isRoot:Z

    .line 22
    iput-boolean p1, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->isRoot:Z

    .line 23
    return-void
.end method


# virtual methods
.method public add(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .locals 1
    .parameter "node"

    .prologue
    .line 88
    invoke-virtual {p1, p0}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->setParent(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V

    .line 89
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public children()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .locals 3

    .prologue
    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, bobapet:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->clone()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    move-result-object v0

    return-object v0
.end method

.method public getAllowsChildren()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public getChildArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildAt(I)Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .locals 1
    .parameter "childIndex"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    return-object p0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getIndex(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)I
    .locals 4
    .parameter "node"

    .prologue
    .line 59
    const/4 v1, -0x1

    .line 61
    .local v1, idx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 68
    :goto_1
    return v1

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 63
    move v1, v0

    .line 64
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getParent()Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->parent:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->childs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRoot()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->isRoot:Z

    return v0
.end method

.method public setParent(Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->parent:Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;

    .line 93
    return-void
.end method

.method public setRoot(Z)V
    .locals 0
    .parameter "isRoot"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->isRoot:Z

    .line 36
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .parameter "userObject"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/infraware/filemanager/webstorage/service/SimpleTreeNode;->userObject:Ljava/lang/Object;

    .line 85
    return-void
.end method
