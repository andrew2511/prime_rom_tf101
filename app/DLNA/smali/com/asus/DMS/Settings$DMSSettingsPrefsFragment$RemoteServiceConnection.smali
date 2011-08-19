.class Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;


# direct methods
.method constructor <init>(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$RemoteServiceConnection;->this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .parameter "className"
    .parameter "boundService"

    .prologue
    const/4 v4, 0x1

    .line 427
    const-string v2, "DMSSettingsFT"

    const-string v3, "=====>> binded service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-static {p2}, Lcom/asus/DMS/ServiceCommunication$Stub;->asInterface(Landroid/os/IBinder;)Lcom/asus/DMS/ServiceCommunication;

    move-result-object v2

    invoke-static {v2}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->access$402(Lcom/asus/DMS/ServiceCommunication;)Lcom/asus/DMS/ServiceCommunication;

    .line 432
    :try_start_0
    invoke-static {}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->access$400()Lcom/asus/DMS/ServiceCommunication;

    move-result-object v2

    invoke-interface {v2}, Lcom/asus/DMS/ServiceCommunication;->IsDMSRunning()Z

    move-result v0

    .line 433
    .local v0, bRunning:Z
    if-ne v4, v0, :cond_0

    .line 435
    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$RemoteServiceConnection;->this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;

    invoke-static {v2}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->access$500(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 440
    :goto_0
    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$RemoteServiceConnection;->this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;

    invoke-static {v2}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->access$600(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)V

    .line 444
    .end local v0           #bRunning:Z
    :goto_1
    return-void

    .line 438
    .restart local v0       #bRunning:Z
    :cond_0
    iget-object v2, p0, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment$RemoteServiceConnection;->this$0:Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;

    invoke-static {v2}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->access$500(Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 441
    .end local v0           #bRunning:Z
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 442
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 448
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/asus/DMS/Settings$DMSSettingsPrefsFragment;->access$402(Lcom/asus/DMS/ServiceCommunication;)Lcom/asus/DMS/ServiceCommunication;

    .line 449
    return-void
.end method
