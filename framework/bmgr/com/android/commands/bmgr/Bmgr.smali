.class public final Lcom/android/commands/bmgr/Bmgr;
.super Ljava/lang/Object;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    }
.end annotation


# static fields
.field static final BMGR_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the Backup Manager.  Is the system running?"

.field static final TRANSPORT_NOT_RUNNING_ERR:Ljava/lang/String; = "Error: Could not access the backup transport.  Is the system running?"


# instance fields
.field private mArgs:[Ljava/lang/String;

.field mBmgr:Landroid/app/backup/IBackupManager;

.field private mNextArg:I

.field mRestore:Landroid/app/backup/IRestoreSession;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    return-void
.end method

.method private doBackup()V
    .registers 6

    .prologue
    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, isFull:Z
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, pkg:Ljava/lang/String;
    const-string v3, "-f"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 156
    const/4 v1, 0x1

    .line 157
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 160
    :cond_12
    if-eqz v2, :cond_1c

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 161
    :cond_1c
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 172
    :goto_1f
    return-void

    .line 167
    :cond_20
    :try_start_20
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_1f

    .line 168
    :catch_26
    move-exception v3

    move-object v0, v3

    .line 169
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method private doEnable()V
    .registers 7

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 126
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 141
    :goto_9
    return-void

    .line 131
    :cond_a
    :try_start_a
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 132
    .local v2, enable:Z
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 133
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Backup Manager now "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2f} :catch_30
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2f} :catch_36

    goto :goto_9

    .line 134
    .end local v2           #enable:Z
    :catch_30
    move-exception v3

    move-object v1, v3

    .line 135
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto :goto_9

    .line 137
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_36
    move-exception v3

    move-object v1, v3

    .line 138
    .local v1, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private doEnabled()V
    .registers 6

    .prologue
    .line 114
    :try_start_0
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    .line 115
    .local v1, isEnabled:Z
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup Manager currently "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/commands/bmgr/Bmgr;->enableToString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_22} :catch_23

    .line 121
    .end local v1           #isEnabled:Z
    :goto_22
    return-void

    .line 117
    :catch_23
    move-exception v2

    move-object v0, v2

    .line 118
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 119
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_22
.end method

.method private doList()V
    .registers 6

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, arg:Ljava/lang/String;
    const-string v2, "transports"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 214
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V

    .line 237
    :goto_f
    return-void

    .line 220
    :cond_10
    :try_start_10
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 221
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v2, :cond_39

    .line 222
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_25} :catch_26

    goto :goto_f

    .line 233
    :catch_26
    move-exception v2

    move-object v1, v2

    .line 234
    .local v1, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_f

    .line 226
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_39
    :try_start_39
    const-string v2, "sets"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 227
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListRestoreSets()V

    .line 232
    :cond_44
    :goto_44
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v2}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V

    goto :goto_f

    .line 228
    :cond_4a
    const-string v2, "transports"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 229
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doListTransports()V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_55} :catch_26

    goto :goto_44
.end method

