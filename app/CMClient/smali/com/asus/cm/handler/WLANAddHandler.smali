.class public Lcom/asus/cm/handler/WLANAddHandler;
.super Ljava/lang/Object;
.source "WLANAddHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeAddHandler;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "WLANAddHandler"

.field private static mWLANSubAddHandler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/cm/handler/WLANSubAddHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static mWLANSubDelHandler:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/cm/handler/WLANSubDelHandler;",
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
    iput-object p1, p0, Lcom/asus/cm/handler/WLANAddHandler;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/asus/cm/handler/WLANAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/cm/handler/WLANAddHandler;->mWLANSubAddHandler:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/asus/cm/handler/WLANAddHandler;->mWLANSubDelHandler:Ljava/util/ArrayList;

    .line 26
    return-void
.end method


# virtual methods
.method public add([BJJLjava/lang/String;Ljava/lang/String;)V
    .locals 6
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
    .line 38
    const-string v2, "WLANAddHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add(), data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string v5, ""

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    :goto_0
    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodeUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Lcom/asus/cm/handler/WLANSubAddHandler;

    iget-object v2, p0, Lcom/asus/cm/handler/WLANAddHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/asus/cm/handler/WLANAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-direct {v0, v2, v3}, Lcom/asus/cm/handler/WLANSubAddHandler;-><init>(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 44
    .local v0, subAddHandler:Lcom/asus/cm/handler/WLANSubAddHandler;
    iget-object v2, p0, Lcom/asus/cm/handler/WLANAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v2, p7, v0}, Lcom/asus/dmlib/vdm/VdmTree;->registerAdd(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeAddHandler;)V

    .line 45
    sget-object v2, Lcom/asus/cm/handler/WLANAddHandler;->mWLANSubAddHandler:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/asus/cm/handler/WLANSubDelHandler;

    iget-object v2, p0, Lcom/asus/cm/handler/WLANAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-direct {v1, v2}, Lcom/asus/cm/handler/WLANSubDelHandler;-><init>(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 48
    .local v1, subDelHandler:Lcom/asus/cm/handler/WLANSubDelHandler;
    iget-object v2, p0, Lcom/asus/cm/handler/WLANAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v2, p7, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerDelete(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeDeleteHandler;)V

    .line 49
    sget-object v2, Lcom/asus/cm/handler/WLANAddHandler;->mWLANSubDelHandler:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v2, p0, Lcom/asus/cm/handler/WLANAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    const/4 v3, 0x0

    invoke-interface {v2, p7, v3}, Lcom/asus/dmlib/vdm/VdmTree;->addInteriorNode(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void

    .end local v0           #subAddHandler:Lcom/asus/cm/handler/WLANSubAddHandler;
    .end local v1           #subDelHandler:Lcom/asus/cm/handler/WLANSubDelHandler;
    :cond_0
    move-object v5, p1

    .line 38
    goto :goto_0
.end method
