.class Lcom/android/server/WifiService$Multicaster;
.super Lcom/android/server/WifiService$DeathRecipient;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Multicaster"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 10
    .parameter
    .parameter "tag"
    .parameter "binder"

    .prologue
    .line 1446
    iput-object p1, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    .line 1447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$DeathRecipient;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 1448
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 1451
    const-string v1, "WifiService"

    const-string v2, "Multicaster binderDied"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v1, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$4000(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 1453
    :try_start_e
    iget-object v2, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$4000(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1454
    .local v0, i:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    .line 1455
    iget-object v2, p0, Lcom/android/server/WifiService$Multicaster;->this$0:Lcom/android/server/WifiService;

    iget v3, p0, Lcom/android/server/WifiService$Multicaster;->mMode:I

    #calls: Lcom/android/server/WifiService;->removeMulticasterLocked(II)V
    invoke-static {v2, v0, v3}, Lcom/android/server/WifiService;->access$4100(Lcom/android/server/WifiService;II)V

    .line 1457
    :cond_22
    monitor-exit v1

    .line 1458
    return-void

    .line 1457
    .end local v0           #i:I
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_24

    throw v2
.end method

.method public getUid()I
    .registers 2

    .prologue
    .line 1465
    iget v0, p0, Lcom/android/server/WifiService$Multicaster;->mMode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multicaster{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiService$Multicaster;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiService$Multicaster;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