.method private doListRestoreSets()V
    .registers 6

    .prologue
    .line 260
    :try_start_0
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 261
    .local v2, observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, v2}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    move-result v1

    .line 262
    .local v1, err:I
    if-eqz v1, :cond_15

    .line 263
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Unable to request restore sets"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 272
    .end local v1           #err:I
    .end local v2           #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :goto_14
    return-void

    .line 265
    .restart local v1       #err:I
    .restart local v2       #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :cond_15
    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 266
    iget-object v3, v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    invoke-direct {p0, v3}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_14

    .line 268
    .end local v1           #err:I
    .end local v2           #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :catch_1e
    move-exception v3

    move-object v0, v3

    .line 269
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 270
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the backup transport.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private doListTransports()V
    .registers 11

    .prologue
    .line 241
    :try_start_0
    iget-object v8, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, current:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->listAllTransports()[Ljava/lang/String;

    move-result-object v7

    .line 243
    .local v7, transports:[Ljava/lang/String;
    if-eqz v7, :cond_11

    array-length v8, v7

    if-nez v8, :cond_19

    .line 244
    :cond_11
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "No transports available."

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    .end local v1           #current:Ljava/lang/String;
    .end local v7           #transports:[Ljava/lang/String;
    :cond_18
    :goto_18
    return-void

    .line 248
    .restart local v1       #current:Ljava/lang/String;
    .restart local v7       #transports:[Ljava/lang/String;
    :cond_19
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1c
    if-ge v3, v4, :cond_18

    aget-object v6, v0, v3

    .line 249
    .local v6, t:Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    const-string v8, "  * "

    move-object v5, v8

    .line 250
    .local v5, pad:Ljava/lang/String;
    :goto_29
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 249
    .end local v5           #pad:Ljava/lang/String;
    :cond_42
    const-string v8, "    "
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_44} :catch_46

    move-object v5, v8

    goto :goto_29

    .line 252
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #current:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #t:Ljava/lang/String;
    .end local v7           #transports:[Ljava/lang/String;
    :catch_46
    move-exception v8

    move-object v2, v8

    .line 253
    .local v2, e:Landroid/os/RemoteException;
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v9, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_18
.end method

.method private doRestore()V
    .registers 7

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, arg:Ljava/lang/String;
    if-nez v0, :cond_a

    .line 329
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 347
    :goto_9
    return-void

    .line 333
    :cond_a
    const/16 v4, 0x2e

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_1d

    .line 335
    invoke-direct {p0, v0}, Lcom/android/commands/bmgr/Bmgr;->doRestorePackage(Ljava/lang/String;)V

    .line 346
    :goto_15
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "done"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 338
    :cond_1d
    const/16 v4, 0x10

    :try_start_1f
    invoke-static {v0, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    .line 339
    .local v2, token:J
    invoke-direct {p0, v2, v3}, Lcom/android/commands/bmgr/Bmgr;->doRestoreAll(J)V
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_15

    .line 340
    .end local v2           #token:J
    :catch_27
    move-exception v4

    move-object v1, v4

    .line 341
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto :goto_9
.end method

.method private doRestoreAll(J)V
    .registers 15
    .parameter "token"

    .prologue
    .line 375
    new-instance v6, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v6, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 378
    .local v6, observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    const/4 v1, 0x0

    .line 379
    .local v1, didRestore:Z
    :try_start_6
    iget-object v9, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v9

    iput-object v9, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 380
    iget-object v9, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v9, :cond_1c

    .line 381
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 420
    :goto_1b
    return-void

    .line 384
    :cond_1c
    const/4 v8, 0x0

    .line 385
    .local v8, sets:[Landroid/app/backup/RestoreSet;
    iget-object v9, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v9, v6}, Landroid/app/backup/IRestoreSession;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;)I

    move-result v3

    .line 386
    .local v3, err:I
    if-nez v3, :cond_5d

    .line 387
    invoke-virtual {v6}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 388
    iget-object v8, v6, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    .line 389
    if-eqz v8, :cond_5d

    .line 390
    move-object v0, v8

    .local v0, arr$:[Landroid/app/backup/RestoreSet;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2f
    if-ge v4, v5, :cond_5d

    aget-object v7, v0, v4

    .line 391
    .local v7, s:Landroid/app/backup/RestoreSet;
    iget-wide v9, v7, Landroid/app/backup/RestoreSet;->token:J

    cmp-long v9, v9, p1

    if-nez v9, :cond_8c

    .line 392
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Scheduling restore: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 393
    iget-object v9, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v9, p1, p2, v6}, Landroid/app/backup/IRestoreSession;->restoreAll(JLandroid/app/backup/IRestoreObserver;)I

    move-result v9

    if-nez v9, :cond_89

    const/4 v9, 0x1

    move v1, v9

    .line 399
    .end local v0           #arr$:[Landroid/app/backup/RestoreSet;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #s:Landroid/app/backup/RestoreSet;
    :cond_5d
    :goto_5d
    if-nez v1, :cond_6b

    .line 400
    if-eqz v8, :cond_64

    array-length v9, v8

    if-nez v9, :cond_8f

    .line 401
    :cond_64
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "No available restore sets; no restore performed"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    :cond_6b
    :goto_6b
    if-eqz v1, :cond_70

    .line 411
    invoke-virtual {v6}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 415
    :cond_70
    iget-object v9, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v9}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_75} :catch_76

    goto :goto_1b

    .line 416
    .end local v3           #err:I
    .end local v8           #sets:[Landroid/app/backup/RestoreSet;
    :catch_76
    move-exception v9

    move-object v2, v9

    .line 417
    .local v2, e:Landroid/os/RemoteException;
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v10, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1b

    .line 393
    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v0       #arr$:[Landroid/app/backup/RestoreSet;
    .restart local v3       #err:I
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #s:Landroid/app/backup/RestoreSet;
    .restart local v8       #sets:[Landroid/app/backup/RestoreSet;
    :cond_89
    const/4 v9, 0x0

    move v1, v9

    goto :goto_5d

    .line 390
    :cond_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 403
    .end local v0           #arr$:[Landroid/app/backup/RestoreSet;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #s:Landroid/app/backup/RestoreSet;
    :cond_8f
    :try_start_8f
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, "No matching restore set token.  Available sets:"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 404
    invoke-direct {p0, v8}, Lcom/android/commands/bmgr/Bmgr;->printRestoreSets([Landroid/app/backup/RestoreSet;)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_8f .. :try_end_99} :catch_76

    goto :goto_6b
