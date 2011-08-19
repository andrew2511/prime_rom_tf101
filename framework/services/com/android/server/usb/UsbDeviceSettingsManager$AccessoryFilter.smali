.class Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
.super Ljava/lang/Object;
.source "UsbDeviceSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessoryFilter"
.end annotation


# instance fields
.field public final mManufacturer:Ljava/lang/String;

.field public final mModel:Ljava/lang/String;

.field public final mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbAccessory;)V
    .registers 3
    .parameter "accessory"

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 260
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 261
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 262
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "manufacturer"
    .parameter "model"
    .parameter "version"

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    .line 254
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    .line 255
    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    .registers 9
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, manufacturer:Ljava/lang/String;
    const/4 v3, 0x0

    .line 268
    .local v3, model:Ljava/lang/String;
    const/4 v6, 0x0

    .line 270
    .local v6, version:Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 271
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_8
    if-ge v1, v0, :cond_32

    .line 272
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, name:Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 275
    .local v5, value:Ljava/lang/String;
    const-string v7, "manufacturer"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 276
    move-object v2, v5

    .line 271
    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 277
    :cond_1e
    const-string v7, "model"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 278
    move-object v3, v5

    goto :goto_1b

    .line 279
    :cond_28
    const-string v7, "version"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 280
    move-object v6, v5

    goto :goto_1b

    .line 283
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_32
    new-instance v7, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    invoke-direct {v7, v2, v3, v6}, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9
    .parameter "obj"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 317
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v3, :cond_10

    :cond_e
    move v3, v5

    .line 332
    :goto_f
    return v3

    .line 320
    :cond_10
    instance-of v3, p1, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    if-eqz v3, :cond_3a

    .line 321
    move-object v0, p1

    check-cast v0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;

    move-object v2, v0

    .line 322
    .local v2, filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    move v3, v6

    goto :goto_f

    :cond_38
    move v3, v5

    goto :goto_f

    .line 326
    .end local v2           #filter:Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;
    :cond_3a
    instance-of v3, p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz v3, :cond_6a

    .line 327
    move-object v0, p1

    check-cast v0, Landroid/hardware/usb/UsbAccessory;

    move-object v1, v0

    .line 328
    .local v1, accessory:Landroid/hardware/usb/UsbAccessory;
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_68

    move v3, v6

    goto :goto_f

    :cond_68
    move v3, v5

    goto :goto_f

    .end local v1           #accessory:Landroid/hardware/usb/UsbAccessory;
    :cond_6a
    move v3, v5

    .line 332
    goto :goto_f
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-nez v0, :cond_13

    move v0, v2

    :goto_6
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-nez v1, :cond_1a

    move v1, v2

    :goto_b
    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-nez v1, :cond_21

    move v1, v2

    :goto_11
    xor-int/2addr v0, v1

    return v0

    :cond_13
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_1a
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_21
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_11
.end method

.method public matches(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 5
    .parameter "acc"

    .prologue
    const/4 v2, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v2

    .line 304
    :goto_12
    return v0

    .line 302
    :cond_13
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    move v0, v2

    goto :goto_12

    .line 303
    :cond_25
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_37

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    move v0, v2

    goto :goto_12

    .line 304
    :cond_37
    const/4 v0, 0x1

    goto :goto_12
.end method

.method public matches(Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;)Z
    .registers 5
    .parameter "f"

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    .line 311
    :goto_10
    return v0

    .line 309
    :cond_11
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p1, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    move v0, v2

    goto :goto_10

    .line 310
    :cond_21
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p1, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    move v0, v2

    goto :goto_10

    .line 311
    :cond_31
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessoryFilter[mManufacturer=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mModel=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mVersion=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 287
    const-string v0, "usb-accessory"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 289
    const-string v0, "manufacturer"

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mManufacturer:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 291
    :cond_11
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 292
    const-string v0, "model"

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mModel:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    :cond_1c
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 295
    const-string v0, "version"

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceSettingsManager$AccessoryFilter;->mVersion:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    :cond_27
    const-string v0, "usb-accessory"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    return-void
.end method
