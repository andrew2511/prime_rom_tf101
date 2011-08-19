.class public Lcom/android/commands/svc/PowerCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "PowerCommand.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    const-string v0, "power"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "usage: svc power stayon [true|false|usb|ac]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         Set the \'keep awake while plugged in\' setting.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 9
    .parameter "args"

    .prologue
    const/4 v6, 0x2

    .line 46
    array-length v4, p1

    if-lt v4, v6, :cond_7c

    .line 47
    const-string v4, "stayon"

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    array-length v4, p1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_7c

    .line 49
    const-string v4, "true"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 50
    const/4 v3, 0x3

    .line 63
    .local v3, val:I
    :goto_1e
    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 66
    .local v2, pm:Landroid/os/IPowerManager;
    :try_start_28
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 67
    .local v1, lock:Landroid/os/IBinder;
    const/16 v4, 0x1a

    const-string v5, "svc power"

    const/4 v6, 0x0

    invoke-interface {v2, v4, v1, v5, v6}, Landroid/os/IPowerManager;->acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 68
    invoke-interface {v2, v3}, Landroid/os/IPowerManager;->setStayOnSetting(I)V

    .line 69
    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IPowerManager;->releaseWakeLock(Landroid/os/IBinder;I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_3c} :catch_61

    .line 79
    .end local v1           #lock:Landroid/os/IBinder;
    .end local v2           #pm:Landroid/os/IPowerManager;
    .end local v3           #val:I
    :goto_3c
    return-void

    .line 53
    :cond_3d
    const-string v4, "false"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    .line 54
    const/4 v3, 0x0

    .restart local v3       #val:I
    goto :goto_1e

    .line 55
    .end local v3           #val:I
    :cond_49
    const-string v4, "usb"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 56
    const/4 v3, 0x2

    .restart local v3       #val:I
    goto :goto_1e

    .line 57
    .end local v3           #val:I
    :cond_55
    const-string v4, "ac"

    aget-object v5, p1, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 58
    const/4 v3, 0x1

    .restart local v3       #val:I
    goto :goto_1e

    .line 71
    .restart local v2       #pm:Landroid/os/IPowerManager;
    :catch_61
    move-exception v4

    move-object v0, v4

    .line 72
    .local v0, e:Landroid/os/RemoteException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Faild to set setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3c

    .line 78
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #pm:Landroid/os/IPowerManager;
    .end local v3           #val:I
    :cond_7c
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/commands/svc/PowerCommand;->longHelp()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    const-string v0, "Control the power manager"

    return-object v0
.end method
