.class public Lcom/asus/dmlib/mo/DMAcc;
.super Ljava/lang/Object;
.source "DMAcc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/dmlib/mo/DMAcc$Auth;,
        Lcom/asus/dmlib/mo/DMAcc$AuthPref;
    }
.end annotation


# static fields
.field public static final AUTH_PREF_BASIC:Ljava/lang/String; = "syncml:auth-basic"

.field public static final AUTH_PREF_MD5:Ljava/lang/String; = "syncml:auth-md5"

.field private static final DEFAULT_NONCE:Ljava/lang/String; = "12345"

.field private static final TAG:Ljava/lang/String; = "DMAcc"

.field private static mDMAccMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/asus/dmlib/mo/DMAcc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddrType:Lcom/asus/dmlib/tree/Leaf;

.field private mClient:Lcom/asus/dmlib/mo/DMAcc$Auth;

.field private mName:Lcom/asus/dmlib/tree/Leaf;

.field private mPath:Ljava/lang/String;

.field private mPort:Lcom/asus/dmlib/tree/Leaf;

.field private mServer:Lcom/asus/dmlib/mo/DMAcc$Auth;

.field private mServerAddr:Lcom/asus/dmlib/tree/Leaf;

.field private mServerID:Lcom/asus/dmlib/tree/Leaf;


