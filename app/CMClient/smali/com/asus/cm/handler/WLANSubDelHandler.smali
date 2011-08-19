.class public Lcom/asus/cm/handler/WLANSubDelHandler;
.super Ljava/lang/Object;
.source "WLANSubDelHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeDeleteHandler;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "WLANSubDelHandler"


# instance fields
.field private mTree:Lcom/asus/dmlib/vdm/VdmTree;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 0
    .parameter "tree"

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/asus/cm/handler/WLANSubDelHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    .line 17
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .parameter "nodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 21
    const-string v0, "WLANSubDelHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete(), nodeUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method
