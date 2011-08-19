.class final Lcom/asus/dmlib/mo/DMAcc$1;
.super Ljava/lang/Object;
.source "DMAcc.java"

# interfaces
.implements Lcom/asus/dmlib/tree/DMTreeDestoryObServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/dmlib/mo/DMAcc;->getInstances()Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 2

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/asus/dmlib/mo/DMAcc;->access$002(Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 91
    const-string v0, "DMAcc"

    const-string v1, "DMAcc destoried!!!"

    invoke-static {v0, v1}, Lcom/asus/dmlib/util/DMLog;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
