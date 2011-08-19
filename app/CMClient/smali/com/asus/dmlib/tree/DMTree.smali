.class public Lcom/asus/dmlib/tree/DMTree;
.super Ljava/lang/Object;
.source "DMTree.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/VdmTree;


# static fields
.field private static final PREF_KEY_TREE_FILE:Ljava/lang/String; = "pref_key_tree_file"

.field private static final TAG:Ljava/lang/String; = "DMTree"

.field private static mDMTree:Lcom/asus/dmlib/tree/DMTree;

.field private static mRegistry:Lcom/asus/dmlib/vdm/PLRegistry;

.field private static mStorage:Lcom/asus/dmlib/vdm/PLStorage;


# instance fields
.field private destoryLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/dmlib/tree/DMTreeDestoryObServer;",
            ">;"
        }
    .end annotation
.end field

.field private mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-direct {v0, p1}, Lcom/asus/dmlib/tree/TreeManipulate;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/dmlib/tree/DMTree;->destoryLists:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public static getDMTree()Lcom/asus/dmlib/tree/DMTree;
    .locals 5

    .prologue
    .line 47
    sget-object v3, Lcom/asus/dmlib/tree/DMTree;->mDMTree:Lcom/asus/dmlib/tree/DMTree;

    if-nez v3, :cond_0

    .line 51
    :try_start_0
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getStorage()Lcom/asus/dmlib/vdm/PLStorage;

    move-result-object v3

    sput-object v3, Lcom/asus/dmlib/tree/DMTree;->mStorage:Lcom/asus/dmlib/vdm/PLStorage;

    .line 52
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v3

    sput-object v3, Lcom/asus/dmlib/tree/DMTree;->mRegistry:Lcom/asus/dmlib/vdm/PLRegistry;

    .line 54
    sget-object v3, Lcom/asus/dmlib/tree/DMTree;->mRegistry:Lcom/asus/dmlib/vdm/PLRegistry;

    const-string v4, "pref_key_tree_file"

    invoke-interface {v3, v4}, Lcom/asus/dmlib/vdm/PLRegistry;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, treeFileName:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 55
    sget-object v3, Lcom/asus/dmlib/tree/DMTree;->mStorage:Lcom/asus/dmlib/vdm/PLStorage;

    invoke-static {v2}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/asus/dmlib/vdm/PLStorage;->openInputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 59
    .local v1, fis:Ljava/io/FileInputStream;
    :goto_0
    new-instance v3, Lcom/asus/dmlib/tree/DMTree;

    invoke-direct {v3, v1}, Lcom/asus/dmlib/tree/DMTree;-><init>(Ljava/io/InputStream;)V

    sput-object v3, Lcom/asus/dmlib/tree/DMTree;->mDMTree:Lcom/asus/dmlib/tree/DMTree;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #treeFileName:Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v3, Lcom/asus/dmlib/tree/DMTree;->mDMTree:Lcom/asus/dmlib/tree/DMTree;

    return-object v3

    .line 57
    .restart local v2       #treeFileName:Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v3, Lcom/asus/dmlib/tree/DMTree;->mStorage:Lcom/asus/dmlib/vdm/PLStorage;

    sget-object v4, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    invoke-interface {v3, v4}, Lcom/asus/dmlib/vdm/PLStorage;->openInputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 60
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #treeFileName:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 61
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public addChildLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3
    .parameter "parentUri"
    .parameter "nodeName"
    .parameter "format"
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v1, Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {v1}, Lcom/asus/dmlib/tree/Leaf;-><init>()V

    .line 104
    .local v1, node:Lcom/asus/dmlib/tree/DMNode;
    iput-object p1, v1, Lcom/asus/dmlib/tree/Leaf;->mParient:Ljava/lang/String;

    .line 105
    iput-object p2, v1, Lcom/asus/dmlib/tree/Leaf;->mName:Ljava/lang/String;

    .line 106
    iput-object p3, v1, Lcom/asus/dmlib/tree/Leaf;->mFormat:Ljava/lang/String;

    .line 107
    iput-object p4, v1, Lcom/asus/dmlib/tree/Leaf;->mType:Ljava/lang/String;

    .line 108
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p5}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v1, Lcom/asus/dmlib/tree/Leaf;->mValue:Ljava/lang/String;

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v2, v1}, Lcom/asus/dmlib/tree/TreeManipulate;->add(Lcom/asus/dmlib/tree/DMNode;)V
    :try_end_0
    .catch Lcom/asus/dmlib/tree/TreePaserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 112
    .local v0, e:Lcom/asus/dmlib/tree/TreePaserException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addInteriorChildNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "parentUri"
    .parameter "nodeName"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Lcom/asus/dmlib/tree/Interior;

    invoke-direct {v1}, Lcom/asus/dmlib/tree/Interior;-><init>()V

    .line 119
    .local v1, node:Lcom/asus/dmlib/tree/DMNode;
    iput-object p1, v1, Lcom/asus/dmlib/tree/Interior;->mParient:Ljava/lang/String;

    .line 120
    iput-object p2, v1, Lcom/asus/dmlib/tree/Interior;->mName:Ljava/lang/String;

    .line 121
    iput-object p3, v1, Lcom/asus/dmlib/tree/Interior;->mType:Ljava/lang/String;

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v2, v1}, Lcom/asus/dmlib/tree/TreeManipulate;->add(Lcom/asus/dmlib/tree/DMNode;)V
    :try_end_0
    .catch Lcom/asus/dmlib/tree/TreePaserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 125
    .local v0, e:Lcom/asus/dmlib/tree/TreePaserException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addInteriorNode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "nodeUri"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 130
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 131
    .local v2, pos:I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, parentUri:Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, nodeName:Ljava/lang/String;
    const-string v3, "DMTree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parentUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "DMTree"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nodeName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, v1, v0, p2}, Lcom/asus/dmlib/tree/DMTree;->addInteriorChildNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public addLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 7
    .parameter "nodeUri"
    .parameter "format"
    .parameter "type"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 140
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 141
    .local v6, pos:I
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, parentUri:Ljava/lang/String;
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, nodeName:Ljava/lang/String;
    const-string v0, "DMTree"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parentUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "DMTree"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nodeName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 145
    invoke-virtual/range {v0 .. v5}, Lcom/asus/dmlib/tree/DMTree;->addChildLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 147
    return-void
