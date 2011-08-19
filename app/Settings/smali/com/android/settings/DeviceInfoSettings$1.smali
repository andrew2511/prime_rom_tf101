.class Lcom/android/settings/DeviceInfoSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceInfoSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 185
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 187
    .local v0, dockmode:I
    const-string v2, "android.intent.extra.DOCK_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, dockname:Ljava/lang/String;
    const-string v2, "DockManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dock State:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Dock Version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v1, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const-string v2, "com.asus.dock.action.VERSION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v3, "dock_version"

    invoke-static {v2, v3, v1}, Lcom/android/settings/DeviceInfoSettings;->access$000(Lcom/android/settings/DeviceInfoSettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    const-string v3, "dock_version"

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings$1;->this$0:Lcom/android/settings/DeviceInfoSettings;

    invoke-virtual {v4}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->access$000(Lcom/android/settings/DeviceInfoSettings;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
