.class Lcom/android/server/PackageManagerService$InstallParams;
.super Lcom/android/server/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field flags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

.field private mRet:I

.field final observer:Landroid/content/pm/IPackageInstallObserver;

.field final packageURI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .registers 6
    .parameter
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 4935
    iput-object p1, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/PackageManagerService;)V

    .line 4936
    iput-object p2, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    .line 4937
    iput p4, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 4938
    iput-object p3, p0, Lcom/android/server/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    .line 4939
    iput-object p5, p0, Lcom/android/server/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 4940
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I
    .registers 11
    .parameter "pkgLite"
    .parameter "flags"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4943
    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 4944
    .local v2, packageName:Ljava/lang/String;
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 4945
    .local v0, installLocation:I
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_35

    move v1, v6

    .line 4946
    .local v1, onSd:Z
    :goto_b
    iget-object v4, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 4947
    :try_start_10
    iget-object v5, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 4948
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_47

    .line 4949
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_58

    .line 4951
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3b

    .line 4952
    if-eqz v1, :cond_38

    .line 4953
    const-string v5, "PackageManager"

    const-string v6, "Cannot install update to system app on sdcard"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4954
    const/4 v5, -0x3

    monitor-exit v4

    move v4, v5

    .line 4987
    :goto_34
    return v4

    .line 4945
    .end local v1           #onSd:Z
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_35
    const/4 v4, 0x0

    move v1, v4

    goto :goto_b

    .line 4956
    .restart local v1       #onSd:Z
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_38
    monitor-exit v4

    move v4, v6

    goto :goto_34

    .line 4958
    :cond_3b
    if-eqz v1, :cond_40

    .line 4960
    monitor-exit v4

    move v4, v7

    goto :goto_34

    .line 4963
    :cond_40
    if-ne v0, v6, :cond_45

    .line 4965
    monitor-exit v4

    move v4, v6

    goto :goto_34

    .line 4966
    :cond_45
    if-ne v0, v7, :cond_4c

    .line 4981
    :cond_47
    monitor-exit v4

    .line 4984
    if-eqz v1, :cond_5f

    move v4, v7

    .line 4985
    goto :goto_34

    .line 4970
    :cond_4c
    #calls: Lcom/android/server/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v3}, Lcom/android/server/PackageManagerService;->access$2300(Landroid/content/pm/PackageParser$Package;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 4971
    monitor-exit v4

    move v4, v7

    goto :goto_34

    .line 4973
    :cond_55
    monitor-exit v4

    move v4, v6

    goto :goto_34

    .line 4978
    :cond_58
    const/4 v5, -0x4

    monitor-exit v4

    move v4, v5

    goto :goto_34

    .line 4981
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_5c
    move-exception v5

    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_10 .. :try_end_5e} :catchall_5c

    throw v5

    .line 4987
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_5f
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_34
.end method


# virtual methods
.method handleReturnCode()V
    .registers 4

    .prologue
    .line 5064
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    if-eqz v0, :cond_d

    .line 5065
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    #calls: Lcom/android/server/PackageManagerService;->processPendingInstall(Lcom/android/server/PackageManagerService$InstallArgs;I)V
    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService;->access$2500(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;I)V

    .line 5067
    :cond_d
    return-void
.end method

.method handleServiceError()V
    .registers 2

    .prologue
    .line 5071
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    #calls: Lcom/android/server/PackageManagerService;->createInstallArgs(Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;
    invoke-static {v0, p0}, Lcom/android/server/PackageManagerService;->access$2400(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 5072
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    .line 5073
    return-void
.end method

.method public handleStartCopy()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x1

    .line 4997
    const/4 v5, 0x1

    .line 4998
    .local v5, ret:I
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3e

    move v0, v10

    .line 4999
    .local v0, fwdLocked:Z
    :goto_a
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_40

    move v3, v10

    .line 5000
    .local v3, onSd:Z
    :goto_11
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_42

    move v2, v10

    .line 5001
    .local v2, onInt:Z
    :goto_18
    if-eqz v2, :cond_44

    if-eqz v3, :cond_44

    .line 5003
    const-string v6, "PackageManager"

    const-string v7, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    const/16 v5, -0x13

    .line 5050
    :cond_25
    :goto_25
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    #calls: Lcom/android/server/PackageManagerService;->createInstallArgs(Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;
    invoke-static {v6, p0}, Lcom/android/server/PackageManagerService;->access$2400(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 5051
    if-ne v5, v10, :cond_3b

    .line 5054
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget-object v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v7}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v7

    invoke-virtual {v6, v7, v10}, Lcom/android/server/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v5

    .line 5056
    :cond_3b
    iput v5, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    .line 5057
    return-void

    .end local v0           #fwdLocked:Z
    .end local v2           #onInt:Z
    .end local v3           #onSd:Z
    :cond_3e
    move v0, v7

    .line 4998
    goto :goto_a

    .restart local v0       #fwdLocked:Z
    :cond_40
    move v3, v7

    .line 4999
    goto :goto_11

    .restart local v3       #onSd:Z
    :cond_42
    move v2, v7

    .line 5000
    goto :goto_18

    .line 5005
    .restart local v2       #onInt:Z
    :cond_44
    if-eqz v0, :cond_52

    if-eqz v3, :cond_52

    .line 5007
    const-string v6, "PackageManager"

    const-string v7, "Cannot install fwd locked apps on sdcard"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5008
    const/16 v5, -0x13

    goto :goto_25

    .line 5013
    :cond_52
    :try_start_52
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    const-string v7, "com.android.defcontainer"

    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 5015
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v6}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-interface {v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Landroid/net/Uri;I)Landroid/content/pm/PackageInfoLite;
    :try_end_6b
    .catchall {:try_start_52 .. :try_end_6b} :catchall_7d

    move-result-object v4

    .line 5017
    .local v4, pkgLite:Landroid/content/pm/PackageInfoLite;
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v10}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 5020
    iget v1, v4, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 5021
    .local v1, loc:I
    const/4 v6, -0x3

    if-ne v1, v6, :cond_88

    .line 5022
    const/16 v5, -0x13

    goto :goto_25

    .line 5017
    .end local v1           #loc:I
    .end local v4           #pkgLite:Landroid/content/pm/PackageInfoLite;
    :catchall_7d
    move-exception v6

    iget-object v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    throw v6

    .line 5023
    .restart local v1       #loc:I
    .restart local v4       #pkgLite:Landroid/content/pm/PackageInfoLite;
    :cond_88
    const/4 v6, -0x4

    if-ne v1, v6, :cond_8d

    .line 5024
    const/4 v5, -0x1

    goto :goto_25

    .line 5025
    :cond_8d
    const/4 v6, -0x1

    if-ne v1, v6, :cond_92

    .line 5026
    const/4 v5, -0x4

    goto :goto_25

    .line 5027
    :cond_92
    const/4 v6, -0x2

    if-ne v1, v6, :cond_97

    .line 5028
    const/4 v5, -0x2

    goto :goto_25

    .line 5029
    :cond_97
    const/4 v6, -0x5

    if-ne v1, v6, :cond_9d

    .line 5030
    const/16 v5, -0x14

    goto :goto_25

    .line 5033
    :cond_9d
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-direct {p0, v4, v6}, Lcom/android/server/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I

    move-result v1

    .line 5034
    if-nez v3, :cond_25

    if-nez v2, :cond_25

    .line 5036
    const/4 v6, 0x2

    if-ne v1, v6, :cond_b8

    .line 5038
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 5039
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, -0x11

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_25

    .line 5043
    :cond_b8
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 5044
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, -0x9

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    goto/16 :goto_25
.end method
