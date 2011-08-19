.class public Lcom/asus/vibe2/Utils_FlashCheck;
.super Ljava/lang/Object;
.source "Utils_FlashCheck.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageInfoCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/asus/vibe2/Utils_FlashCheck;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/vibe2/Utils_FlashCheck;->mPackageInfoCache:Ljava/util/ArrayList;

    .line 35
    return-void
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .parameter "packageName"
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v2, p0, Lcom/asus/vibe2/Utils_FlashCheck;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 42
    .local v1, pluginContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 43
    .local v0, pluginCL:Ljava/lang/ClassLoader;
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method public static isFlashSupport(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    new-instance v0, Lcom/asus/vibe2/Utils_FlashCheck;

    invoke-direct {v0, p0}, Lcom/asus/vibe2/Utils_FlashCheck;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, tfp:Lcom/asus/vibe2/Utils_FlashCheck;
    invoke-virtual {v0}, Lcom/asus/vibe2/Utils_FlashCheck;->isFlashSupport()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public isFlashSupport()Z
    .locals 27

    .prologue
    .line 52
    const/16 v22, 0x0

    .line 53
    .local v22, support:Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v6, directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/vibe2/Utils_FlashCheck;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 55
    .local v19, pm:Landroid/content/pm/PackageManager;
    new-instance v23, Landroid/content/Intent;

    const-string v24, "android.webkit.PLUGIN"

    invoke-direct/range {v23 .. v24}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v24, 0x84

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 59
    .local v18, plugins:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v23, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v23, :cond_0

    const-string v23, "ASUS@Vibe"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "FlashCheck: Plugins\' count="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/vibe2/Utils_FlashCheck;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 63
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/vibe2/Utils_FlashCheck;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 65
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 68
    .local v11, info:Landroid/content/pm/ResolveInfo;
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    .line 69
    .local v20, serviceInfo:Landroid/content/pm/ServiceInfo;
    if-nez v20, :cond_2

    .line 70
    sget-boolean v24, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v24, :cond_1

    const-string v24, "ASUS@Vibe"

    const-string v25, "FlashCheck: Ignore bad plugin"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    .end local v20           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v24

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v24

    .line 77
    .restart local v11       #info:Landroid/content/pm/ResolveInfo;
    .restart local v20       #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_2
    :try_start_1
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x1040

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 84
    .local v16, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v16, :cond_1

    .line 89
    :try_start_2
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/lib"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, directory:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 95
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object v14, v0

    .line 96
    .local v14, permissions:[Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 99
    const/4 v13, 0x0

    .line 100
    .local v13, permissionOk:Z
    move-object v3, v14

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v12, :cond_3

    aget-object v15, v3, v10

    .line 101
    .local v15, permit:Ljava/lang/String;
    const-string v24, "android.webkit.permission.PLUGIN"

    move-object/from16 v0, v24

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 102
    const/4 v13, 0x1

    .line 106
    .end local v15           #permit:Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_1

    .line 111
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v21, v0

    .line 112
    .local v21, signatures:[Landroid/content/pm/Signature;
    if-eqz v21, :cond_1

    .line 118
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    if-nez v24, :cond_5

    .line 119
    const-string v24, "ASUS@Vibe"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FlashCheck: The plugin \'"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\' has no type defined"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 80
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #directory:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #permissionOk:Z
    .end local v14           #permissions:[Ljava/lang/String;
    .end local v16           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v21           #signatures:[Landroid/content/pm/Signature;
    :catch_0
    move-exception v24

    move-object/from16 v8, v24

    .line 81
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v24, "ASUS@Vibe"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FlashCheck: Can\'t find plugin: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 100
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v7       #directory:Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #permissionOk:Z
    .restart local v14       #permissions:[Ljava/lang/String;
    .restart local v15       #permit:Ljava/lang/String;
    .restart local v16       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 123
    .end local v15           #permit:Ljava/lang/String;
    .restart local v21       #signatures:[Landroid/content/pm/Signature;
    :cond_5
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v25, "type"

    invoke-virtual/range {v24 .. v25}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 124
    .local v17, pluginType:Ljava/lang/String;
    const-string v24, "native"

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_6

    .line 125
    const-string v24, "ASUS@Vibe"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FlashCheck: Unrecognized plugin type: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 131
    :cond_6
    :try_start_3
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/asus/vibe2/Utils_FlashCheck;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 133
    .local v5, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 135
    .local v4, classFound:Z
    if-nez v4, :cond_7

    .line 136
    const-string v24, "ASUS@Vibe"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FlashCheck: The plugin\'s class\' "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\' does not extend the appropriate class."

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 140
    .end local v4           #classFound:Z
    .end local v5           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v24

    move-object/from16 v8, v24

    .line 141
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v24, "ASUS@Vibe"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FlashCheck: Can\'t find plugin: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v24

    move-object/from16 v8, v24

    .line 144
    .local v8, e:Ljava/lang/ClassNotFoundException;
    const-string v24, "ASUS@Vibe"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FlashCheck: Can\'t find plugin\'s class: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 147
    .end local v8           #e:Ljava/lang/ClassNotFoundException;
    .restart local v4       #classFound:Z
    .restart local v5       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "com.adobe.flashplayer"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_8

    .line 148
    const/16 v22, 0x1

    .line 149
    :cond_8
    sget-boolean v24, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v24, :cond_1

    const-string v24, "ASUS@Vibe"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FlashCheck: support: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 151
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #classFound:Z
    .end local v5           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #directory:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    .end local v12           #len$:I
    .end local v13           #permissionOk:Z
    .end local v14           #permissions:[Ljava/lang/String;
    .end local v16           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v17           #pluginType:Ljava/lang/String;
    .end local v20           #serviceInfo:Landroid/content/pm/ServiceInfo;
    .end local v21           #signatures:[Landroid/content/pm/Signature;
    :cond_9
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 152
    return v22
.end method
