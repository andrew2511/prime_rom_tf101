.class Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppSecurityPermissions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/layout/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionAdapter"
.end annotation


# instance fields
.field private mDangerousList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;",
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

.field private mHasMorePermissions:Z

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
            "Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/vending/layout/AppSecurityPermissions;


# direct methods
.method constructor <init>(Lcom/android/vending/layout/AppSecurityPermissions;Ljava/util/List;)V
    .locals 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, permissions:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    const/4 v9, 0x1

    .line 126
    iput-object p1, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->this$0:Lcom/android/vending/layout/AppSecurityPermissions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 127
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mDangerousMap:Ljava/util/Map;

    .line 128
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mNormalMap:Ljava/util/Map;

    .line 131
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    invoke-static {p1}, Lcom/android/vending/layout/AppSecurityPermissions;->access$300(Lcom/android/vending/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

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

    invoke-static {p1}, Lcom/android/vending/layout/AppSecurityPermissions;->access$400(Lcom/android/vending/layout/AppSecurityPermissions;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0701d0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 141
    .local v2, groupLabel:Ljava/lang/String;
    :goto_2
    invoke-static {p1}, Lcom/android/vending/layout/AppSecurityPermissions;->access$300(Lcom/android/vending/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PermissionInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, label:Ljava/lang/String;
    iget v6, v5, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v6, v9, :cond_2

    .line 144
    iget-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mDangerousMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 145
    iget-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mDangerousMap:Ljava/util/Map;

    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_0
    iget-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mDangerousMap:Ljava/util/Map;

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

    invoke-static {v6}, Lcom/android/vending/util/Log;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-static {p1}, Lcom/android/vending/layout/AppSecurityPermissions;->access$300(Lcom/android/vending/layout/AppSecurityPermissions;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    goto :goto_2

    .line 149
    .restart local v2       #groupLabel:Ljava/lang/String;
    .restart local v4       #label:Ljava/lang/String;
    :cond_2
    iput-boolean v9, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mHasMorePermissions:Z

    .line 152
    iget-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 153
    iget-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mNormalMap:Ljava/util/Map;

    new-instance v7, Ljava/util/TreeSet;

    invoke-direct {v7}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_3
    iget-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mNormalMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 160
    .end local v1           #group:Landroid/content/pm/PermissionGroupInfo;
    .end local v2           #groupLabel:Ljava/lang/String;
    .end local v4           #label:Ljava/lang/String;
    .end local v5           #permission:Landroid/content/pm/PermissionInfo;
    :cond_4
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mDangerousList:Ljava/util/List;

    .line 161
    iget-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mDangerousMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-direct {p0, v6, v7}, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/List;)V

    .line 168
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mTotalList:Ljava/util/List;

    .line 169
    iget-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mDangerousMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-direct {p0, v6, v7}, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/List;)V

    .line 170
    iget-object v6, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mNormalMap:Ljava/util/Map;

    iget-object v7, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-direct {p0, v6, v7}, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->aggregatePermissions(Ljava/util/Map;Ljava/util/List;)V

    .line 171
    return-void
.end method

.method private aggregatePermissions(Ljava/util/Map;Ljava/util/List;)V
    .locals 10
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
            "Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, permissionsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .local p2, permissionsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;>;"
    const/4 v9, 0x1

    .line 175
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 176
    .local v1, group:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v6, permissionsBuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 178
    .local v0, first:Z
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    .local v5, permission:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 181
    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 183
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 185
    const/4 v0, 0x0

    goto :goto_2

    .line 189
    .end local v5           #permission:Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;-><init>(Lcom/android/vending/layout/AppSecurityPermissions$1;)V

    .line 190
    .local v4, newEntry:Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;
    iput-object v1, v4, Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;->groupName:Ljava/lang/String;

    .line 191
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;->permissionsList:Ljava/lang/String;

    .line 192
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v0           #first:Z
    .end local v1           #group:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #newEntry:Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;
    .end local v6           #permissionsBuilder:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->this$0:Lcom/android/vending/layout/AppSecurityPermissions;

    invoke-static {v0}, Lcom/android/vending/layout/AppSecurityPermissions;->access$000(Lcom/android/vending/layout/AppSecurityPermissions;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->this$0:Lcom/android/vending/layout/AppSecurityPermissions;

    invoke-static {v0}, Lcom/android/vending/layout/AppSecurityPermissions;->access$000(Lcom/android/vending/layout/AppSecurityPermissions;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mDangerousList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mTotalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->getItem(I)Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 230
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "view"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 236
    if-nez p2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->this$0:Lcom/android/vending/layout/AppSecurityPermissions;

    invoke-virtual {v2}, Lcom/android/vending/layout/AppSecurityPermissions;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040048

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 238
    new-instance v1, Lcom/android/vending/layout/AppSecurityPermissions$ViewHolder;

    invoke-direct {v1, v4}, Lcom/android/vending/layout/AppSecurityPermissions$ViewHolder;-><init>(Lcom/android/vending/layout/AppSecurityPermissions$1;)V

    .line 239
    .local v1, holder:Lcom/android/vending/layout/AppSecurityPermissions$ViewHolder;
    const v2, 0x7f080066

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/vending/layout/AppSecurityPermissions$ViewHolder;->group:Landroid/widget/TextView;

    .line 240
    const v2, 0x7f0800f7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/vending/layout/AppSecurityPermissions$ViewHolder;->permissions:Landroid/widget/TextView;

    .line 241
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 246
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->getItem(I)Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;

    move-result-object v0

    .line 247
    .local v0, entry:Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;
    iget-object v2, v1, Lcom/android/vending/layout/AppSecurityPermissions$ViewHolder;->group:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v2, v1, Lcom/android/vending/layout/AppSecurityPermissions$ViewHolder;->permissions:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;->permissionsList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    return-object p2

    .line 243
    .end local v0           #entry:Lcom/android/vending/layout/AppSecurityPermissions$PermissionEntry;
    .end local v1           #holder:Lcom/android/vending/layout/AppSecurityPermissions$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/layout/AppSecurityPermissions$ViewHolder;

    .restart local v1       #holder:Lcom/android/vending/layout/AppSecurityPermissions$ViewHolder;
    goto :goto_0
.end method

.method public hasMorePermissions()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/android/vending/layout/AppSecurityPermissions$PermissionAdapter;->mHasMorePermissions:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method
