.class public final Lcom/android/settings/bluetooth/BluetoothFindNearby;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothFindNearby.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothFindNearby;->addPreferencesFromResource(I)V

    .line 32
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 67
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindNearby;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 1
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 57
    const/16 v0, 0xc

    if-ne p2, v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindNearby;->finish()V

    .line 61
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 1
    .parameter "btPreference"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothFindNearby;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 53
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 37
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothFindNearby;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothFindNearby;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 39
    .local v1, manager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothFindNearby;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 40
    .local v0, device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothFindNearby;->finish()V

    .line 47
    .end local v0           #device:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .end local v1           #manager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothFindNearby;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method