.end method

.method private doRestorePackage(Ljava/lang/String;)V
    .registers 8
    .parameter "pkg"

    .prologue
    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/app/backup/IBackupManager;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    .line 352
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    if-nez v3, :cond_15

    .line 353
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 372
    :goto_14
    return-void

    .line 357
    :cond_15
    new-instance v2, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;

    invoke-direct {v2, p0}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;-><init>(Lcom/android/commands/bmgr/Bmgr;)V

    .line 358
    .local v2, observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3, p1, v2}, Landroid/app/backup/IRestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;)I

    move-result v1

    .line 359
    .local v1, err:I
    if-nez v1, :cond_3e

    .line 361
    invoke-virtual {v2}, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->waitForCompletion()V

    .line 367
    :goto_25
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mRestore:Landroid/app/backup/IRestoreSession;

    invoke-interface {v3}, Landroid/app/backup/IRestoreSession;->endRestoreSession()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_14

    .line 368
    .end local v1           #err:I
    .end local v2           #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :catch_2b
    move-exception v3

    move-object v0, v3

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 363
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #err:I
    .restart local v2       #observer:Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
    :cond_3e
    :try_start_3e
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to restore package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_56} :catch_2b

    goto :goto_25
.end method

.method private doRun()V
    .registers 4

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->backupNow()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 150
    :goto_5
    return-void

    .line 146
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 147
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5
.end method

.method private doTransport()V
    .registers 7

    .prologue
    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, which:Ljava/lang/String;
    if-nez v2, :cond_a

    .line 178
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 193
    .end local v2           #which:Ljava/lang/String;
    :goto_9
    return-void

    .line 182
    .restart local v2       #which:Ljava/lang/String;
    :cond_a
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v3, v2}, Landroid/app/backup/IBackupManager;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, old:Ljava/lang/String;
    if-nez v1, :cond_44

    .line 184
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown transport \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' specified; no changes made."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_9

    .line 189
    .end local v1           #old:Ljava/lang/String;
    .end local v2           #which:Ljava/lang/String;
    :catch_31
    move-exception v3

    move-object v0, v3

    .line 190
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 191
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 187
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #old:Ljava/lang/String;
    .restart local v2       #which:Ljava/lang/String;
    :cond_44
    :try_start_44
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Selected transport "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (formerly "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_6c} :catch_31

    goto :goto_9
.end method

