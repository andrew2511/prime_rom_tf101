.class public Lcom/asus/cm/handler/WLANSubAddHandler;
.super Ljava/lang/Object;
.source "WLANSubAddHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeAddHandler;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "WLANSubAddHandler"

.field private static mWLANSubLeafIOHandler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/cm/handler/WLANSubLeafIOHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTree:Lcom/asus/dmlib/vdm/VdmTree;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 1
    .parameter "context"
    .parameter "tree"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/asus/cm/handler/WLANSubAddHandler;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/asus/cm/handler/WLANSubAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/cm/handler/WLANSubAddHandler;->mWLANSubLeafIOHandler:Ljava/util/ArrayList;

    .line 25
    return-void
.end method


# virtual methods
.method public add([BJJLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "data"
    .parameter "offset"
    .parameter "total"
    .parameter "format"
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 37
    const-string v3, "WLANSubAddHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add(), data="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    if-nez p1, :cond_3

    const-string v6, ""

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    :goto_0
    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", format="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nodeUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/asus/cm/util/WifiConfigHelper;->getNetworkCount()I

    move-result v1

    .line 43
    .local v1, netCount:I
    const-string v3, "/"

    invoke-virtual {p7, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p7, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, nodeName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 47
    .local v0, ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    const-string v3, "SSID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 48
    new-instance v0, Lcom/asus/cm/handler/WLANSubLeafIOHandler;

    .end local v0           #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    iget-object v3, p0, Lcom/asus/cm/handler/WLANSubAddHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;->SSID:Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-direct {v0, v3, v4, v1}, Lcom/asus/cm/handler/WLANSubLeafIOHandler;-><init>(Landroid/content/Context;Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;I)V

    .line 60
    .restart local v0       #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 61
    iget-object v3, p0, Lcom/asus/cm/handler/WLANSubAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v3, p7, v0}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 62
    iget-object v3, p0, Lcom/asus/cm/handler/WLANSubAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v3, p7, v7, v7, p1}, Lcom/asus/dmlib/vdm/VdmTree;->addLeafNode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 63
    if-eqz p1, :cond_1

    .line 64
    const/4 v3, 0x0

    array-length v4, p1

    invoke-virtual {v0, v3, p1, v4}, Lcom/asus/cm/handler/WLANSubLeafIOHandler;->write(I[BI)V

    .line 66
    :cond_1
    sget-object v3, Lcom/asus/cm/handler/WLANSubAddHandler;->mWLANSubLeafIOHandler:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_2
    return-void

    .end local v0           #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    .end local v1           #netCount:I
    .end local v2           #nodeName:Ljava/lang/String;
    :cond_3
    move-object v6, p1

    .line 37
    goto :goto_0

    .line 50
    .restart local v0       #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    .restart local v1       #netCount:I
    .restart local v2       #nodeName:Ljava/lang/String;
    :cond_4
    const-string v3, "NwMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 51
    new-instance v0, Lcom/asus/cm/handler/WLANSubLeafIOHandler;

    .end local v0           #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    iget-object v3, p0, Lcom/asus/cm/handler/WLANSubAddHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;->NwMode:Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-direct {v0, v3, v4, v1}, Lcom/asus/cm/handler/WLANSubLeafIOHandler;-><init>(Landroid/content/Context;Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;I)V

    .restart local v0       #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    goto :goto_1

    .line 53
    :cond_5
    const-string v3, "SecurityMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    new-instance v0, Lcom/asus/cm/handler/WLANSubLeafIOHandler;

    .end local v0           #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    iget-object v3, p0, Lcom/asus/cm/handler/WLANSubAddHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;->SecurityMode:Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-direct {v0, v3, v4, v1}, Lcom/asus/cm/handler/WLANSubLeafIOHandler;-><init>(Landroid/content/Context;Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;I)V

    .restart local v0       #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    goto :goto_1
.end method
