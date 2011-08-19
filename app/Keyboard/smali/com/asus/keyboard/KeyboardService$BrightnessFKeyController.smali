.class Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;
.super Lcom/asus/keyboard/KeyboardService$FKeyController;
.source "KeyboardService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/keyboard/KeyboardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessFKeyController"
.end annotation


# instance fields
.field private mIncrementBacklight:I

.field final synthetic this$0:Lcom/asus/keyboard/KeyboardService;


# direct methods
.method public constructor <init>(Lcom/asus/keyboard/KeyboardService;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0, p1}, Lcom/asus/keyboard/KeyboardService$FKeyController;-><init>(Lcom/asus/keyboard/KeyboardService;)V

    .line 196
    iput-object p2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mContext:Landroid/content/Context;

    .line 197
    const/16 v0, 0x12

    iput v0, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mIncrementBacklight:I

    .line 198
    return-void
.end method

.method private getBrightness()I
    .locals 4

    .prologue
    .line 268
    const/16 v0, 0xff

    .line 270
    .local v0, brightness:I
    :try_start_0
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 275
    :goto_0
    return v0

    .line 272
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 273
    .local v1, ex:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBrightnessMode()I
    .locals 4

    .prologue
    .line 286
    const/4 v1, 0x0

    .line 288
    .local v1, mode:I
    :try_start_0
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 293
    :goto_0
    return v1

    .line 290
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 291
    .local v0, ex:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getLevel(I)I
    .locals 6
    .parameter "brightness"

    .prologue
    const/16 v5, 0x1e

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, level:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xc

    if-gt v0, v2, :cond_3

    .line 240
    if-ne p1, v5, :cond_1

    .line 241
    const/4 v1, 0x0

    .line 239
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const/16 v2, 0xff

    if-ne p1, v2, :cond_2

    .line 243
    const/16 v1, 0xc

    goto :goto_1

    .line 244
    :cond_2
    sub-int v2, p1, v5

    iget v3, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mIncrementBacklight:I

    mul-int/2addr v3, v0

    if-lt v2, v3, :cond_0

    sub-int v2, p1, v5

    iget v3, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mIncrementBacklight:I

    add-int/lit8 v4, v0, 0x1

    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    .line 246
    move v1, v0

    goto :goto_1

    .line 249
    :cond_3
    return v1
.end method

.method private setBrightness(I)V
    .locals 4
    .parameter "brightness"

    .prologue
    .line 253
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 258
    :try_start_0
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    .line 259
    .local v1, power:Landroid/os/IPowerManager;
    if-eqz v1, :cond_0

    .line 260
    invoke-interface {v1, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v1           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 263
    .local v0, ex:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setBrightnessMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getBrightnessMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    :cond_0
    return-void
.end method


# virtual methods
.method public process(I)V
    .locals 7
    .parameter "keyCode"

    .prologue
    const v6, 0x7f020003

    const/16 v5, 0xff

    const/16 v4, 0x1e

    const/4 v3, 0x0

    .line 201
    const/16 v2, 0xd8

    if-ne p1, v2, :cond_1

    .line 202
    invoke-direct {p0, v3}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->setBrightnessMode(I)V

    .line 204
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getBrightness()I

    move-result v2

    iget v3, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mIncrementBacklight:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-le v2, v5, :cond_0

    move v0, v5

    .line 206
    .local v0, brightness:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->setBrightness(I)V

    .line 208
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v2, v6}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    .line 209
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getBrightness()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getLevel(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/asus/keyboard/KeyboardService;->access$1002(Lcom/asus/keyboard/KeyboardService;I)I

    .line 210
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v2}, Lcom/asus/keyboard/KeyboardService;->access$1100(Lcom/asus/keyboard/KeyboardService;)V

    .line 235
    .end local v0           #brightness:I
    :goto_1
    return-void

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getBrightness()I

    move-result v2

    iget v3, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mIncrementBacklight:I

    add-int/2addr v2, v3

    move v0, v2

    goto :goto_0

    .line 211
    :cond_1
    const/16 v2, 0xd9

    if-ne p1, v2, :cond_3

    .line 212
    invoke-direct {p0, v3}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->setBrightnessMode(I)V

    .line 214
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getBrightness()I

    move-result v2

    iget v3, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mIncrementBacklight:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-ge v2, v4, :cond_2

    move v0, v4

    .line 216
    .restart local v0       #brightness:I
    :goto_2
    invoke-direct {p0, v0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->setBrightness(I)V

    .line 218
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v2, v6}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    .line 219
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getBrightness()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getLevel(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/asus/keyboard/KeyboardService;->access$1002(Lcom/asus/keyboard/KeyboardService;I)I

    .line 220
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v2}, Lcom/asus/keyboard/KeyboardService;->access$1100(Lcom/asus/keyboard/KeyboardService;)V

    goto :goto_1

    .line 214
    .end local v0           #brightness:I
    :cond_2
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getBrightness()I

    move-result v2

    iget v3, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->mIncrementBacklight:I

    sub-int/2addr v2, v3

    move v0, v2

    goto :goto_2

    .line 222
    :cond_3
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getBrightnessMode()I

    move-result v1

    .line 223
    .local v1, mode:I
    if-nez v1, :cond_4

    .line 224
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->setBrightnessMode(I)V

    .line 226
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const v3, 0x7f020002

    invoke-static {v2, v3}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    .line 233
    :goto_3
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    invoke-static {v2}, Lcom/asus/keyboard/KeyboardService;->access$1200(Lcom/asus/keyboard/KeyboardService;)V

    goto :goto_1

    .line 228
    :cond_4
    invoke-direct {p0, v3}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->setBrightnessMode(I)V

    .line 229
    invoke-direct {p0}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->getBrightness()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->setBrightness(I)V

    .line 231
    iget-object v2, p0, Lcom/asus/keyboard/KeyboardService$BrightnessFKeyController;->this$0:Lcom/asus/keyboard/KeyboardService;

    const v3, 0x7f020001

    invoke-static {v2, v3}, Lcom/asus/keyboard/KeyboardService;->access$902(Lcom/asus/keyboard/KeyboardService;I)I

    goto :goto_3
.end method
