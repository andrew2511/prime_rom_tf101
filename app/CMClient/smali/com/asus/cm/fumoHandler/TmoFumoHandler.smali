.class public Lcom/asus/cm/fumoHandler/TmoFumoHandler;
.super Lcom/asus/cm/fumoHandler/DefaultFumoHandler;
.source "TmoFumoHandler.java"


# direct methods
.method public constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "pService"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/asus/cm/fumoHandler/DefaultFumoHandler;-><init>(Lcom/asus/cm/CMService;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected showConfirmDownload()Z
    .locals 1

    .prologue
    .line 15
    const-string v0, "tmobile update package comes."

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method protected showConfirmUpdate()Z
    .locals 2

    .prologue
    .line 23
    const-string v0, "TMO ==> create Notification"

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/asus/cm/fumoHandler/TmoFumoHandler;->mService:Lcom/asus/cm/CMService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/asus/cm/CMNotification;->createNotification(Landroid/content/Context;Z)V

    .line 25
    const/4 v0, 0x0

    return v0
.end method
