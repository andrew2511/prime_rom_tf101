.class public Lcom/android/launcher2/IconCache;
.super Ljava/lang/Object;
.source "IconCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/IconCache$1;,
        Lcom/android/launcher2/IconCache$CacheEntry;
    }
.end annotation


# instance fields
.field private final mBubble:Lcom/android/launcher2/Utilities$BubbleText;

.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/IconCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/android/launcher2/LauncherApplication;

.field private final mDefaultIcon:Landroid/graphics/Bitmap;

.field private mIconDpi:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherApplication;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    .line 54
    iput-object p1, p0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    .line 55
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 56
    new-instance v0, Lcom/android/launcher2/Utilities$BubbleText;

    invoke-direct {v0, p1}, Lcom/android/launcher2/Utilities$BubbleText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mBubble:Lcom/android/launcher2/Utilities$BubbleText;

    .line 57
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/launcher2/IconCache;->mIconDpi:I

    .line 63
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher2/IconCache;->makeDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 64
    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lcom/android/launcher2/IconCache;->mIconDpi:I

    goto :goto_0
.end method

.method private cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/IconCache$CacheEntry;
    .locals 4
    .parameter "componentName"
    .parameter "info"

    .prologue
    .line 169
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/IconCache$CacheEntry;

    .line 170
    .local v1, entry:Lcom/android/launcher2/IconCache$CacheEntry;
    if-nez v1, :cond_1

    .line 171
    new-instance v1, Lcom/android/launcher2/IconCache$CacheEntry;

    .end local v1           #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/launcher2/IconCache$CacheEntry;-><init>(Lcom/android/launcher2/IconCache$1;)V

    .line 173
    .restart local v1       #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 176
    iget-object v3, v1, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 177
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    .line 182
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2, v3}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 186
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mContext:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v2, v3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v1, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    .line 188
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    return-object v1

    .line 183
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 184
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p0}, Lcom/android/launcher2/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private makeDefaultIcon()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher2/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 96
    .local v2, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 100
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 120
    monitor-exit v0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "info"
    .parameter "packageManager"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    .local v2, resources:Landroid/content/res/Resources;
    :goto_0
    if-eqz v2, :cond_0

    .line 86
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v1

    .line 87
    .local v1, iconId:I
    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 91
    .end local v1           #iconId:I
    :goto_1
    return-object v3

    .line 82
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 83
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .restart local v2       #resources:Landroid/content/res/Resources;
    goto :goto_0

    .line 91
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_1
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "resources"
    .parameter "iconId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 73
    iget v0, p0, Lcom/android/launcher2/IconCache;->mIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "component"
    .parameter "resolveInfo"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 155
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 156
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    monitor-exit v1

    move-object v1, v2

    .line 160
    :goto_0
    return-object v1

    .line 159
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/IconCache$CacheEntry;

    move-result-object v0

    .line 160
    .local v0, entry:Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v2, v0, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 161
    .end local v0           #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "intent"

    .prologue
    .line 140
    iget-object v3, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 141
    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 142
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 144
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 145
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    monitor-exit v3

    move-object v3, v4

    .line 149
    :goto_0
    return-object v3

    .line 148
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/IconCache$CacheEntry;

    move-result-object v1

    .line 149
    .local v1, entry:Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v4, v1, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    monitor-exit v3

    move-object v3, v4

    goto :goto_0

    .line 150
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getTitleAndIcon(Lcom/android/launcher2/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .parameter "application"
    .parameter "info"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v2, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-direct {p0, v2, p2}, Lcom/android/launcher2/IconCache;->cacheLocked(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/IconCache$CacheEntry;

    move-result-object v0

    .line 129
    .local v0, entry:Lcom/android/launcher2/IconCache$CacheEntry;
    iget-object v2, v0, Lcom/android/launcher2/IconCache$CacheEntry;->titleBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/launcher2/IconCache;->mBubble:Lcom/android/launcher2/Utilities$BubbleText;

    iget-object v3, v0, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Utilities$BubbleText;->createTextBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/IconCache$CacheEntry;->titleBitmap:Landroid/graphics/Bitmap;

    .line 133
    :cond_0
    iget-object v2, v0, Lcom/android/launcher2/IconCache$CacheEntry;->title:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    .line 134
    iget-object v2, v0, Lcom/android/launcher2/IconCache$CacheEntry;->titleBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p1, Lcom/android/launcher2/ApplicationInfo;->titleBitmap:Landroid/graphics/Bitmap;

    .line 135
    iget-object v2, v0, Lcom/android/launcher2/IconCache$CacheEntry;->icon:Landroid/graphics/Bitmap;

    iput-object v2, p1, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    .end local v0           #entry:Lcom/android/launcher2/IconCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isDefaultIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/launcher2/IconCache;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/IconCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