.method private doWipe()V
    .registers 6

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->nextArg()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, pkg:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 198
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 209
    :goto_9
    return-void

    .line 203
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->clearBackupData(Ljava/lang/String;)V

    .line 204
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wiped backup data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_27} :catch_28

    goto :goto_9

    .line 205
    :catch_28
    move-exception v2

    move-object v0, v2

    .line 206
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 207
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private enableToString(Z)Ljava/lang/String;
    .registers 3
    .parameter "enabled"

    .prologue
    .line 109
    if-eqz p1, :cond_5

    const-string v0, "enabled"

    :goto_4
    return-object v0

    :cond_5
    const-string v0, "disabled"

    goto :goto_4
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .parameter "args"

    .prologue
    .line 40
    :try_start_0
    new-instance v1, Lcom/android/commands/bmgr/Bmgr;

    invoke-direct {v1}, Lcom/android/commands/bmgr/Bmgr;-><init>()V

    invoke-virtual {v1, p0}, Lcom/android/commands/bmgr/Bmgr;->run([Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 45
    :goto_8
    return-void

    .line 41
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 42
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "Exception caught:"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 423
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 424
    const/4 v1, 0x0

    .line 428
    :goto_8
    return-object v1

    .line 426
    :cond_9
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    aget-object v0, v1, v2

    .line 427
    .local v0, arg:Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    move-object v1, v0

    .line 428
    goto :goto_8
.end method

.method private printRestoreSets([Landroid/app/backup/RestoreSet;)V
    .registers 10
    .parameter "sets"

    .prologue
    .line 275
    if-eqz p1, :cond_5

    array-length v4, p1

    if-nez v4, :cond_d

    .line 276
    :cond_5
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "No restore sets"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 282
    :cond_c
    return-void

    .line 279
    :cond_d
    move-object v0, p1

    .local v0, arr$:[Landroid/app/backup/RestoreSet;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_10
    if-ge v1, v2, :cond_c

    aget-object v3, v0, v1

    .line 280
    .local v3, s:Landroid/app/backup/RestoreSet;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Landroid/app/backup/RestoreSet;->token:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Landroid/app/backup/RestoreSet;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_10
.end method

.method private static showUsage()V
    .registers 2

    .prologue
    .line 432
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "usage: bmgr [backup|restore|list|transport|run]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 433
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr backup PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 434
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enable BOOL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 435
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr enabled"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 436
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list transports"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr list sets"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 438
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr transport WHICH"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 439
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore TOKEN"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 440
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr restore PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 441
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr run"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 442
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "       bmgr wipe PACKAGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 443
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 444
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'backup\' command schedules a backup pass for the named package."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 445
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Note that the backup pass will effectively be a no-op if the package"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 446
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "does not actually have changed data to store."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 447
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 448
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'enable\' command enables or disables the entire backup mechanism."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "If the argument is \'true\' it will be enabled, otherwise it will be"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 450
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "disabled.  When disabled, neither backup or restore operations will"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 451
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "be performed."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 452
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 453
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'enabled\' command reports the current enabled/disabled state of"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 454
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "the backup mechanism."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 455
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 456
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'list transports\' command reports the names of the backup transports"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "currently available on the device.  These names can be passed as arguments"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 458
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "to the \'transport\' command.  The currently selected transport is indicated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 459
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "with a \'*\' character."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 460
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 461
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'list sets\' command reports the token and name of each restore set"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 462
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "available to the device via the current transport."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 463
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 464
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'transport\' command designates the named transport as the currently"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "active one.  This setting is persistent across reboots."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 466
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 467
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'restore\' command when given a restore token initiates a full-system"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 468
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "restore operation from the currently active transport.  It will deliver"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 469
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "the restore set designated by the TOKEN argument to each application"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 470
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "that had contributed data to that restore set."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 472
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'restore\' command when given a package name intiates a restore of"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 473
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "just that one package according to the restore set selection algorithm"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "used by the RestoreSession.restorePackage() method."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 476
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'run\' command causes any scheduled backup operation to be initiated"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "immediately, without the usual waiting period for batching together"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "data changes."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 479
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 480
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The \'wipe\' command causes all backed-up data for the given package to be"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "erased from the current transport\'s storage.  The next backup operation"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 482
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "that the given application performs will rewrite its entire data set."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 483
    return-void
.end method


# virtual methods
.method public run([Ljava/lang/String;)V
    .registers 6
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, validCommand:Z
    array-length v2, p1

    if-ge v2, v3, :cond_9

    .line 50
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    .line 106
    :goto_8
    return-void

    .line 54
    :cond_9
    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    .line 55
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr;->mBmgr:Landroid/app/backup/IBackupManager;

    if-nez v2, :cond_21

    .line 56
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Error: Could not access the Backup Manager.  Is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 60
    :cond_21
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr;->mArgs:[Ljava/lang/String;

    .line 61
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 62
    .local v0, op:Ljava/lang/String;
    iput v3, p0, Lcom/android/commands/bmgr/Bmgr;->mNextArg:I

    .line 64
    const-string v2, "enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 65
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnabled()V

    goto :goto_8

    .line 69
    :cond_34
    const-string v2, "enable"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 70
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doEnable()V

    goto :goto_8

    .line 74
    :cond_40
    const-string v2, "run"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 75
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRun()V

    goto :goto_8

    .line 79
    :cond_4c
    const-string v2, "backup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 80
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doBackup()V

    goto :goto_8

    .line 84
    :cond_58
    const-string v2, "list"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 85
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doList()V

    goto :goto_8

    .line 89
    :cond_64
    const-string v2, "restore"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 90
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doRestore()V

    goto :goto_8

    .line 94
    :cond_70
    const-string v2, "transport"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 95
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doTransport()V

    goto :goto_8

    .line 99
    :cond_7c
    const-string v2, "wipe"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 100
    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr;->doWipe()V

    goto :goto_8

    .line 104
    :cond_88
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Unknown command"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lcom/android/commands/bmgr/Bmgr;->showUsage()V

    goto/16 :goto_8
.end method
