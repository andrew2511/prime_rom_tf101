.class public Lcom/asus/dmlib/mo/DevDetail;
.super Ljava/lang/Object;
.source "DevDetail.java"

# interfaces
.implements Lcom/asus/dmlib/tree/DMTreeDestoryObServer;


# static fields
.field private static final TAG:Ljava/lang/String; = "DevDetail"

.field private static mDevDetail:Lcom/asus/dmlib/mo/DevDetail;


# instance fields
.field private mDevType:Lcom/asus/dmlib/tree/Leaf;

.field private mFwV:Lcom/asus/dmlib/tree/Leaf;

.field private mHwV:Lcom/asus/dmlib/tree/Leaf;

.field private mLrgObj:Lcom/asus/dmlib/tree/Leaf;

.field private mMaxDepth:Lcom/asus/dmlib/tree/Leaf;

.field private mMaxSegLen:Lcom/asus/dmlib/tree/Leaf;

.field private mMaxTotLen:Lcom/asus/dmlib/tree/Leaf;

.field private mOEM:Lcom/asus/dmlib/tree/Leaf;

.field private mSwV:Lcom/asus/dmlib/tree/Leaf;


# direct methods
.method private constructor <init>(Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;)V
    .locals 0
    .parameter "pSwV"
    .parameter "pOEM"
    .parameter "pLrgObj"
    .parameter "pHwV"
    .parameter "pFwV"
    .parameter "pDevType"
    .parameter "pMaxSegLen"
    .parameter "pMaxTotLen"
    .parameter "pMaxDepth"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/asus/dmlib/mo/DevDetail;->mSwV:Lcom/asus/dmlib/tree/Leaf;

    .line 37
    iput-object p2, p0, Lcom/asus/dmlib/mo/DevDetail;->mOEM:Lcom/asus/dmlib/tree/Leaf;

    .line 38
    iput-object p3, p0, Lcom/asus/dmlib/mo/DevDetail;->mLrgObj:Lcom/asus/dmlib/tree/Leaf;

    .line 39
    iput-object p4, p0, Lcom/asus/dmlib/mo/DevDetail;->mHwV:Lcom/asus/dmlib/tree/Leaf;

    .line 40
    iput-object p5, p0, Lcom/asus/dmlib/mo/DevDetail;->mFwV:Lcom/asus/dmlib/tree/Leaf;

    .line 41
    iput-object p6, p0, Lcom/asus/dmlib/mo/DevDetail;->mDevType:Lcom/asus/dmlib/tree/Leaf;

    .line 42
    iput-object p7, p0, Lcom/asus/dmlib/mo/DevDetail;->mMaxSegLen:Lcom/asus/dmlib/tree/Leaf;

    .line 43
    iput-object p8, p0, Lcom/asus/dmlib/mo/DevDetail;->mMaxTotLen:Lcom/asus/dmlib/tree/Leaf;

    .line 44
    iput-object p9, p0, Lcom/asus/dmlib/mo/DevDetail;->mMaxDepth:Lcom/asus/dmlib/tree/Leaf;

    .line 46
    return-void
.end method

