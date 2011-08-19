.class public Lcom/asus/cm/handler/DMAccRootNodeHandler;
.super Ljava/lang/Object;
.source "DMAccRootNodeHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeAddHandler;
.implements Lcom/asus/dmlib/vdm/NodeDeleteHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DMAccRootNodeHandler"

.field private static mDMRootNodeHandler:Lcom/asus/cm/handler/DMAccRootNodeHandler;


# instance fields
.field private mDmTreeAddHandlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDmTreeHandlerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/cm/handler/DMAccSubNodeHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mTree:Lcom/asus/dmlib/vdm/VdmTree;


# direct methods
.method private constructor <init>(Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 1
    .parameter "pTree"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    .line 26
    iget-object v0, p0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDmTreeAddHandlerList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDmTreeAddHandlerList:Ljava/util/ArrayList;

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDmTreeHandlerList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDmTreeHandlerList:Ljava/util/ArrayList;

    .line 31
    :cond_1
    return-void
.end method

.method public static getDMAccSubNode(Lcom/asus/dmlib/vdm/VdmTree;Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 2
    .parameter "pTree"
    .parameter "pContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/asus/dmlib/vdm/VdmTree;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const-string v1, "./DMAcc"

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMUtils;->getAllChildURIs(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 124
    .local v0, pDMAccList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method private registerDMAddDeleteHandler(Ljava/lang/String;)V
    .locals 4
    .parameter "nodeUri"

    .prologue
    .line 36
    iget-object v1, p0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDmTreeAddHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const-string v1, "DMAccRootNodeHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register add,delete at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :try_start_0
    sget-object v1, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDMRootNodeHandler:Lcom/asus/cm/handler/DMAccRootNodeHandler;

    iget-object v1, v1, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    sget-object v2, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDMRootNodeHandler:Lcom/asus/cm/handler/DMAccRootNodeHandler;

    invoke-interface {v1, p1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerAdd(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeAddHandler;)V

    .line 40
    sget-object v1, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDMRootNodeHandler:Lcom/asus/cm/handler/DMAccRootNodeHandler;

    iget-object v1, v1, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    sget-object v2, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDMRootNodeHandler:Lcom/asus/cm/handler/DMAccRootNodeHandler;

    invoke-interface {v1, p1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerDelete(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeDeleteHandler;)V

    .line 41
    iget-object v1, p0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDmTreeAddHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 43
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_0
    const-string v1, "DMAccRootNodeHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has registered."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static registerDMAddHandler(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)Lcom/asus/cm/handler/DMAccRootNodeHandler;
    .locals 1
    .parameter "pTree"
    .parameter "nodeUri"

    .prologue
    .line 52
    sget-object v0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDMRootNodeHandler:Lcom/asus/cm/handler/DMAccRootNodeHandler;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/asus/cm/handler/DMAccRootNodeHandler;

    invoke-direct {v0, p0}, Lcom/asus/cm/handler/DMAccRootNodeHandler;-><init>(Lcom/asus/dmlib/vdm/VdmTree;)V

    sput-object v0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDMRootNodeHandler:Lcom/asus/cm/handler/DMAccRootNodeHandler;

    .line 55
    :cond_0
    sget-object v0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDMRootNodeHandler:Lcom/asus/cm/handler/DMAccRootNodeHandler;

    invoke-direct {v0, p1}, Lcom/asus/cm/handler/DMAccRootNodeHandler;->registerDMAddDeleteHandler(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDMRootNodeHandler:Lcom/asus/cm/handler/DMAccRootNodeHandler;

    return-object v0
.end method


# virtual methods
.method public add([BJJLjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter "pData"
    .parameter "pOffset"
    .parameter "pTotal"
    .parameter "pFormat"
    .parameter "pNodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v6, 0x0

    .line 80
    .local v6, baOut:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    .end local v6           #baOut:Ljava/io/ByteArrayOutputStream;
    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .restart local v6       #baOut:Ljava/io/ByteArrayOutputStream;
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move v14, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move v15, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v14

    move v3, v15

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 83
    const-string v14, "DMAccRootNodeHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "add URI: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Format: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Offset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " , Total: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v14, "DMAccRootNodeHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "add URI: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", data: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v14, "node"

    move-object v0, v14

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 88
    const-string v14, "./SyncML/DM/DMAcc"

    const-string v15, "./DMAcc"

    move-object/from16 v0, p7

    move-object v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 89
    .local v13, pNewDMUri:Ljava/lang/String;
    const-string v14, "DMAccRootNodeHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Register node add at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-interface {v14, v13, v15}, Lcom/asus/dmlib/vdm/VdmTree;->addInteriorNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/asus/cm/handler/DMAccRootNodeHandler;->registerDMAddDeleteHandler(Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 95
    .end local v13           #pNewDMUri:Ljava/lang/String;
    :cond_1
    invoke-static/range {p7 .. p7}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->find12Nameby10(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 96
    .restart local v13       #pNewDMUri:Ljava/lang/String;
    if-nez v13, :cond_2

    .line 97
    const-string v14, "DMAccRootNodeHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "add error node "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v14, "DMAccRootNodeHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Register leaf io,delete at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v14, "/"

    move-object/from16 v0, p7

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, node:[Ljava/lang/String;
    array-length v14, v11

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    aget-object v12, v11, v14

    .line 104
    .local v12, nodeName:Ljava/lang/String;
    invoke-static {}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->values()[Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    move-result-object v5

    .local v5, arr$:[Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;
    array-length v10, v5

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_0

    aget-object v8, v5, v9

    .line 105
    .local v8, ht:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;
    invoke-virtual {v8}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 107
    const-string v14, "DMAccRootNodeHandler"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "register "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, p6

    move-object v3, v15

    move-object/from16 v4, v16

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/asus/dmlib/vdm/VdmTree;->addLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 109
    new-instance v7, Lcom/asus/cm/handler/DMAccSubNodeHandler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    move-object v14, v0

    array-length v15, v11

    const/16 v16, 0x2

    sub-int v15, v15, v16

    aget-object v15, v11, v15

    invoke-direct {v7, v14, v8, v15}, Lcom/asus/cm/handler/DMAccSubNodeHandler;-><init>(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;Ljava/lang/String;)V

    .line 110
    .local v7, dmTree:Lcom/asus/cm/handler/DMAccSubNodeHandler;
    move-object v0, v7

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/asus/cm/handler/DMAccSubNodeHandler;->registerHandler(Ljava/lang/String;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mDmTreeHandlerList:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    .end local v7           #dmTree:Lcom/asus/cm/handler/DMAccSubNodeHandler;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method public delete(Ljava/lang/String;)V
    .locals 4
    .parameter "pNodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 60
    const-string v1, "DMAccRootNodeHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v1, "./SyncML/DM/DMAcc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/handler/DMAccRootNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    const-string v2, "./SyncML/DM/DMAcc"

    const-string v3, "./DMAcc"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->deleteNode(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 66
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto :goto_0

    .line 70
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_0
    const-string v1, "DMAccRootNodeHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete error node "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
