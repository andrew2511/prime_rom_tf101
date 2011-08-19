.class Lcom/android/launcher2/Workspace$13;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$layout:Landroid/view/ViewGroup;

.field final synthetic val$layoutParent:Lcom/android/launcher2/CellLayout;

.field final synthetic val$manager:Landroid/content/pm/PackageManager;

.field final synthetic val$packageNames:Ljava/util/HashSet;

.field final synthetic val$widgets:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3155
    iput-object p1, p0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$13;->val$manager:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/android/launcher2/Workspace$13;->val$widgets:Landroid/appwidget/AppWidgetManager;

    iput-object p6, p0, Lcom/android/launcher2/Workspace$13;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 26

    .prologue
    .line 3157
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3158
    .local v5, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 3161
    .local v4, childCount:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_0
    if-ge v12, v4, :cond_a

    .line 3162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    .line 3163
    .local v22, view:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    .line 3165
    .local v19, tag:Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/ShortcutInfo;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 3166
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v10, v0

    .line 3167
    .local v10, info:Lcom/android/launcher2/ShortcutInfo;
    iget-object v11, v10, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3168
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 3170
    .local v14, name:Landroid/content/ComponentName;
    const-string v23, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    if-eqz v14, :cond_5

    .line 3171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3172
    .local v15, packageName:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 3173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3174
    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3178
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #name:Landroid/content/ComponentName;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/UserFolderInfo;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 3179
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v10, v0

    .line 3180
    .local v10, info:Lcom/android/launcher2/UserFolderInfo;
    iget-object v6, v10, Lcom/android/launcher2/UserFolderInfo;->contents:Ljava/util/ArrayList;

    .line 3181
    .local v6, contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    new-instance v20, Ljava/util/ArrayList;

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3182
    .local v20, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3183
    .local v7, contentsCount:I
    const/16 v18, 0x0

    .line 3185
    .local v18, removedFromFolder:Z
    const/4 v13, 0x0

    .local v13, k:I
    :goto_2
    if-ge v13, v7, :cond_4

    .line 3186
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ShortcutInfo;

    .line 3187
    .local v2, appInfo:Lcom/android/launcher2/ShortcutInfo;
    iget-object v11, v2, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3188
    .restart local v11       #intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    .line 3190
    .restart local v14       #name:Landroid/content/ComponentName;
    const-string v23, "android.intent.action.MAIN"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    if-eqz v14, :cond_3

    .line 3191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3192
    .restart local v15       #packageName:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 3193
    move-object/from16 v0, v20

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3195
    const/16 v18, 0x1

    goto :goto_3

    .line 3185
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v15           #packageName:Ljava/lang/String;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 3201
    .end local v2           #appInfo:Lcom/android/launcher2/ShortcutInfo;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #name:Landroid/content/ComponentName;
    :cond_4
    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3202
    if-eqz v18, :cond_5

    .line 3203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v8

    .line 3204
    .local v8, folder:Lcom/android/launcher2/Folder;
    if-eqz v8, :cond_5

    .line 3205
    invoke-virtual {v8}, Lcom/android/launcher2/Folder;->notifyDataSetChanged()V

    .line 3161
    .end local v6           #contents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    .end local v7           #contentsCount:I
    .end local v8           #folder:Lcom/android/launcher2/Folder;
    .end local v10           #info:Lcom/android/launcher2/UserFolderInfo;
    .end local v13           #k:I
    .end local v18           #removedFromFolder:Z
    .end local v20           #toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 3207
    :cond_6
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/LiveFolderInfo;

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 3208
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    move-object v10, v0

    .line 3209
    .local v10, info:Lcom/android/launcher2/LiveFolderInfo;
    move-object v0, v10

    iget-object v0, v0, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    move-object/from16 v21, v0

    .line 3210
    .local v21, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$manager:Landroid/content/pm/PackageManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v17

    .line 3213
    .local v17, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v17, :cond_5

    .line 3214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3215
    .restart local v15       #packageName:Ljava/lang/String;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 3216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3217
    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3221
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/android/launcher2/LiveFolderInfo;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v17           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_8
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 3222
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v10, v0

    .line 3223
    .local v10, info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$widgets:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v23, v0

    move-object v0, v10

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v16

    .line 3225
    .local v16, provider:Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v16, :cond_5

    .line 3226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$packageNames:Ljava/util/HashSet;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 3227
    .restart local v15       #packageName:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v23

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 3228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v10

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    .line 3229
    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3236
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v19           #tag:Ljava/lang/Object;
    .end local v22           #view:Landroid/view/View;
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3237
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v4, :cond_c

    .line 3238
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3241
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layoutParent:Lcom/android/launcher2/CellLayout;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3242
    move-object v0, v3

    instance-of v0, v0, Lcom/android/launcher2/DropTarget;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 3243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/launcher2/Workspace;->access$1700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;

    move-result-object v23

    check-cast v3, Lcom/android/launcher2/DropTarget;

    .end local v3           #child:Landroid/view/View;
    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3237
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 3247
    :cond_c
    if-lez v4, :cond_d

    .line 3248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$13;->val$layout:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->invalidate()V

    .line 3251
    :cond_d
    return-void
.end method
