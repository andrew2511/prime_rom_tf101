.class Lcom/android/server/LightsService$1;
.super Landroid/os/IHardwareService$Stub;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/class/leds/spotlight/brightness"


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/os/IHardwareService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashlightEnabled()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 146
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    const-string v3, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, fis:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 148
    .local v2, result:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_17

    .line 149
    const/16 v3, 0x30

    if-eq v2, v3, :cond_15

    const/4 v3, 0x1

    .line 152
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #result:I
    :goto_14
    return v3

    .restart local v1       #fis:Ljava/io/FileInputStream;
    .restart local v2       #result:I
    :cond_15
    move v3, v5

    .line 149
    goto :goto_14

    .line 150
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #result:I
    :catch_17
    move-exception v3

    move-object v0, v3

    .line 151
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LightsService"

    const-string v4, "getFlashlightEnabled failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v5

    .line 152
    goto :goto_14
.end method

.method public setFlashlightEnabled(Z)V
    .registers 7
    .parameter "on"

    .prologue
    .line 157
    iget-object v3, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.FLASHLIGHT"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/android/server/LightsService$1;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.HARDWARE_TEST"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_24

    .line 161
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires FLASHLIGHT or HARDWARE_TEST permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 164
    :cond_24
    :try_start_24
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/leds/spotlight/brightness"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 165
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x2

    new-array v0, v3, [B

    .line 166
    .local v0, bytes:[B
    const/4 v3, 0x0

    if-eqz p1, :cond_42

    const/16 v4, 0x31

    :goto_33
    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 167
    const/4 v3, 0x1

    const/16 v4, 0xa

    aput-byte v4, v0, v3

    .line 168
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 169
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_41} :catch_45

    .line 173
    .end local v0           #bytes:[B
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :goto_41
    return-void

    .line 166
    .restart local v0       #bytes:[B
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_42
    const/16 v4, 0x30

    goto :goto_33

    .line 170
    .end local v0           #bytes:[B
    .end local v2           #fos:Ljava/io/FileOutputStream;
    :catch_45
    move-exception v3

    move-object v1, v3

    .line 171
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LightsService"

    const-string v4, "setFlashlightEnabled failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_41
.end method
