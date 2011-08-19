.class public Lcom/android/systemui/usb/UsbResolverActivity;
.super Lcom/android/internal/app/ResolverActivity;
.source "UsbResolverActivity.java"


# instance fields
.field private mAccessory:Landroid/hardware/usb/UsbAccessory;

.field private mDevice:Landroid/hardware/usb/UsbDevice;

.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 52
    .local v9, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .line 53
    .local v10, targetParcelable:Landroid/os/Parcelable;
    instance-of v1, v10, Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 54
    const-string v1, "UsbResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target is not an intent: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbResolverActivity;->finish()V

    .line 85
    :goto_0
    return-void

    .line 58
    :cond_0
    move-object v0, v10

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0

    .line 59
    .local v3, target:Landroid/content/Intent;
    const-string v1, "rlist"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 60
    .local v6, rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040344

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 61
    .local v4, title:Ljava/lang/CharSequence;
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-super/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 64
    const v1, 0x1020214

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/UsbResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 65
    .local v8, alwaysUse:Landroid/widget/CheckBox;
    if-eqz v8, :cond_1

    .line 66
    iget-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-nez v1, :cond_2

    .line 67
    const v1, 0x7f070025

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 73
    :cond_1
    :goto_1
    const-string v1, "device"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_3

    .line 75
    new-instance v1, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v2, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbDevice;)V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto :goto_0

    .line 69
    :cond_2
    const v1, 0x7f070024

    invoke-virtual {v8, v1}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1

    .line 77
    :cond_3
    const-string v1, "accessory"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    iput-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-nez v1, :cond_4

    .line 79
    const-string v1, "UsbResolverActivity"

    const-string v2, "no device or accessory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbResolverActivity;->finish()V

    goto :goto_0

    .line 83
    :cond_4
    new-instance v1, Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    iget-object v2, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/usb/UsbDisconnectedReceiver;-><init>(Landroid/app/Activity;Landroid/hardware/usb/UsbAccessory;)V

    iput-object v1, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbResolverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 92
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity;->onDestroy()V

    .line 93
    return-void
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 6
    .parameter "ri"
    .parameter "intent"
    .parameter "alwaysCheck"

    .prologue
    .line 97
    :try_start_0
    const-string v4, "usb"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 98
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    .line 99
    .local v2, service:Landroid/hardware/usb/IUsbManager;
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 101
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    if-eqz v4, :cond_2

    .line 103
    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-interface {v2, v4, v3}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 105
    if-eqz p3, :cond_1

    .line 106
    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/android/systemui/usb/UsbResolverActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #service:Landroid/hardware/usb/IUsbManager;
    .end local v3           #uid:I
    :goto_1
    return-void

    .line 108
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #service:Landroid/hardware/usb/IUsbManager;
    .restart local v3       #uid:I
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 126
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #service:Landroid/hardware/usb/IUsbManager;
    .end local v3           #uid:I
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 127
    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "UsbResolverActivity"

    const-string v5, "onIntentSelected failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 110
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #service:Landroid/hardware/usb/IUsbManager;
    .restart local v3       #uid:I
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-interface {v2, v4, v3}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V

    .line 114
    if-eqz p3, :cond_3

    .line 115
    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/usb/UsbResolverActivity;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :catch_1
    move-exception v1

    .line 124
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "UsbResolverActivity"

    const-string v5, "startActivity failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
