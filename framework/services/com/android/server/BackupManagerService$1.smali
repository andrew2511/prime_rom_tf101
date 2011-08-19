.class Lcom/android/server/BackupManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 818
    iput-object p1, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 822
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, action:Ljava/lang/String;
    const/4 v8, 0x0

    .line 824
    .local v8, replacing:Z
    const/4 v1, 0x0

    .line 825
    .local v1, added:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 826
    .local v3, extras:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 827
    .local v6, pkgList:[Ljava/lang/String;
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_57

    .line 829
    :cond_1c
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 830
    .local v9, uri:Landroid/net/Uri;
    if-nez v9, :cond_23

    .line 872
    .end local v9           #uri:Landroid/net/Uri;
    :cond_22
    :goto_22
    return-void

    .line 833
    .restart local v9       #uri:Landroid/net/Uri;
    :cond_23
    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    .line 834
    .local v7, pkgName:Ljava/lang/String;
    if-eqz v7, :cond_2e

    .line 835
    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    .end local v6           #pkgList:[Ljava/lang/String;
    aput-object v7, v6, v11

    .line 837
    .restart local v6       #pkgList:[Ljava/lang/String;
    :cond_2e
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 838
    const-string v10, "android.intent.extra.REPLACING"

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 846
    .end local v7           #pkgName:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :cond_3a
    :goto_3a
    if-eqz v6, :cond_22

    array-length v10, v6

    if-eqz v10, :cond_22

    .line 849
    if-eqz v1, :cond_82

    .line 850
    iget-object v10, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v10

    .line 851
    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    :try_start_47
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_49
    if-ge v4, v5, :cond_80

    aget-object v7, v2, v4

    .line 852
    .restart local v7       #pkgName:Ljava/lang/String;
    if-eqz v8, :cond_77

    .line 854
    iget-object v11, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/BackupManagerService;->updatePackageParticipantsLocked(Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_7d

    .line 851
    :goto_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 839
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_57
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_67

    .line 840
    const/4 v1, 0x1

    .line 841
    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_3a

    .line 842
    :cond_67
    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3a

    .line 843
    const/4 v1, 0x0

    .line 844
    const-string v10, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_3a

    .line 857
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #pkgName:Ljava/lang/String;
    :cond_77
    :try_start_77
    iget-object v11, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/BackupManagerService;->addPackageParticipantsLocked(Ljava/lang/String;)V

    goto :goto_54

    .line 860
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #pkgName:Ljava/lang/String;
    :catchall_7d
    move-exception v11

    monitor-exit v10
    :try_end_7f
    .catchall {:try_start_77 .. :try_end_7f} :catchall_7d

    throw v11

    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_80
    :try_start_80
    monitor-exit v10
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7d

    goto :goto_22

    .line 862
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_82
    if-nez v8, :cond_22

    .line 865
    iget-object v10, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    monitor-enter v10

    .line 866
    move-object v2, v6

    .restart local v2       #arr$:[Ljava/lang/String;
    :try_start_8a
    array-length v5, v2

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_8c
    if-ge v4, v5, :cond_98

    aget-object v7, v2, v4

    .line 867
    .restart local v7       #pkgName:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/BackupManagerService$1;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11, v7}, Lcom/android/server/BackupManagerService;->removePackageParticipantsLocked(Ljava/lang/String;)V

    .line 866
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 869
    .end local v7           #pkgName:Ljava/lang/String;
    :cond_98
    monitor-exit v10

    goto :goto_22

    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_9a
    move-exception v11

    monitor-exit v10
    :try_end_9c
    .catchall {:try_start_8a .. :try_end_9c} :catchall_9a

    throw v11
.end method
