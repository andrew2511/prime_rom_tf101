.class Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdatedTask"
.end annotation


# instance fields
.field mOp:I

.field mPackages:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "op"
    .parameter "packages"

    .prologue
    .line 1315
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1316
    iput p2, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    .line 1317
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    .line 1318
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1700(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;

    move-result-object v9

    .line 1323
    .local v9, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    move-object v15, v0

    .line 1324
    .local v15, packages:[Ljava/lang/String;
    array-length v5, v15

    .line 1325
    .local v5, N:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 1347
    :cond_0
    const/4 v6, 0x0

    .line 1348
    .local v6, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/16 v17, 0x0

    .line 1349
    .local v17, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v13, 0x0

    .line 1351
    .local v13, modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_1

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object v6, v0

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    .line 1355
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_2

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 1358
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/ApplicationInfo;

    .line 1359
    .local v12, info:Lcom/android/launcher2/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;

    move-result-object v19

    move-object v0, v12

    iget-object v0, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/IconCache;->remove(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 1327
    .end local v6           #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v13           #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .end local v17           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :pswitch_0
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v5, :cond_0

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    aget-object v20, v15, v10

    move-object/from16 v0, v19

    move-object v1, v9

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1327
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1333
    .end local v10           #i:I
    :pswitch_1
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    if-ge v10, v5, :cond_0

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    aget-object v20, v15, v10

    move-object/from16 v0, v19

    move-object v1, v9

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 1333
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1340
    .end local v10           #i:I
    :pswitch_2
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    if-ge v10, v5, :cond_0

    .line 1342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    aget-object v20, v15, v10

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/AllAppsList;->removePackage(Ljava/lang/String;)V

    .line 1340
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1362
    .end local v10           #i:I
    .restart local v6       #added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .restart local v13       #modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    .restart local v17       #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_3

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object v13, v0

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v19

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 1367
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #N:I
    check-cast v5, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v8, v5

    .line 1368
    .local v8, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_4
    if-nez v8, :cond_5

    .line 1369
    const-string v19, "Launcher.Model"

    const-string v20, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    :goto_5
    return-void

    .line 1367
    .end local v8           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    .restart local v5       #N:I
    :cond_4
    const/16 v19, 0x0

    move-object/from16 v8, v19

    goto :goto_4

    .line 1373
    .end local v5           #N:I
    .restart local v8       #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_5
    if-eqz v6, :cond_6

    .line 1374
    move-object v7, v6

    .line 1375
    .local v7, addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v19

    new-instance v20, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$1;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1383
    .end local v7           #addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_6
    if-eqz v13, :cond_7

    .line 1384
    move-object v14, v13

    .line 1385
    .local v14, modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v19

    new-instance v20, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$2;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1393
    .end local v14           #modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_7
    if-eqz v17, :cond_8

    .line 1394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->mOp:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    const/16 v19, 0x1

    move/from16 v16, v19

    .line 1395
    .local v16, permanent:Z
    :goto_6
    move-object/from16 v18, v17

    .line 1396
    .local v18, removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v19

    new-instance v20, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, v18

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$3;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;Ljava/util/ArrayList;Z)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1405
    .end local v16           #permanent:Z
    .end local v18           #removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v19

    new-instance v20, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask$4;-><init>(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    invoke-virtual/range {v19 .. v20}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_5

    .line 1394
    :cond_9
    const/16 v19, 0x0

    move/from16 v16, v19

    goto :goto_6

    .line 1325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
