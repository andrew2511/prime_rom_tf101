.class public Lcom/android/contacts/quickcontact/ResolveCache;
.super Ljava/lang/Object;
.source "ResolveCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/ResolveCache$1;,
        Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

.field private static final sPreferResolve:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/ResolveCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 92
    return-void
.end method

.method public static declared-synchronized flush()V
    .locals 2

    .prologue
    .line 74
    const-class v0, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit v0

    return-void

    .line 74
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;
    .locals 3
    .parameter "context"

    .prologue
    .line 67
    const-class v0, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/android/contacts/quickcontact/ResolveCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/quickcontact/ResolveCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 11
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p2, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 146
    iget-object v7, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v8, 0x1

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 148
    .local v2, foundResolve:Landroid/content/pm/ResolveInfo;
    iget v7, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v8, 0xfff

    and-int/2addr v7, v8

    if-nez v7, :cond_0

    move v1, v10

    .line 151
    .local v1, foundDisambig:Z
    :goto_0
    if-nez v1, :cond_1

    move-object v7, v2

    .line 169
    .end local p0
    :goto_1
    return-object v7

    .end local v1           #foundDisambig:Z
    .restart local p0
    :cond_0
    move v1, v9

    .line 148
    goto :goto_0

    .line 157
    .restart local v1       #foundDisambig:Z
    :cond_1
    const/4 v0, 0x0

    .line 158
    .local v0, firstSystem:Landroid/content/pm/ResolveInfo;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 159
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    move v6, v10

    .line 161
    .local v6, isSystem:Z
    :goto_3
    sget-object v7, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 164
    .local v5, isPrefer:Z
    if-eqz v5, :cond_4

    move-object v7, v4

    goto :goto_1

    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_3
    move v6, v9

    .line 159
    goto :goto_3

    .line 165
    .restart local v5       #isPrefer:Z
    .restart local v6       #isSystem:Z
    :cond_4
    if-eqz v6, :cond_2

    if-nez v0, :cond_2

    move-object v0, v4

    goto :goto_2

    .line 169
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #isPrefer:Z
    .end local v6           #isSystem:Z
    :cond_5
    if-eqz v0, :cond_6

    move-object v7, v0

    goto :goto_1

    :cond_6
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ResolveInfo;

    move-object v7, p0

    goto :goto_1
.end method

.method public getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "action"

    .prologue
    .line 185
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getHeader()Ljava/lang/CharSequence;

    move-result-object v0

    .line 186
    .local v0, actionHeader:Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v2

    iget-object v1, v2, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 187
    .local v1, info:Landroid/content/pm/ResolveInfo;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 192
    :goto_0
    return-object v2

    .line 189
    :cond_0
    if-eqz v1, :cond_1

    .line 190
    iget-object v2, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 192
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    .locals 11
    .parameter "action"

    .prologue
    const/4 v10, 0x1

    .line 99
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, mimeType:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    .line 101
    .local v1, entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 132
    .end local v1           #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    .local v2, entry:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 102
    .end local v2           #entry:Ljava/lang/Object;
    .restart local v1       #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    :cond_0
    new-instance v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    .end local v1           #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    const/4 v8, 0x0

    invoke-direct {v1, v8}, Lcom/android/contacts/quickcontact/ResolveCache$Entry;-><init>(Lcom/android/contacts/quickcontact/ResolveCache$1;)V

    .line 104
    .restart local v1       #entry:Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 105
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 107
    const/4 v4, 0x0

    .line 110
    :cond_1
    if-eqz v4, :cond_3

    .line 111
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v9, 0x1

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 115
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 116
    .local v0, bestResolve:Landroid/content/pm/ResolveInfo;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 117
    .local v7, size:I
    if-ne v7, v10, :cond_4

    .line 118
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bestResolve:Landroid/content/pm/ResolveInfo;
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 123
    .restart local v0       #bestResolve:Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 124
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 126
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iput-object v0, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 127
    iput-object v3, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 131
    .end local v0           #bestResolve:Landroid/content/pm/ResolveInfo;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7           #size:I
    :cond_3
    iget-object v8, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v8, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 132
    .restart local v2       #entry:Ljava/lang/Object;
    goto :goto_0

    .line 119
    .end local v2           #entry:Ljava/lang/Object;
    .restart local v0       #bestResolve:Landroid/content/pm/ResolveInfo;
    .restart local v5       #matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7       #size:I
    :cond_4
    if-le v7, v10, :cond_2

    .line 120
    invoke-virtual {p0, v4, v5}, Lcom/android/contacts/quickcontact/ResolveCache;->getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_1
.end method

.method public getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "action"

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasResolve(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "action"

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
