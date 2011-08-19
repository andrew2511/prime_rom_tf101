.class public Lcom/asus/cm/util/DMHandlerHelperTelUs;
.super Lcom/asus/cm/util/DMHandlerHelperTMO;
.source "DMHandlerHelperTelUs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/asus/cm/util/DMHandlerHelperTMO;-><init>()V

    return-void
.end method

.method public static registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 3
    .parameter "DMService"
    .parameter "pTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/cm/exception/DMInvalidException;
        }
    .end annotation

    .prologue
    .line 13
    if-nez p0, :cond_0

    .line 14
    new-instance v1, Lcom/asus/cm/exception/DMInvalidException;

    const-string v2, "when call DMTmoTreeHandlerHelper.registerHandlers, agr DMService is null"

    invoke-direct {v1, v2}, Lcom/asus/cm/exception/DMInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    new-instance v1, Lcom/asus/cm/exception/DMInvalidException;

    const-string v2, "when call DMTmoTreeHandlerHelper.registerHandlers, agr pTree is null"

    invoke-direct {v1, v2}, Lcom/asus/cm/exception/DMInvalidException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_1
    sput-object p0, Lcom/asus/cm/util/DMHandlerHelperTelUs;->mDMSInst:Landroid/content/Context;

    .line 22
    sget-object v1, Lcom/asus/cm/util/DMHandlerHelperTelUs;->mDMSInst:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/asus/cm/util/DMHandlerHelperTelUs;->initDMHandlerHelper(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 24
    new-instance v0, Lcom/asus/cm/settings/MobileConnectionList;

    sget-object v1, Lcom/asus/cm/util/DMHandlerHelperTelUs;->mDMSInst:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/asus/cm/settings/MobileConnectionList;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, mcList:Lcom/asus/cm/settings/MobileConnectionList;
    invoke-static {p1, v0}, Lcom/asus/cm/util/DMHandlerHelperTelUs;->registerMMSCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/settings/MobileConnectionList;)V

    .line 43
    invoke-static {p1}, Lcom/asus/cm/util/DMHandlerHelperTelUs;->registerEmailPrefsCallback(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 57
    invoke-static {p1}, Lcom/asus/cm/util/DMHandlerHelperTelUs;->registerVersionCallback(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 62
    return-void
.end method
