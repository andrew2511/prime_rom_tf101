.class public Lcom/android/packageinstaller/PackageUtil;
.super Ljava/lang/Object;
.source "PackageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method public static getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/net/Uri;)Lcom/android/packageinstaller/PackageUtil$AppSnippet;
    .locals 8
    .parameter "pContext"
    .parameter "appInfo"
    .parameter "packageURI"

    .prologue
    .line 154
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, archiveFilePath:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 156
    .local v4, pRes:Landroid/content/res/Resources;
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 157
    .local v1, assmgr:Landroid/content/res/AssetManager;
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 158
    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 159
    .local v5, res:Landroid/content/res/Resources;
    const/4 v3, 0x0

    .line 162
    .local v3, label:Ljava/lang/CharSequence;
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v6, :cond_0

    .line 164
    :try_start_0
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 168
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 169
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v6, :cond_4

    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v3, v6

    .line 172
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 175
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v6, :cond_2

    .line 177
    :try_start_1
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 181
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 184
    :cond_3
    new-instance v6, Lcom/android/packageinstaller/PackageUtil$AppSnippet;

    invoke-direct {v6, v3, v2}, Lcom/android/packageinstaller/PackageUtil$AppSnippet;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    return-object v6

    .line 169
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v3, v6

    goto :goto_1

    .line 178
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v6

    goto :goto_2

    .line 165
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method public static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .locals 6
    .parameter "packageURI"

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v4, sourceFile:Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 73
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 74
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 77
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    .line 78
    return-object v3
.end method

.method public static initSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;
    .locals 1
    .parameter "snippetView"
    .parameter "label"
    .parameter "icon"

    .prologue
    .line 82
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    return-object p0
.end method

.method public static initSnippetForInstalledApp(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Landroid/view/View;)Landroid/view/View;
    .locals 3
    .parameter "pContext"
    .parameter "appInfo"
    .parameter "snippetView"

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 100
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/android/packageinstaller/PackageUtil;->initSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public static initSnippetForNewApp(Landroid/app/Activity;Lcom/android/packageinstaller/PackageUtil$AppSnippet;I)Landroid/view/View;
    .locals 2
    .parameter "pContext"
    .parameter "as"
    .parameter "snippetId"

    .prologue
    .line 118
    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, appSnippet:Landroid/view/View;
    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    const v1, 0x7f070002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/packageinstaller/PackageUtil$AppSnippet;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-object v0
.end method
