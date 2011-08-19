.class public Lcom/asus/dmlib/tree/Interior;
.super Lcom/asus/dmlib/tree/DMNode;
.source "Interior.java"


# instance fields
.field child:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/tree/DMNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/asus/dmlib/tree/DMNode;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getChildCount()I
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getChildren()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/tree/DMNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onRead()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v3, p0, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 37
    iget-object v3, p0, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/tree/DMNode;

    .line 38
    .local v1, node:Lcom/asus/dmlib/tree/DMNode;
    iget-object v3, v1, Lcom/asus/dmlib/tree/DMNode;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v3, p0, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v0, v3, :cond_0

    .line 40
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v1           #node:Lcom/asus/dmlib/tree/DMNode;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public printNode()V
    .locals 4

    .prologue
    .line 15
    invoke-super {p0}, Lcom/asus/dmlib/tree/DMNode;->printNode()V

    .line 16
    iget-object v2, p0, Lcom/asus/dmlib/tree/Interior;->child:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/tree/DMNode;

    .line 17
    .local v1, node:Lcom/asus/dmlib/tree/DMNode;
    const-string v2, "TREE"

    const-string v3, "==============> next node"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-virtual {v1}, Lcom/asus/dmlib/tree/DMNode;->printNode()V

    goto :goto_0

    .line 20
    .end local v1           #node:Lcom/asus/dmlib/tree/DMNode;
    :cond_0
    return-void
.end method