# direct methods
.method private constructor <init>(Lcom/asus/dmlib/tree/DMTree;Ljava/lang/String;)V
    .locals 3
    .parameter "pTree"
    .parameter "path"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p2, p0, Lcom/asus/dmlib/mo/DMAcc;->mPath:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AppAddr/APPSRV/Addr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mServerAddr:Lcom/asus/dmlib/tree/Leaf;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AppAddr/APPSRV/Port/Port/PortNbr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mPort:Lcom/asus/dmlib/tree/Leaf;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AppAddr/APPSRV/AddrType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mAddrType:Lcom/asus/dmlib/tree/Leaf;

    .line 62
    new-instance v0, Lcom/asus/dmlib/mo/DMAcc$Auth;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/AppAuth/APPSRV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/asus/dmlib/mo/DMAcc$Auth;-><init>(Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/tree/DMTree;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mServer:Lcom/asus/dmlib/mo/DMAcc$Auth;

    .line 63
    new-instance v0, Lcom/asus/dmlib/mo/DMAcc$Auth;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/AppAuth/CLIENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/asus/dmlib/mo/DMAcc$Auth;-><init>(Lcom/asus/dmlib/mo/DMAcc;Lcom/asus/dmlib/tree/DMTree;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mClient:Lcom/asus/dmlib/mo/DMAcc$Auth;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mName:Lcom/asus/dmlib/tree/Leaf;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ServerID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/asus/dmlib/tree/DMTree;->getDMNode(Ljava/lang/String;)Lcom/asus/dmlib/tree/DMNode;

    move-result-object v0

    check-cast v0, Lcom/asus/dmlib/tree/Leaf;

    iput-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mServerID:Lcom/asus/dmlib/tree/Leaf;

    .line 67
    return-void
.end method

.method static synthetic access$002(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"

    .prologue
    .line 14
    sput-object p0, Lcom/asus/dmlib/mo/DMAcc;->mDMAccMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static getInstances()Ljava/util/HashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/asus/dmlib/mo/DMAcc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    sget-object v10, Lcom/asus/dmlib/mo/DMAcc;->mDMAccMap:Ljava/util/HashMap;

    if-nez v10, :cond_1

    .line 71
    const-string v4, "./DMAcc"

    .line 72
    .local v4, baseUri:Ljava/lang/String;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    sput-object v10, Lcom/asus/dmlib/mo/DMAcc;->mDMAccMap:Ljava/util/HashMap;

    .line 73
    invoke-static {}, Lcom/asus/dmlib/tree/DMTree;->getDMTree()Lcom/asus/dmlib/tree/DMTree;

    move-result-object v5

    .line 74
    .local v5, dMTree:Lcom/asus/dmlib/tree/DMTree;
    const/4 v2, 0x0

    .line 76
    .local v2, accounts:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5, v4}, Lcom/asus/dmlib/tree/DMTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 80
    :goto_0
    if-eqz v2, :cond_0

    .line 81
    move-object v3, v2

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v0, v3, v8

    .line 82
    .local v0, acc:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, accPath:Ljava/lang/String;
    new-instance v6, Lcom/asus/dmlib/mo/DMAcc;

    invoke-direct {v6, v5, v1}, Lcom/asus/dmlib/mo/DMAcc;-><init>(Lcom/asus/dmlib/tree/DMTree;Ljava/lang/String;)V

    .line 84
    .local v6, dmAcc:Lcom/asus/dmlib/mo/DMAcc;
    sget-object v10, Lcom/asus/dmlib/mo/DMAcc;->mDMAccMap:Ljava/util/HashMap;

    invoke-virtual {v10, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 77
    .end local v0           #acc:Ljava/lang/String;
    .end local v1           #accPath:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #dmAcc:Lcom/asus/dmlib/mo/DMAcc;
    .end local v8           #i$:I
    .end local v9           #len$:I
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 78
    .local v7, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v7}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    .end local v7           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_0
    new-instance v10, Lcom/asus/dmlib/mo/DMAcc$1;

    invoke-direct {v10}, Lcom/asus/dmlib/mo/DMAcc$1;-><init>()V

    invoke-virtual {v5, v10}, Lcom/asus/dmlib/tree/DMTree;->registerDestoryNotifier(Lcom/asus/dmlib/tree/DMTreeDestoryObServer;)V

    .line 96
    .end local v2           #accounts:[Ljava/lang/String;
    .end local v4           #baseUri:Ljava/lang/String;
    .end local v5           #dMTree:Lcom/asus/dmlib/tree/DMTree;
    :cond_1
    sget-object v10, Lcom/asus/dmlib/mo/DMAcc;->mDMAccMap:Ljava/util/HashMap;

    return-object v10
.end method

.method private readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;
    .locals 3
    .parameter "node"

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    const-string v1, "DMAcc"

    const-string v2, "No Such Node"

    invoke-static {v1, v2}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, ""

    .line 109
    :goto_0
    return-object v1

    .line 105
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/asus/dmlib/tree/Leaf;->onRead()Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 109
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public getAddrType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mAddrType:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientAuthLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mClient:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v0, v0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mAuthLevel:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientAuthPref()Ljava/lang/String;
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lcom/asus/dmlib/mo/DMAcc;->mClient:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v1, v1, Lcom/asus/dmlib/mo/DMAcc$Auth;->mPref:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v1}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, pref:Ljava/lang/String;
    const-string v1, "DMAcc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClientAuthPref(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "syncml:auth-md5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    const-string v1, "syncml:auth-md5"

    .line 178
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "syncml:auth-basic"

    goto :goto_0
.end method

.method public getClientAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mClient:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v0, v0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mType:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientNonce()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Base64encoded client nonce: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/dmlib/mo/DMAcc;->mClient:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v2, v2, Lcom/asus/dmlib/mo/DMAcc$Auth;->mNonce:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v2}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/asus/dmlib/mo/DMAcc;->mClient:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v1, v1, Lcom/asus/dmlib/mo/DMAcc$Auth;->mNonce:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v1}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/dmlib/util/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, retVal:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClientNonce(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;)V

    .line 168
    if-nez v0, :cond_0

    const-string v1, "12345"

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getClientPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mClient:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v0, v0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mPassword:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mClient:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v0, v0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mUserName:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mName:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNextDMServNonce()[B
    .locals 6

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, retVal:[B
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x412e847e00000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x40f86a0000000000L

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, nonceStr:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 202
    invoke-virtual {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->setServerNonce(Ljava/lang/String;)V

    .line 204
    return-object v1
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mPort:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mServerAddr:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerAuthLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mServer:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v0, v0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mAuthLevel:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerAuthPref()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/asus/dmlib/mo/DMAcc;->mServer:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v1, v1, Lcom/asus/dmlib/mo/DMAcc$Auth;->mPref:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v1}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, pref:Ljava/lang/String;
    const-string v1, "syncml:auth-md5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "syncml:auth-md5"

    .line 143
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "syncml:auth-basic"

    goto :goto_0
.end method

.method public getServerAuthType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mServer:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v0, v0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mType:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mServerID:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerNonce()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lcom/asus/dmlib/mo/DMAcc;->mServer:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v1, v1, Lcom/asus/dmlib/mo/DMAcc$Auth;->mNonce:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v1}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/dmlib/util/Base64;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, retVal:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "12345"

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getServerPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mServer:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v0, v0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mPassword:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/asus/dmlib/mo/DMAcc;->mServer:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v0, v0, Lcom/asus/dmlib/mo/DMAcc$Auth;->mUserName:Lcom/asus/dmlib/tree/Leaf;

    invoke-direct {p0, v0}, Lcom/asus/dmlib/mo/DMAcc;->readValue(Lcom/asus/dmlib/tree/Leaf;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setClientNonce(Ljava/lang/String;)V
    .locals 2
    .parameter "nonce"

    .prologue
    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/mo/DMAcc;->mClient:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v1, v1, Lcom/asus/dmlib/mo/DMAcc$Auth;->mNonce:Lcom/asus/dmlib/tree/Leaf;

    invoke-virtual {v1, p1}, Lcom/asus/dmlib/tree/Leaf;->onWrite(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 220
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 221
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setServerNonce(Ljava/lang/String;)V
    .locals 3
    .parameter "nonce"

    .prologue
    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/asus/dmlib/mo/DMAcc;->mServer:Lcom/asus/dmlib/mo/DMAcc$Auth;

    iget-object v1, v1, Lcom/asus/dmlib/mo/DMAcc$Auth;->mNonce:Lcom/asus/dmlib/tree/Leaf;

    invoke-static {p1}, Lcom/asus/dmlib/util/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/asus/dmlib/tree/Leaf;->onWrite(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 211
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 212
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 213
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
