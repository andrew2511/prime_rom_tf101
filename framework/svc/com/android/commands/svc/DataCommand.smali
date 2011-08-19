.class public Lcom/android/commands/svc/DataCommand;
.super Lcom/android/commands/svc/Svc$Command;
.source "DataCommand.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    const-string v0, "data"

    invoke-direct {p0, v0}, Lcom/android/commands/svc/Svc$Command;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public longHelp()Ljava/lang/String;
    .registers 3

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/commands/svc/DataCommand;->shortHelp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "usage: svc data [enable|disable]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         Turn mobile data on or off.\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "       svc data prefer\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "          Set mobile as the preferred data network\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 10
    .parameter "args"

    .prologue
    const/4 v7, 0x1

    .line 45
    const/4 v4, 0x0

    .line 46
    .local v4, validCommand:Z
    array-length v5, p1

    const/4 v6, 0x2

    if-lt v5, v6, :cond_84

    .line 47
    const/4 v2, 0x0

    .line 48
    .local v2, flag:Z
    const-string v5, "enable"

    aget-object v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 49
    const/4 v2, 0x1

    .line 50
    const/4 v4, 0x1

    .line 64
    :cond_13
    :goto_13
    if-eqz v4, :cond_84

    .line 65
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 68
    .local v3, phoneMgr:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_65

    .line 69
    :try_start_21
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_24} :catch_69

    .line 80
    .end local v2           #flag:Z
    .end local v3           #phoneMgr:Lcom/android/internal/telephony/ITelephony;
    :goto_24
    return-void

    .line 51
    .restart local v2       #flag:Z
    :cond_25
    const-string v5, "disable"

    aget-object v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 52
    const/4 v2, 0x0

    .line 53
    const/4 v4, 0x1

    goto :goto_13

    .line 54
    :cond_32
    const-string v5, "prefer"

    aget-object v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 55
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 58
    .local v0, connMgr:Landroid/net/IConnectivityManager;
    const/4 v5, 0x0

    :try_start_47
    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_24

    .line 59
    :catch_4b
    move-exception v1

    .line 60
    .local v1, e:Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to set preferred network: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_24

    .line 71
    .end local v0           #connMgr:Landroid/net/IConnectivityManager;
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v3       #phoneMgr:Lcom/android/internal/telephony/ITelephony;
    :cond_65
    :try_start_65
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_24

    .line 73
    :catch_69
    move-exception v5

    move-object v1, v5

    .line 74
    .restart local v1       #e:Landroid/os/RemoteException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mobile data operation failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_24

    .line 79
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #flag:Z
    .end local v3           #phoneMgr:Lcom/android/internal/telephony/ITelephony;
    :cond_84
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/android/commands/svc/DataCommand;->longHelp()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const-string v0, "Control mobile data connectivity"

    return-object v0
.end method
