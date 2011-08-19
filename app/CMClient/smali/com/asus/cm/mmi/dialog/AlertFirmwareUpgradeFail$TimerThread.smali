.class Lcom/asus/cm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;
.super Ljava/util/TimerTask;
.source "AlertFirmwareUpgradeFail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/mmi/dialog/AlertFirmwareUpgradeFail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerThread"
.end annotation


# instance fields
.field mDialog:Landroid/content/DialogInterface;

.field final synthetic this$0:Lcom/asus/cm/mmi/dialog/AlertFirmwareUpgradeFail;


# direct methods
.method public constructor <init>(Lcom/asus/cm/mmi/dialog/AlertFirmwareUpgradeFail;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter
    .parameter "pDialog"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/asus/cm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;->this$0:Lcom/asus/cm/mmi/dialog/AlertFirmwareUpgradeFail;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/asus/cm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;->mDialog:Landroid/content/DialogInterface;

    .line 45
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    const-string v0, "TimerThread "

    invoke-static {p0, v0}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/asus/cm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->cancel()V

    .line 50
    return-void
.end method
