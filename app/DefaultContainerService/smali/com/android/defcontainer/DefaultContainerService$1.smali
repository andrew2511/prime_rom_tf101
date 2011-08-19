.class Lcom/android/defcontainer/DefaultContainerService$1;
.super Lcom/android/internal/app/IMediaContainerService$Stub;
.source "DefaultContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/defcontainer/DefaultContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/defcontainer/DefaultContainerService;


# direct methods
.method constructor <init>(Lcom/android/defcontainer/DefaultContainerService;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-direct {p0}, Lcom/android/internal/app/IMediaContainerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateDirectorySize(Ljava/lang/String;)J
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-static {p1}, Lcom/android/defcontainer/MeasurementUtils;->measureDirectory(Ljava/lang/String;)J

    move-result-wide v1

    .line 173
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public checkFreeStorage(ZLandroid/net/Uri;)Z
    .locals 1
    .parameter "external"
    .parameter "fileUri"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-static {v0, p1, p2}, Lcom/android/defcontainer/DefaultContainerService;->access$300(Lcom/android/defcontainer/DefaultContainerService;ZLandroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public copyResource(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;)Z
    .locals 2
    .parameter "packageURI"
    .parameter "outStream"

    .prologue
    .line 104
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 105
    :cond_0
    const/4 v1, 0x0

    .line 109
    :goto_0
    return v1

    .line 108
    :cond_1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 109
    .local v0, autoOut:Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;
    iget-object v1, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-static {v1, p1, v0}, Lcom/android/defcontainer/DefaultContainerService;->access$100(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/io/FileOutputStream;)Z

    move-result v1

    goto :goto_0
.end method

.method public copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packageURI"
    .parameter "cid"
    .parameter "key"
    .parameter "resFileName"

    .prologue
    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/defcontainer/DefaultContainerService;->access$000(Lcom/android/defcontainer/DefaultContainerService;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMinimalPackageInfo(Landroid/net/Uri;I)Landroid/content/pm/PackageInfoLite;
    .locals 11
    .parameter "fileUri"
    .parameter "flags"

    .prologue
    const/4 v10, -0x2

    .line 121
    new-instance v4, Landroid/content/pm/PackageInfoLite;

    invoke-direct {v4}, Landroid/content/pm/PackageInfoLite;-><init>()V

    .line 122
    .local v4, ret:Landroid/content/pm/PackageInfoLite;
    if-nez p1, :cond_0

    .line 123
    const-string v7, "DefContainer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid package uri "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput v10, v4, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 151
    :goto_0
    return-object v4

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 128
    .local v5, scheme:Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v7, "file"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 129
    const-string v7, "DefContainer"

    const-string v8, "Falling back to installing on internal storage only"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v7, 0x1

    iput v7, v4, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v6, sourceFile:Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 137
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 138
    const/4 v7, 0x0

    invoke-static {v0, v7}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v3

    .line 141
    .local v3, pkg:Landroid/content/pm/PackageParser$PackageLite;
    const/4 v2, 0x0

    .line 142
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->gc()V

    .line 143
    if-nez v3, :cond_2

    .line 144
    const-string v7, "DefContainer"

    const-string v8, "Failed to parse package"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput v10, v4, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0

    .line 148
    :cond_2
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    iput-object v7, v4, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 149
    iget v7, v3, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    iput v7, v4, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 150
    iget-object v7, p0, Lcom/android/defcontainer/DefaultContainerService$1;->this$0:Lcom/android/defcontainer/DefaultContainerService;

    iget v8, v3, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    invoke-static {v7, v8, v0, p2}, Lcom/android/defcontainer/DefaultContainerService;->access$200(Lcom/android/defcontainer/DefaultContainerService;ILjava/lang/String;I)I

    move-result v7

    iput v7, v4, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_0
.end method

.method public getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    .locals 4
    .parameter "filename"

    .prologue
    .line 160
    :try_start_0
    invoke-static {p1}, Landroid/content/res/ObbScanner;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/io/IOException;
    const-string v1, "DefContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t get OBB info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x0

    goto :goto_0
.end method
