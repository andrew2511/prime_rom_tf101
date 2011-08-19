.class Lcom/android/launcher2/AllAppsList;
.super Ljava/lang/Object;
.source "AllAppsList.java"


# instance fields
.field public added:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field public modified:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public removed:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/IconCache;)V
    .locals 2
    .parameter "iconCache"

    .prologue
    const/16 v1, 0x2a

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 53
    iput-object p1, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 54
    return-void
.end method

.method private static findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "context"
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 172
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 177
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    move-object v3, v0

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private static findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z
    .locals 4
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 199
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 200
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 201
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v3, v2, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const/4 v3, 0x1

    .line 205
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :goto_1
    return v3

    .line 199
    .restart local v2       #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z
    .locals 5
    .parameter
    .parameter "component"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, className:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 186
    .local v3, info:Landroid/content/pm/ResolveInfo;
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 187
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    const/4 v4, 0x1

    .line 191
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v3           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/ApplicationInfo;
    .locals 4
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 212
    iget-object v3, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 213
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v3, v2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 214
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 219
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/android/launcher2/AllAppsList;->findActivity(Ljava/util/ArrayList;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 90
    invoke-static {p1, p2}, Lcom/android/launcher2/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 93
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 94
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v3, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-direct {v3, v4, v1, v5}, Lcom/android/launcher2/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ApplicationInfo;)V

    goto :goto_0

    .line 97
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 74
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 75
    iget-object v0, p0, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 76
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    .line 104
    .local v1, data:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 105
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 106
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v3, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 107
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 104
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 113
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v4}, Lcom/android/launcher2/IconCache;->flush()V

    .line 114
    return-void
.end method

.method public updatePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v7, 0x1

    .line 120
    invoke-static {p1, p2}, Lcom/android/launcher2/AllAppsList;->findActivitiesForPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 121
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 124
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v3, v6, v7

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_1

    .line 125
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 126
    .local v0, applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 127
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 128
    invoke-static {v5, v1}, Lcom/android/launcher2/AllAppsList;->findActivity(Ljava/util/List;Landroid/content/ComponentName;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 129
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 131
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 124
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 138
    .end local v0           #applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 139
    .local v2, count:I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 140
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 141
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/launcher2/AllAppsList;->findApplicationInfoLocked(Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher2/ApplicationInfo;

    move-result-object v0

    .line 144
    .restart local v0       #applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    if-nez v0, :cond_2

    .line 145
    new-instance v6, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-direct {v6, v7, v4, v8}, Lcom/android/launcher2/ApplicationInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher2/IconCache;)V

    invoke-virtual {p0, v6}, Lcom/android/launcher2/AllAppsList;->add(Lcom/android/launcher2/ApplicationInfo;)V

    .line 139
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 147
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    iget-object v7, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 148
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v6, v0, v4}, Lcom/android/launcher2/IconCache;->getTitleAndIcon(Lcom/android/launcher2/ApplicationInfo;Landroid/content/pm/ResolveInfo;)V

    .line 149
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 154
    .end local v0           #applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v3, v6, v7

    .restart local v3       #i:I
    :goto_3
    if-ltz v3, :cond_5

    .line 155
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 156
    .restart local v0       #applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    iget-object v6, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 157
    .restart local v1       #component:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 158
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/IconCache;->remove(Landroid/content/ComponentName;)V

    .line 160
    iget-object v6, p0, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 154
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 164
    .end local v0           #applicationInfo:Lcom/android/launcher2/ApplicationInfo;
    .end local v1           #component:Landroid/content/ComponentName;
    :cond_5
    return-void
.end method
