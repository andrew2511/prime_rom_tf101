.class Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;
.super Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPermissionAdapter"
.end annotation


# instance fields
.field private mDangerousList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDangerousMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNormalMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/AppSecurityPermissions;Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, permissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    const/4 v9, 0x0

    .line 125
    iput-object p1, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    .line 126
    invoke-direct {p0, p2}, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter;-><init>(Landroid/content/Context;)V

    .line 127
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    .line 128
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    .line 131
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PermissionInfo;

    .line 132
    .local v5, permission:Landroid/content/pm/PermissionInfo;
    const/4 v1, 0x0

    .line 134
    .local v1, group:Landroid/content/pm/PermissionGroupInfo;
    :try_start_0
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :goto_1
    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$100(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0074

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 141
    .local v2, groupLabel:Ljava/lang/String;
    :goto_2
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, label:Ljava/lang/String;
    iget v6, v5, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 144
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 145
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v2           #groupLabel:Ljava/lang/String;
    .end local v4           #label:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 136
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid group name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 138
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-static {p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$400(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    goto :goto_2

    .line 150
    .restart local v2       #groupLabel:Ljava/lang/String;
    .restart local v4       #label:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 151
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_3
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 158
    .end local v1           #group:Landroid/content/pm/PermissionGroupInfo;
    .end local v2           #groupLabel:Ljava/lang/String;
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #permission:Landroid/content/pm/PermissionInfo;
    :cond_4
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    .line 159
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-direct {p0, v6, v7}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/List;)V

    .line 166
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    .line 167
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-direct {p0, v6, v7}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/List;)V

    .line 168
    iget-object v6, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-direct {p0, v6, v7}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/List;)V

    .line 169
    return-void
.end method

.method private aggregatePermissions(Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, permissionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local p2, permissionsList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;>;"
    const/4 v6, 0x1

    .line 173
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    .local v0, group:Ljava/lang/String;
    const-string v4, ", "

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {v4, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, joinedPermissions:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    :cond_0
    new-instance v3, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;

    invoke-direct {v3}, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;-><init>()V

    .line 180
    .local v3, newEntry:Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;
    iput-object v0, v3, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;->headerText:Ljava/lang/String;

    .line 181
    iput-object v2, v3, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;->contentText:Ljava/lang/String;

    .line 182
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    .end local v0           #group:Ljava/lang/String;
    .end local v2           #joinedPermissions:Ljava/lang/String;
    .end local v3           #newEntry:Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-static {v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$000(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->this$0:Lcom/google/android/finsky/layout/AppSecurityPermissions;

    invoke-static {v0}, Lcom/google/android/finsky/layout/AppSecurityPermissions;->access$000(Lcom/google/android/finsky/layout/AppSecurityPermissions;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->getItem(I)Lcom/google/android/finsky/adapters/PurchaseDetailsAdapter$DetailsEntry;

    move-result-object v0

    return-object v0
.end method

.method public hasMorePermissions()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/finsky/layout/AppSecurityPermissions$AppPermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
