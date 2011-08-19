.class public Lcom/android/browser/FlashStateHandler;
.super Ljava/lang/Object;
.source "FlashStateHandler.java"


# static fields
.field private static mActivity:Landroid/app/Activity;

.field private static mAlertDialog:Landroid/app/AlertDialog;

.field private static mNOTShowFlashAlert:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultSKU:Ljava/lang/String;

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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/FlashStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 43
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/browser/FlashStateHandler;->mNOTShowFlashAlert:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/FlashStateHandler;->mDefaultSKU:Ljava/lang/String;

    .line 46
    sput-object p1, Lcom/android/browser/FlashStateHandler;->mActivity:Landroid/app/Activity;

    .line 47
    iput-object p1, p0, Lcom/android/browser/FlashStateHandler;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/FlashStateHandler;->mPackageInfoCache:Ljava/util/ArrayList;

    .line 49
    iget-object v0, p0, Lcom/android/browser/FlashStateHandler;->mDefaultSKU:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/android/browser/FlashStateHandler;->getSKUValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/FlashStateHandler;->mDefaultSKU:Ljava/lang/String;

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/FlashStateHandler;->doReadSharePrefData()V

    .line 52
    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    sput-boolean p0, Lcom/android/browser/FlashStateHandler;->mNOTShowFlashAlert:Z

    return p0
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/browser/FlashStateHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/browser/FlashStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private doReadSharePrefData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    sget-object v1, Lcom/android/browser/FlashStateHandler;->mActivity:Landroid/app/Activity;

    const-string v2, "com.android.browser_flashinstalled"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "ShowNoFlashAlert"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/browser/FlashStateHandler;->mNOTShowFlashAlert:Z

    .line 86
    return-void
.end method

.method private doSaveSharePrefData()V
    .locals 5

    .prologue
    .line 89
    sget-object v2, Lcom/android/browser/FlashStateHandler;->mActivity:Landroid/app/Activity;

    const-string v3, "com.android.browser_flashinstalled"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 90
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 91
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ShowNoFlashAlert"

    sget-boolean v3, Lcom/android/browser/FlashStateHandler;->mNOTShowFlashAlert:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
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
    .line 97
    iget-object v2, p0, Lcom/android/browser/FlashStateHandler;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 100
    .local v1, pluginContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 101
    .local v0, pluginCL:Ljava/lang/ClassLoader;
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method

