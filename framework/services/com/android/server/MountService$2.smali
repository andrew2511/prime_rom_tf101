.class Lcom/android/server/MountService$2;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .registers 2
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 622
    :try_start_0
    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v11}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v11

    const-string v12, "volume list"

    const/16 v13, 0x6e

    invoke-virtual {v11, v12, v13}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 624
    .local v9, vols:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_11
    if-ge v3, v4, :cond_49

    aget-object v10, v0, v3

    .line 625
    .local v10, volstr:Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 627
    .local v8, tok:[Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v5, v8, v11

    .line 628
    .local v5, path:Ljava/lang/String;
    const-string v7, "removed"

    .line 630
    .local v7, state:Ljava/lang/String;
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 631
    .local v6, st:I
    if-nez v6, :cond_35

    .line 632
    const-string v7, "removed"

    .line 650
    :goto_2b
    if-eqz v7, :cond_32

    .line 652
    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v5, v7}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 633
    :cond_35
    const/4 v11, 0x1

    if-ne v6, v11, :cond_3b

    .line 634
    const-string v7, "unmounted"

    goto :goto_2b

    .line 635
    :cond_3b
    const/4 v11, 0x4

    if-ne v6, v11, :cond_5f

    .line 636
    const-string v7, "mounted"

    .line 637
    const-string v11, "MountService"

    const-string v12, "Media already mounted on daemon connection"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_2b

    .line 655
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #st:I
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #tok:[Ljava/lang/String;
    .end local v9           #vols:[Ljava/lang/String;
    .end local v10           #volstr:Ljava/lang/String;
    :catch_48
    move-exception v11

    .line 661
    :cond_49
    :try_start_49
    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string v12, "ums"

    #calls: Lcom/android/server/MountService;->doGetShareMethodAvailable(Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;Ljava/lang/String;)Z

    move-result v1

    .line 662
    .local v1, avail:Z
    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const-string v12, "ums"

    #calls: Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
    invoke-static {v11, v12, v1}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;Ljava/lang/String;Z)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_58} :catch_7c

    .line 670
    .end local v1           #avail:Z
    :goto_58
    iget-object v11, p0, Lcom/android/server/MountService$2;->this$0:Lcom/android/server/MountService;

    const/4 v12, 0x1

    #setter for: Lcom/android/server/MountService;->mReady:Z
    invoke-static {v11, v12}, Lcom/android/server/MountService;->access$1702(Lcom/android/server/MountService;Z)Z

    .line 671
    return-void

    .line 638
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #path:Ljava/lang/String;
    .restart local v6       #st:I
    .restart local v7       #state:Ljava/lang/String;
    .restart local v8       #tok:[Ljava/lang/String;
    .restart local v9       #vols:[Ljava/lang/String;
    .restart local v10       #volstr:Ljava/lang/String;
    :cond_5f
    const/4 v11, 0x7

    if-ne v6, v11, :cond_6c

    .line 639
    :try_start_62
    const-string v7, "shared"

    .line 640
    const-string v11, "MountService"

    const-string v12, "Media shared on daemon connection"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 641
    :cond_6c
    const/4 v11, 0x2

    if-ne v6, v11, :cond_72

    .line 643
    const-string v7, "unmounted"

    goto :goto_2b

    .line 646
    :cond_72
    const-string v11, "MountService"

    const-string v12, "Error processing initial volume state"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v7, "removed"
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7b} :catch_48

    goto :goto_2b

    .line 663
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #path:Ljava/lang/String;
    .end local v6           #st:I
    .end local v7           #state:Ljava/lang/String;
    .end local v8           #tok:[Ljava/lang/String;
    .end local v9           #vols:[Ljava/lang/String;
    .end local v10           #volstr:Ljava/lang/String;
    :catch_7c
    move-exception v11

    move-object v2, v11

    .line 664
    .local v2, ex:Ljava/lang/Exception;
    const-string v11, "MountService"

    const-string v12, "Failed to get share availability"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method
