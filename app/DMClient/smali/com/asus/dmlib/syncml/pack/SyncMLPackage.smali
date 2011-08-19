.class public abstract Lcom/asus/dmlib/syncml/pack/SyncMLPackage;
.super Ljava/lang/Object;
.source "SyncMLPackage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getStatusArray()[Lcom/asus/dmlib/syncml/message/management/Status;
.end method

.method public abstract getSyncML()Lcom/asus/dmlib/syncml/message/container/SyncML;
.end method
