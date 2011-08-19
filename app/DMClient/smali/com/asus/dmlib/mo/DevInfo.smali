.class public Lcom/asus/dmlib/mo/DevInfo;
.super Ljava/lang/Object;
.source "DevInfo.java"

# interfaces
.implements Lcom/asus/dmlib/tree/DMTreeDestoryObServer;


# static fields
.field private static final TAG:Ljava/lang/String; = "DevInfo"

.field private static mDevInfo:Lcom/asus/dmlib/mo/DevInfo;


# instance fields
.field private mDevId:Lcom/asus/dmlib/tree/Leaf;

.field private mDmV:Lcom/asus/dmlib/tree/Leaf;

.field private mImei:Ljava/lang/String;

.field private mLang:Lcom/asus/dmlib/tree/Leaf;

.field private mMan:Lcom/asus/dmlib/tree/Leaf;

.field private mMod:Lcom/asus/dmlib/tree/Leaf;


# direct methods
.method private constructor <init>(Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;)V
    .locals 3
    .parameter "pMod"
    .parameter "pMan"
    .parameter "pLang"
    .parameter "pDmV"
    .parameter "pDevId"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/asus/dmlib/mo/DevInfo;->mMod:Lcom/asus/dmlib/tree/Leaf;

    .line 30
    iput-object p2, p0, Lcom/asus/dmlib/mo/DevInfo;->mMan:Lcom/asus/dmlib/tree/Leaf;

    .line 31
    iput-object p3, p0, Lcom/asus/dmlib/mo/DevInfo;->mLang:Lcom/asus/dmlib/tree/Leaf;

    .line 32
    iput-object p4, p0, Lcom/asus/dmlib/mo/DevInfo;->mDmV:Lcom/asus/dmlib/tree/Leaf;

    .line 33
    iput-object p5, p0, Lcom/asus/dmlib/mo/DevInfo;->mDevId:Lcom/asus/dmlib/tree/Leaf;

    .line 34
    invoke-virtual {p0}, Lcom/asus/dmlib/mo/DevInfo;->getDevId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/asus/dmlib/mo/DevInfo;->getDevId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/dmlib/mo/DevInfo;->mImei:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/asus/dmlib/mo/DevInfo;
    .locals 7

    .prologue
    .line 38
    sget-object v0, Lcom/asus/dmlib/mo/DevInfo;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    if-nez v0, :cond_0

    .line 39
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v6

    .line 40
    .local v6, dMTree:Lcom/asus/dmlib/tree/DMTree;
    const-string v0, "./DevInfo/Mod"

    invoke-virtual {v6, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v1

    check-cast v1, Lcom/asus/dmlib/tree/Leaf;

    .line 41
    .local v1, pMod:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevInfo/Man"

    invoke-virtual {v6, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v2

    check-cast v2, Lcom/asus/dmlib/tree/Leaf;

    .line 42
    .local v2, pMan:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevInfo/Lang"

    invoke-virtual {v6, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v3

    check-cast v3, Lcom/asus/dmlib/tree/Leaf;

    .line 43
    .local v3, pLang:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevInfo/DmV"

    invoke-virtual {v6, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v4

    check-cast v4, Lcom/asus/dmlib/tree/Leaf;

    .line 44
    .local v4, pDmV:Lcom/asus/dmlib/tree/Leaf;
    const-string v0, "./DevInfo/DevId"

    invoke-virtual {v6, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v5

    check-cast v5, Lcom/asus/dmlib/tree/Leaf;

    .line 45
    .local v5, pDevId:Lcom/asus/dmlib/tree/Leaf;
    new-instance v0, Lcom/asus/dmlib/mo/DevInfo;

    invoke-direct/range {v0 .. v5}, Lcom/asus/dmlib/mo/DevInfo;-><init>(Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;Lcom/asus/dmlib/tree/Leaf;)V

    sput-object v0, Lcom/asus/dmlib/mo/DevInfo;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    .line 46
    sget-object v0, Lcom/asus/dmlib/mo/DevInfo;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    invoke-virtual {v6, v0}, Lcom/asus/dmlib/tree/DMTree;->registerDestoryNotifier(Lcom/asus/dmlib/tree/DMTreeDestoryObServer;)V

    .line 48
    .end local v1           #pMod:Lcom/asus/dmlib/tree/Leaf;
    .end local v2           #pMan:Lcom/asus/dmlib/tree/Leaf;
    .end local v3           #pLang:Lcom/asus/dmlib/tree/Leaf;
    .end local v4           #pDmV:Lcom/asus/dmlib/tree/Leaf;
    .end local v5           #pDevId:Lcom/asus/dmlib/tree/Leaf;
    .end local v6           #dMTree:Lcom/asus/dmlib/tree/DMTree;
    :cond_0
    sget-object v0, Lcom/asus/dmlib/mo/DevInfo;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    return-object v0
.end method

.method private readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;
    .locals 3
    .parameter "node"

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v1, "DevInfo"

    const-string v2, "No Such Node"

    invoke-static {v1, v2}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, ""

    .line 66
    :goto_0
    return-object v1

    .line 62
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/dmlib/tree/Leaf;->onRead()Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 66
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/dmlib/mo/DevInfo;->mDevInfo:Lcom/asus/dmlib/mo/DevInfo;

    .line 53
    const-string v0, "DevInfo"

    const-string v1, "DevInfo destoried!!!"

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public getDevId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevInfo;->mDevId:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevInfo;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDmV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevInfo;->mDmV:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevInfo;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevInfo;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevInfo;->mLang:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevInfo;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevInfo;->mMan:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevInfo;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/asus/dmlib/mo/DevInfo;->mMod:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DevInfo;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