.end method

.method public deleteNode(Ljava/lang/String;)V
    .locals 2
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 151
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    invoke-virtual {v0}, Lcom/asus/dmlib/tree/DMNode;->onDelete()V

    .line 152
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->delete(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public destory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    iget-object v2, p0, Lcom/asus/dmlib/tree/DMTree;->destoryLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/tree/DMTreeDestoryObServer;

    .line 69
    .local v1, obj:Lcom/asus/dmlib/tree/DMTreeDestoryObServer;
    invoke-interface {v1}, Lcom/asus/dmlib/tree/DMTreeDestoryObServer;->destory()V

    goto :goto_0

    .line 71
    .end local v1           #obj:Lcom/asus/dmlib/tree/DMTreeDestoryObServer;
    :cond_0
    iput-object v3, p0, Lcom/asus/dmlib/tree/DMTree;->destoryLists:Ljava/util/ArrayList;

    .line 72
    sput-object v3, Lcom/asus/dmlib/tree/DMTree;->mDMTree:Lcom/asus/dmlib/tree/DMTree;

    .line 73
    const-string v2, "DMTree"

    const-string v3, "DMTree destoried!!!"

    invoke-static {v2, v3}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public getACL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 157
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 158
    iget-object v1, v0, Lcom/asus/dmlib/tree/DMNode;->mACL:Ljava/lang/String;

    return-object v1

    .line 160
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBinValue(Ljava/lang/String;[B)I
    .locals 7
    .parameter "nodeUri"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 164
    iget-object v4, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v4, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v2

    .line 165
    .local v2, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v2}, Lcom/asus/dmlib/tree/DMNode;->onRead()Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, value:Ljava/lang/String;
    invoke-static {v3}, Lcom/asus/dmlib/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 168
    .local v0, ary:[B
    array-length v4, v0

    array-length v5, p2

    if-gt v4, v5, :cond_1

    .line 169
    const/4 v1, 0x0

    .local v1, idx:I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 170
    aget-byte v4, v0, v1

    aput-byte v4, p2, v1

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    array-length v4, v0

    return v4

    .line 174
    .end local v1           #idx:I
    :cond_1
    new-instance v4, Lcom/asus/dmlib/vdm/VdmException;

    const-string v5, "Buffer not enough"

    invoke-direct {v4, v5}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    .end local v0           #ary:[B
    .end local v3           #value:Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No Such Node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getBoolValue(Ljava/lang/String;)Z
    .locals 7
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 182
    iget-object v3, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v3, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v1

    .line 183
    .local v1, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v1, :cond_2

    .line 185
    :try_start_0
    invoke-virtual {v1}, Lcom/asus/dmlib/tree/DMNode;->onRead()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 186
    .local v2, value:I
    if-ne v2, v5, :cond_0

    move v3, v5

    .line 195
    .end local v2           #value:I
    :goto_0
    return v3

    .restart local v2       #value:I
    :cond_0
    move v3, v6

    .line 189
    goto :goto_0

    .line 191
    .end local v2           #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 192
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "true"

    iget-object v4, v1, Lcom/asus/dmlib/tree/DMNode;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    .line 193
    goto :goto_0

    :cond_1
    move v3, v6

    .line 195
    goto :goto_0

    .line 199
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    new-instance v3, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No Such Node: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;
    .locals 1
    .parameter "nodeUri"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v0, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 5
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v2, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v2, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v1

    .line 204
    .local v1, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v1, :cond_0

    .line 206
    :try_start_0
    invoke-virtual {v1}, Lcom/asus/dmlib/tree/DMNode;->onRead()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 208
    :goto_0
    return v2

    .line 207
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 208
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0

    .line 212
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v2, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No Such Node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "nodeUri"
    .parameter "propertyName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/asus/dmlib/vdm/VdmException;

    const-string v1, "Not Implement!!"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 222
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 223
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/asus/dmlib/tree/DMNode;->onRead()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 226
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerAdd(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeAddHandler;)V
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 231
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/tree/DMNode;->setAddHandler(Lcom/asus/dmlib/vdm/NodeAddHandler;)V

    .line 233
    return-void

    .line 235
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerDelete(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeDeleteHandler;)V
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 240
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/tree/DMNode;->setDelHandler(Lcom/asus/dmlib/vdm/NodeDeleteHandler;)V

    .line 242
    return-void

    .line 244
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerDestoryNotifier(Lcom/asus/dmlib/tree/DMTreeDestoryObServer;)V
    .locals 1
    .parameter "notifier"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/asus/dmlib/tree/DMTree;->destoryLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public registerExecute(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeExecuteHandler;)V
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 249
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/tree/DMNode;->setExecHandler(Lcom/asus/dmlib/vdm/NodeExecuteHandler;)V

    .line 251
    return-void

    .line 253
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    .locals 4
    .parameter "nodeUri"
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 258
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/tree/DMNode;->setIoHandler(Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 260
    return-void

    .line 262
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public replaceACL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "nodeUri"
    .parameter "newAcl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 267
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 268
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/tree/DMNode;->setACL(Ljava/lang/String;)V

    .line 270
    return-void

    .line 272
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public replaceBinValue(Ljava/lang/String;[B)V
    .locals 4
    .parameter "nodeUri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 277
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 278
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 279
    invoke-static {p2}, Lcom/asus/dmlib/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/tree/DMNode;->onWrite(Ljava/lang/String;)V

    .line 280
    const-string v1, "bin"

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/tree/DMNode;->setType(Ljava/lang/String;)V

    .line 281
    return-void

    .line 283
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public replaceBoolValue(Ljava/lang/String;Z)V
    .locals 4
    .parameter "nodeUri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 288
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 289
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/tree/DMNode;->onWrite(Ljava/lang/String;)V

    .line 290
    const-string v1, "bool"

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/tree/DMNode;->setType(Ljava/lang/String;)V

    .line 291
    return-void

    .line 293
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public replaceIntValue(Ljava/lang/String;I)V
    .locals 4
    .parameter "nodeUri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 299
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 300
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/tree/DMNode;->onWrite(Ljava/lang/String;)V

    .line 301
    const-string v1, "int"

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/tree/DMNode;->setType(Ljava/lang/String;)V

    .line 302
    return-void

    .line 304
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public replaceProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "nodeUri"
    .parameter "propertyName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 311
    new-instance v0, Lcom/asus/dmlib/vdm/VdmException;

    const-string v1, "Not Implement!!"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "nodeUri"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v1, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/TreeManipulate;->findByNodeURI(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    .line 316
    .local v0, node:Lcom/asus/dmlib/tree/DMNode;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p2}, Lcom/asus/dmlib/tree/DMNode;->onWrite(Ljava/lang/String;)V

    .line 318
    const-string v1, "bool"

    invoke-virtual {v0, v1}, Lcom/asus/dmlib/tree/DMNode;->setType(Ljava/lang/String;)V

    .line 319
    return-void

    .line 321
    :cond_0
    new-instance v1, Lcom/asus/dmlib/vdm/VdmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Such Node: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterAdd(Lcom/asus/dmlib/vdm/NodeAddHandler;)V
    .locals 2
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/asus/dmlib/vdm/VdmException;

    const-string v1, "Not Implement!!"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterDelete(Lcom/asus/dmlib/vdm/NodeDeleteHandler;)V
    .locals 2
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 332
    new-instance v0, Lcom/asus/dmlib/vdm/VdmException;

    const-string v1, "Not Implement!!"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterExecute(Lcom/asus/dmlib/vdm/NodeExecuteHandler;)V
    .locals 2
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Lcom/asus/dmlib/vdm/VdmException;

    const-string v1, "Not Implement!!"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterNodeIoHandler(Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    .locals 2
    .parameter "handler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Lcom/asus/dmlib/vdm/VdmException;

    const-string v1, "Not Implement!!"

    invoke-direct {v0, v1}, Lcom/asus/dmlib/vdm/VdmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToPersistentStorage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    sget-object v2, Lcom/asus/dmlib/tree/DMTree;->mStorage:Lcom/asus/dmlib/vdm/PLStorage;

    sget-object v3, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->TEMP_DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    sget-object v4, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->WRITE:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    invoke-interface {v2, v3, v4}, Lcom/asus/dmlib/vdm/PLStorage;->openOutputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;Lcom/asus/dmlib/vdm/PLStorage$AccessMode;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 84
    .local v1, out:Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v2, v1}, Lcom/asus/dmlib/tree/TreeManipulate;->writeToPersistor(Ljava/io/OutputStream;)V

    .line 85
    sget-object v2, Lcom/asus/dmlib/tree/DMTree;->mRegistry:Lcom/asus/dmlib/vdm/PLRegistry;

    const-string v3, "pref_key_tree_file"

    sget-object v4, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->TEMP_DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/asus/dmlib/vdm/PLRegistry;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/asus/dmlib/tree/DMTree;->mStorage:Lcom/asus/dmlib/vdm/PLStorage;

    sget-object v3, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    sget-object v4, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->WRITE:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    invoke-interface {v2, v3, v4}, Lcom/asus/dmlib/vdm/PLStorage;->openOutputStream(Lcom/asus/dmlib/vdm/PLStorage$ItemType;Lcom/asus/dmlib/vdm/PLStorage$AccessMode;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/asus/dmlib/tree/DMTree;->mTreeMan:Lcom/asus/dmlib/tree/TreeManipulate;

    invoke-virtual {v2, v1}, Lcom/asus/dmlib/tree/TreeManipulate;->writeToPersistor(Ljava/io/OutputStream;)V

    .line 89
    sget-object v2, Lcom/asus/dmlib/tree/DMTree;->mRegistry:Lcom/asus/dmlib/vdm/PLRegistry;

    const-string v3, "pref_key_tree_file"

    sget-object v4, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    invoke-virtual {v4}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/asus/dmlib/vdm/PLRegistry;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget-object v2, Lcom/asus/dmlib/tree/DMTree;->mStorage:Lcom/asus/dmlib/vdm/PLStorage;

    sget-object v3, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->TEMP_DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    invoke-interface {v2, v3}, Lcom/asus/dmlib/vdm/PLStorage;->delete(Lcom/asus/dmlib/vdm/PLStorage$ItemType;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v1           #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 93
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