.method public static getDevDetail()Lcom/asus/dmlib/mo/DevDetail;
    .locals 11

    .prologue
    .line 49
    sget-object v0, Lcom/asus/dmlib/mo/DevDetail;->mDevDetail:Lcom/asus/dmlib/mo/DevDetail;

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v10

    .line 51
    .local v10, dMTree:Lcom/asus/dmlib/tree/DMTree;
    const-string v0, "./DevDetail/SwV"

    invoke-virtual {v10, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/tree/Leaf;

    .line 52
    .local v1, pSwV:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevDetail/OEM"

    invoke-virtual {v10, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/tree/Leaf;

    .line 53
    .local v2, pOEM:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevDetail/LrgObj"

    invoke-virtual {v10, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/tree/Leaf;

    .line 54
    .local v3, pLrgObj:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevDetail/HwV"

    invoke-virtual {v10, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v4

    check-cast v4, Lcom/asus/dmlib/tree/Leaf;

    .line 55
    .local v4, pHwV:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevDetail/FwV"

    invoke-virtual {v10, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v5

    check-cast v5, Lcom/asus/dmlib/tree/Leaf;

    .line 56
    .local v5, pFwV:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevDetail/DevType"

    invoke-virtual {v10, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v6

    check-cast v6, Lcom/asus/dmlib/tree/Leaf;

    .line 57
    .local v6, pDevType:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevDetail/URI/MaxSegLen"

    invoke-virtual {v10, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v7

    check-cast v7, Lcom/asus/dmlib/tree/Leaf;

    .line 58
    .local v7, pMaxSegLen:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevDetail/URI/MaxTotLen"

    invoke-virtual {v10, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v8

    check-cast v8, Lcom/asus/dmlib/tree/Leaf;

    .line 59
    .local v8, pMaxTotLen:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevDetail/URI/MaxDepth"

    invoke-virtual {v10, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v9

    check-cast v9, Lcom/asus/dmlib/tree/Leaf;

    .line 61
    .local v9, pMaxDepth:Lcom/asus/dmlib/tree/Leaf;
    new-instance v0, Lcom/asus/dmlib/mo/DevDetail;

    invoke-direct/range {v0 .. v9}, Lcom/asus/dmlib/mo/DevDetail;-><init>(Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;)V

    sput-object v0, Lcom/asus/dmlib/mo/DevDetail;->mDevDetail:Lcom/asus/dmlib/mo/DevDetail;

    .line 64
    sget-object v0, Lcom/asus/dmlib/mo/DevDetail;->mDevDetail:Lcom/asus/dmlib/mo/DevDetail;

    invoke-virtual {v10, v0}, Lcom/asus/dmlib/tree/DMTree;->registerDestoryNotifier(Lcom/asus/dmlib/tree/DMTreeDestoryObServer;)V

    .line 66
    .end local v1           #pSwV:Lcom/asus/dmlib/tree/Leaf;
    .end local v2           #pOEM:Lcom/asus/dmlib/tree/Leaf;
    .end local v3           #pLrgObj:Lcom/asus/dmlib/tree/Leaf;
    .end local v4           #pHwV:Lcom/asus/dmlib/tree/Leaf;
    .end local v5           #pFwV:Lcom/asus/dmlib/tree/Leaf;
    .end local v6           #pDevType:Lcom/asus/dmlib/tree/Leaf;
    .end local v7           #pMaxSegLen:Lcom/asus/dmlib/tree/Leaf;
    .end local v8           #pMaxTotLen:Lcom/asus/dmlib/tree/Leaf;
    .end local v9           #pMaxDepth:Lcom/asus/dmlib/tree/Leaf;
    .end local v10           #dMTree:Lcom/asus/dmlib/tree/DMTree;
    :cond_0
    sget-object v0, Lcom/asus/dmlib/mo/DevDetail;->mDevDetail:Lcom/asus/dmlib/mo/DevDetail;

    return-object v0
.end method

.method private readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 76
    const-string v0, "DevDetail"

    const-string v1, "No Such Node"

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, ""

    .line 79
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/asus/dmlib/tree/Leaf;->onRead()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/dmlib/mo/DevDetail;->mDevDetail:Lcom/asus/dmlib/mo/DevDetail;

    .line 71
    const-string v0, "DevDetail"

    const-string v1, "DevDetail destoried!!!"

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public getDevType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevDetail;->mDevType:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevDetail;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFwV()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevDetail;->mFwV:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevDetail;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHwV()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevDetail;->mHwV:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevDetail;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLrgObj()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevDetail;->mLrgObj:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevDetail;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDepth()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevDetail;->mMaxDepth:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevDetail;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSegLen()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevDetail;->mMaxSegLen:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevDetail;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxTotLen()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevDetail;->mMaxTotLen:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevDetail;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOEM()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevDetail;->mOEM:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevDetail;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSwV()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevDetail;->mSwV:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevDetail;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
