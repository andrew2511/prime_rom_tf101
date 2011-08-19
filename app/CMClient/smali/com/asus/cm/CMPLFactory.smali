.class public Lcom/asus/cm/CMPLFactory;
.super Ljava/lang/Object;
.source "CMPLFactory.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/PLFactory;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "pContext"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/asus/cm/CMPLFactory;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public getDownloadPkg()Lcom/asus/dmlib/vdm/PLDlPkg;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/asus/cm/CMDlPkg;

    iget-object v1, p0, Lcom/asus/cm/CMPLFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/asus/cm/CMDlPkg;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getLogger()Lcom/asus/dmlib/vdm/PLLogger;
    .locals 3

    .prologue
    .line 27
    new-instance v1, Lcom/asus/cm/util/CMLog;

    invoke-direct {v1}, Lcom/asus/cm/util/CMLog;-><init>()V

    .line 28
    .local v1, pLog:Lcom/asus/dmlib/vdm/PLLogger;
    iget-object v2, p0, Lcom/asus/cm/CMPLFactory;->mContext:Landroid/content/Context;

    instance-of v2, v2, Lcom/asus/cm/CMService;

    if-eqz v2, :cond_0

    .line 29
    iget-object p0, p0, Lcom/asus/cm/CMPLFactory;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/asus/cm/CMService;

    check-cast p0, Lcom/asus/cm/CMService;

    move-object v0, v1

    check-cast v0, Lcom/asus/cm/util/CMLog;

    move-object v2, v0

    iput-object v2, p0, Lcom/asus/cm/CMService;->mLogger:Lcom/asus/cm/util/CMLog;

    .line 31
    :cond_0
    return-object v1
.end method

.method public getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/asus/cm/CMRegistry;

    iget-object v1, p0, Lcom/asus/cm/CMPLFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/asus/cm/CMRegistry;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getStorage()Lcom/asus/dmlib/vdm/PLStorage;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/asus/cm/CMStorage;

    iget-object v1, p0, Lcom/asus/cm/CMPLFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/asus/cm/CMStorage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
