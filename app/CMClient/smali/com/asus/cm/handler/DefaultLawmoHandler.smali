.class public Lcom/asus/cm/handler/DefaultLawmoHandler;
.super Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;
.source "DefaultLawmoHandler.java"


# instance fields
.field protected mService:Lcom/asus/cm/CMService;


# direct methods
.method public constructor <init>(Lcom/asus/cm/CMService;)V
    .locals 0
    .parameter "pService"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/asus/dmlib/vdm/lawmo/LawmoHandler;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/asus/cm/handler/DefaultLawmoHandler;->mService:Lcom/asus/cm/CMService;

    .line 16
    return-void
.end method


# virtual methods
.method public factoryReset()Z
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/asus/cm/handler/DefaultLawmoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Lcom/asus/cm/CMService;->factoryReset()V

    .line 22
    const/4 v0, 0x1

    return v0
.end method

.method public fullyLock()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public partiallyLock()Z
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/asus/cm/handler/DefaultLawmoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Partially_Locked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setLawmoState(Lcom/asus/dmlib/vdm/lawmo/LawmoState;)V

    .line 34
    iget-object v0, p0, Lcom/asus/cm/handler/DefaultLawmoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Lcom/asus/cm/CMService;->showLockScreen()V

    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public unLock()Z
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/asus/cm/handler/DefaultLawmoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-static {v0}, Lcom/asus/cm/CMCRegistryManager;->getInstance(Landroid/content/Context;)Lcom/asus/cm/CMCRegistryManager;

    move-result-object v0

    sget-object v1, Lcom/asus/dmlib/vdm/lawmo/LawmoState;->Unlocked:Lcom/asus/dmlib/vdm/lawmo/LawmoState;

    invoke-virtual {v0, v1}, Lcom/asus/cm/CMCRegistryManager;->setLawmoState(Lcom/asus/dmlib/vdm/lawmo/LawmoState;)V

    .line 42
    iget-object v0, p0, Lcom/asus/cm/handler/DefaultLawmoHandler;->mService:Lcom/asus/cm/CMService;

    invoke-virtual {v0}, Lcom/asus/cm/CMService;->dismissLockScreen()V

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public wipe()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method
