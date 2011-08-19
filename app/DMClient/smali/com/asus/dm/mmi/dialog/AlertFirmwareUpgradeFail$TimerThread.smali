.class Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;
.super Ljava/util/TimerTask;
.source "AlertFirmwareUpgradeFail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimerThread"
.end annotation


# instance fields
.field mDialog:Landroid/content/DialogInterface;

.field final synthetic this$0:Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;


# direct methods
.method public constructor <init>(Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter
    .parameter "pDialog"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;->this$0:Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;->mDialog:Landroid/content/DialogInterface;

    .line 47
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "TimerThread "

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/asus/dm/mmi/dialog/AlertFirmwareUpgradeFail$TimerThread;->mDialog:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->cancel()V

    .line 52
    return-void
.end method
