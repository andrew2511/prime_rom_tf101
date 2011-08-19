.class public Lcom/android/future/usb/UsbAccessory;
.super Ljava/lang/Object;
.source "UsbAccessory.java"


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mManufacturer:Ljava/lang/String;

.field private final mModel:Ljava/lang/String;

.field private final mSerial:Ljava/lang/String;

.field private final mUri:Ljava/lang/String;

.field private final mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .registers 3
    .parameter "accessory"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 99
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    .line 100
    :goto_5
    return v0

    .line 99
    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    .line 100
    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 105
    instance-of v2, p1, Lcom/android/future/usb/UsbAccessory;

    if-eqz v2, :cond_55

    .line 106
    move-object v0, p1

    check-cast v0, Lcom/android/future/usb/UsbAccessory;

    move-object v1, v0

    .line 107
    .local v1, accessory:Lcom/android/future/usb/UsbAccessory;
    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/future/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/future/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/future/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/future/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/future/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/future/usb/UsbAccessory;->getSerial()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/future/usb/UsbAccessory;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    const/4 v2, 0x1

    .line 114
    .end local v1           #accessory:Lcom/android/future/usb/UsbAccessory;
    :goto_52
    return v2

    .restart local v1       #accessory:Lcom/android/future/usb/UsbAccessory;
    :cond_53
    move v2, v4

    .line 107
    goto :goto_52

    .end local v1           #accessory:Lcom/android/future/usb/UsbAccessory;
    :cond_55
    move v2, v4

    .line 114
    goto :goto_52
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    if-nez v0, :cond_25

    move v0, v2

    :goto_6
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    if-nez v1, :cond_2c

    move v1, v2

    :goto_b
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    if-nez v1, :cond_33

    move v1, v2

    :goto_11
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_3a

    move v1, v2

    :goto_17
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    if-nez v1, :cond_41

    move v1, v2

    :goto_1d
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    if-nez v1, :cond_48

    move v1, v2

    :goto_23
    xor-int/2addr v0, v1

    return v0

    :cond_25
    iget-object v0, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_2c
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_33
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_3a
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_41
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1d

    :cond_48
    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_23
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbAccessory[mManufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSerial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/future/usb/UsbAccessory;->mSerial:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