.method private getSKUValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, SKUvalue:Ljava/lang/String;
    const-string v1, "0"

    .line 74
    .local v1, UADefaultValue:Ljava/lang/String;
    const-string v2, "ro.product.name"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v2, "CN_epad"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 76
    const-string v1, "1"

    .line 79
    :goto_0
    return-object v1

    .line 78
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public static showInstallrAlert(ZLandroid/content/Intent;)V
    .locals 6
    .parameter "closeActivity"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 114
    sget-object v3, Lcom/android/browser/FlashStateHandler;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 115
    sget-object v3, Lcom/android/browser/FlashStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 116
    sget-object v3, Lcom/android/browser/FlashStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    sget-object v3, Lcom/android/browser/FlashStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 119
    :cond_0
    sput-object v5, Lcom/android/browser/FlashStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 121
    :cond_1
    sget-object v3, Lcom/android/browser/FlashStateHandler;->mActivity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 122
    .local v1, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f040012

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, textEntryView:Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v3, Lcom/android/browser/FlashStateHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090003

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 125
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 126
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 127
    const v3, 0x104000a

    new-instance v4, Lcom/android/browser/FlashStateHandler$1;

    invoke-direct {v4, p0, v2, p1}, Lcom/android/browser/FlashStateHandler$1;-><init>(ZLandroid/view/View;Landroid/content/Intent;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 145
    const/high16 v3, 0x104

    new-instance v4, Lcom/android/browser/FlashStateHandler$2;

    invoke-direct {v4, v2}, Lcom/android/browser/FlashStateHandler$2;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/android/browser/FlashStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 160
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #factory:Landroid/view/LayoutInflater;
    .end local v2           #textEntryView:Landroid/view/View;
    :cond_2
    return-void
.end method


# virtual methods
.method public getNoShowFlashDialog()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/browser/FlashStateHandler;->mNOTShowFlashAlert:Z

    return v0
.end method

.method public isFlashSupport()Z
    .locals 28

    .prologue
    .line 169
    const/16 v22, 0x0

    .line 170
    .local v22, support:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/FlashStateHandler;->mDefaultSKU:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "1"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v24

    if-nez v24, :cond_0

    .line 171
    const/16 v22, 0x1

    move/from16 v23, v22

    .line 273
    .end local v22           #support:Z
    .local v23, support:I
    :goto_0
    return v23

    .line 174
    .end local v23           #support:I
    .restart local v22       #support:Z
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v6, directories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/FlashStateHandler;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 176
    .local v19, pm:Landroid/content/pm/PackageManager;
    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.webkit.PLUGIN"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v25, 0x84

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v18

    .line 181
    .local v18, plugins:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/FlashStateHandler;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 184
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/FlashStateHandler;->mPackageInfoCache:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 186
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 189
    .local v11, info:Landroid/content/pm/ResolveInfo;
    move-object v0, v11

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v20, v0

    .line 190
    .local v20, serviceInfo:Landroid/content/pm/ServiceInfo;
    if-nez v20, :cond_2

    .line 191
    const-string v25, "TestFlashPlugin"

    const-string v26, "Ignore bad plugin"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    .end local v11           #info:Landroid/content/pm/ResolveInfo;
    .end local v20           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :catchall_0
    move-exception v25

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 198
    .restart local v11       #info:Landroid/content/pm/ResolveInfo;
    .restart local v20       #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_2
    :try_start_1
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x1040

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v16

    .line 205
    .local v16, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v16, :cond_1

    .line 210
    :try_start_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "/lib"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 211
    .local v7, directory:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 216
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object v14, v0

    .line 217
    .local v14, permissions:[Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 220
    const/4 v13, 0x0

    .line 221
    .local v13, permissionOk:Z
    move-object v3, v14

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v12, :cond_3

    aget-object v15, v3, v10

    .line 222
    .local v15, permit:Ljava/lang/String;
    const-string v25, "android.webkit.permission.PLUGIN"

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 223
    const/4 v13, 0x1

    .line 227
    .end local v15           #permit:Ljava/lang/String;
    :cond_3
    if-eqz v13, :cond_1

    .line 232
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v21, v0

    .line 233
    .local v21, signatures:[Landroid/content/pm/Signature;
    if-eqz v21, :cond_1

    .line 239
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v25, v0

    if-nez v25, :cond_5

    .line 240
    const-string v25, "TestFlashPlugin"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "The plugin \'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\' has no type defined"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 201
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #directory:Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .end local v13           #permissionOk:Z
    .end local v14           #permissions:[Ljava/lang/String;
    .end local v16           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v21           #signatures:[Landroid/content/pm/Signature;
    :catch_0
    move-exception v25

    move-object/from16 v8, v25

    .line 202
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v25, "TestFlashPlugin"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Can\'t find plugin: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 221
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

    goto :goto_2

    .line 244
    .end local v15           #permit:Ljava/lang/String;
    .restart local v21       #signatures:[Landroid/content/pm/Signature;
    :cond_5
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v25, v0

    const-string v26, "type"

    invoke-virtual/range {v25 .. v26}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 245
    .local v17, pluginType:Ljava/lang/String;
    const-string v25, "native"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 246
    const-string v25, "TestFlashPlugin"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Unrecognized plugin type: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 251
    :cond_6
    :try_start_3
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/browser/FlashStateHandler;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 254
    .local v5, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 256
    .local v4, classFound:Z
    if-nez v4, :cond_7

    .line 257
    const-string v25, "TestFlashPlugin"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "The plugin\'s class\' "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\' does not extend the appropriate class."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 261
    .end local v4           #classFound:Z
    .end local v5           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v25

    move-object/from16 v8, v25

    .line 262
    .restart local v8       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string v25, "TestFlashPlugin"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Can\'t find plugin: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 264
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v25

    move-object/from16 v8, v25

    .line 265
    .local v8, e:Ljava/lang/ClassNotFoundException;
    const-string v25, "TestFlashPlugin"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Can\'t find plugin\'s class: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 268
    .end local v8           #e:Ljava/lang/ClassNotFoundException;
    .restart local v4       #classFound:Z
    .restart local v5       #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "com.adobe.flashplayer"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v25

    if-nez v25, :cond_8

    .line 269
    const/16 v22, 0x1

    .line 270
    :cond_8
    const-string v25, "TestFlashPlugin"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "support: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 272
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
    monitor-exit v24
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v23, v22

    .line 273
    .restart local v23       #support:I
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/browser/FlashStateHandler;->doSaveSharePrefData()V

    .line 60
    sget-object v1, Lcom/android/browser/FlashStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 62
    :try_start_0
    sget-object v1, Lcom/android/browser/FlashStateHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 63
    const/4 v1, 0x0

    sput-object v1, Lcom/android/browser/FlashStateHandler;->mAlertDialog:Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TestFlashPlugin"

    const-string v2, "Dissmiss Error onDestroy !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/browser/FlashStateHandler;->doSaveSharePrefData()V

    .line 56
    return-void
.end method
