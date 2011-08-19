.class public Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;
.super Ljava/lang/Object;
.source "VdmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/VdmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DmAccConfiguration"
.end annotation


# instance fields
.field public activeAccountDMVersion:Lcom/asus/dmlib/vdm/VdmConfig$DmVersion;

.field public dm12root:Ljava/lang/String;

.field public isExclusive:Z

.field final synthetic this$0:Lcom/asus/dmlib/vdm/VdmConfig;

.field public updateInactiveDMAccount:Z


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/VdmConfig;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 394
    iput-object p1, p0, Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;->this$0:Lcom/asus/dmlib/vdm/VdmConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    sget-object v0, Lcom/asus/dmlib/vdm/VdmConfig$DmVersion;->DM_1_2:Lcom/asus/dmlib/vdm/VdmConfig$DmVersion;

    iput-object v0, p0, Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;->activeAccountDMVersion:Lcom/asus/dmlib/vdm/VdmConfig$DmVersion;

    .line 396
    const-string v0, "./DMAcc"

    iput-object v0, p0, Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;->dm12root:Ljava/lang/String;

    .line 397
    iput-boolean v1, p0, Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;->isExclusive:Z

    .line 398
    iput-boolean v1, p0, Lcom/asus/dmlib/vdm/VdmConfig$DmAccConfiguration;->updateInactiveDMAccount:Z

    .line 399
    return-void
.end method
