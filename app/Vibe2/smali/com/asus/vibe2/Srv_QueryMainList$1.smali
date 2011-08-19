.class Lcom/asus/vibe2/Srv_QueryMainList$1;
.super Landroid/os/Handler;
.source "Srv_QueryMainList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Srv_QueryMainList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Srv_QueryMainList;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Srv_QueryMainList;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v6, 0xb

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 35
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    invoke-static {v4, v7}, Lcom/asus/vibe2/Srv_QueryMainList;->access$002(Lcom/asus/vibe2/Srv_QueryMainList;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;

    .line 36
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_8

    .line 37
    const/4 v3, 0x0

    .line 38
    .local v3, newRegion:Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 39
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #newRegion:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 43
    .restart local v3       #newRegion:Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "ASUS@Vibe"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newRegion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 45
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.asus.vibe.action.MAINLIST_RESULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.asus.vibe.QUERY_RESULT"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    .end local v3           #newRegion:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 40
    .restart local v3       #newRegion:Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/asus/vibe2/Vibe;->regionAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 47
    :cond_4
    invoke-static {v3}, Lcom/asus/vibe2/Vibe;->setRegion(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 49
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeMainCategoryList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeMainCategoryList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 51
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeMainCategoryList()Ljava/util/ArrayList;

    move-result-object v1

    .line 52
    .local v1, mainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 53
    .local v2, mainStringList:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 54
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v4, v4, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 56
    :cond_5
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.asus.vibe.action.MAINLIST_RESULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.asus.vibe.QUERY_RESULT"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.asus.vibe.MAINLIST_RESULT"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->sendBroadcast(Landroid/content/Intent;)V

    .line 71
    .end local v0           #i:I
    .end local v1           #mainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    .end local v2           #mainStringList:[Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    invoke-static {v4}, Lcom/asus/vibe2/Srv_QueryMainList;->access$200(Lcom/asus/vibe2/Srv_QueryMainList;)Z

    move-result v4

    sget-boolean v5, Lcom/asus/vibe2/Vibe;->useVibeTestPremiumAddress:Z

    if-eq v4, v5, :cond_2

    .line 72
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    sget-boolean v5, Lcom/asus/vibe2/Vibe;->useVibeTestPremiumAddress:Z

    invoke-static {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->access$202(Lcom/asus/vibe2/Srv_QueryMainList;Z)Z

    .line 74
    invoke-static {v7}, Lcom/asus/vibe2/Vibe;->setVibeFreeToken(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/asus/vibe2/Vibe;->clearVibeMainCategoryList()V

    .line 76
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    iget-object v5, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    invoke-static {v5}, Lcom/asus/vibe2/Srv_QueryMainList;->access$100(Lcom/asus/vibe2/Srv_QueryMainList;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v8, v7, v5}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->access$002(Lcom/asus/vibe2/Srv_QueryMainList;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;

    goto/16 :goto_1

    .line 61
    :cond_6
    invoke-static {v7}, Lcom/asus/vibe2/Vibe;->setVibeFreeToken(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/asus/vibe2/Vibe;->clearVibeMainCategoryList()V

    .line 63
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    iget-object v5, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    invoke-static {v5}, Lcom/asus/vibe2/Srv_QueryMainList;->access$100(Lcom/asus/vibe2/Srv_QueryMainList;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v8, v7, v5}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->access$002(Lcom/asus/vibe2/Srv_QueryMainList;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;

    goto :goto_3

    .line 67
    :cond_7
    invoke-static {v7}, Lcom/asus/vibe2/Vibe;->setVibeFreeToken(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/asus/vibe2/Vibe;->clearVibeMainCategoryList()V

    .line 69
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    iget-object v5, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    invoke-static {v5}, Lcom/asus/vibe2/Srv_QueryMainList;->access$100(Lcom/asus/vibe2/Srv_QueryMainList;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v8, v7, v5}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->access$002(Lcom/asus/vibe2/Srv_QueryMainList;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;

    goto :goto_3

    .line 78
    .end local v3           #newRegion:Ljava/lang/String;
    :cond_8
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v8, :cond_d

    .line 79
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_9

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 80
    :cond_9
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeMainCategoryList()Ljava/util/ArrayList;

    move-result-object v1

    .line 81
    .restart local v1       #mainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeMainCategoryList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeMainCategoryList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 83
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 84
    .restart local v2       #mainStringList:[Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_a

    .line 85
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v4, v4, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 87
    :cond_a
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.asus.vibe.action.MAINLIST_RESULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.asus.vibe.QUERY_RESULT"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.asus.vibe.MAINLIST_RESULT"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 91
    .end local v0           #i:I
    .end local v2           #mainStringList:[Ljava/lang/String;
    :cond_b
    invoke-static {}, Lcom/asus/vibe2/Vibe;->clearVibeMainCategoryList()V

    .line 92
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    iget-object v5, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    invoke-static {v5}, Lcom/asus/vibe2/Srv_QueryMainList;->access$100(Lcom/asus/vibe2/Srv_QueryMainList;)Landroid/os/Handler;

    move-result-object v5

    invoke-static {v6, v7, v5}, Lcom/asus/vibe/api/VibeApiTask;->newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->access$002(Lcom/asus/vibe2/Srv_QueryMainList;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;

    goto/16 :goto_1

    .line 95
    .end local v1           #mainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    :cond_c
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.asus.vibe.action.MAINLIST_RESULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.asus.vibe.QUERY_RESULT"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 97
    :cond_d
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v6, :cond_2

    .line 98
    const/4 v1, 0x0

    .line 99
    .restart local v1       #mainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_e

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_e

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_e

    .line 100
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #mainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 101
    .restart local v1       #mainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    invoke-static {v1}, Lcom/asus/vibe2/Vibe;->setVibeMainCategoryList(Ljava/util/ArrayList;)V

    .line 103
    :cond_e
    if-eqz v1, :cond_10

    .line 104
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 105
    .restart local v2       #mainStringList:[Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_f

    .line 106
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v4, v4, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 108
    :cond_f
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.asus.vibe.action.MAINLIST_RESULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.asus.vibe.QUERY_RESULT"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.asus.vibe.MAINLIST_RESULT"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 112
    .end local v0           #i:I
    .end local v2           #mainStringList:[Ljava/lang/String;
    :cond_10
    iget-object v4, p0, Lcom/asus/vibe2/Srv_QueryMainList$1;->this$0:Lcom/asus/vibe2/Srv_QueryMainList;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.asus.vibe.action.MAINLIST_RESULT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.asus.vibe.QUERY_RESULT"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/asus/vibe2/Srv_QueryMainList;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
