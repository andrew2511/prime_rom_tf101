.class public Lcom/asus/vibe/api/VibeApiTask;
.super Ljava/lang/Object;
.source "VibeApiTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/vibe/api/VibeApiTask$TaskThread;
    }
.end annotation


# instance fields
.field protected mErrorCode:I

.field protected mHandler:Landroid/os/Handler;

.field protected mInterrupter:Lcom/asus/vibe/api/Interrupter;

.field protected mParam:Lcom/asus/vibe/item/VibeParam;

.field protected mResult:Ljava/lang/Object;

.field protected mTaskType:I


# direct methods
.method public constructor <init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V
    .locals 3
    .parameter "taskType"
    .parameter "param"
    .parameter "handler"

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/asus/vibe/api/Interrupter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/asus/vibe/api/Interrupter;-><init>(Z)V

    iput-object v0, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    .line 117
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->add(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iput p1, p0, Lcom/asus/vibe/api/VibeApiTask;->mTaskType:I

    .line 119
    iput-object p2, p0, Lcom/asus/vibe/api/VibeApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    .line 120
    iput-object p3, p0, Lcom/asus/vibe/api/VibeApiTask;->mHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method private static mergeMainCategories(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter
    .parameter "interrupter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Main;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Main;",
            ">;",
            "Lcom/asus/vibe/api/Interrupter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Main;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, cmsMainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    .local p1, premiumMainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    const/4 v7, 0x0

    .line 254
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v7

    .line 280
    :goto_0
    return-object v5

    .line 255
    :cond_0
    if-nez p0, :cond_1

    .line 256
    new-instance p0, Ljava/util/ArrayList;

    .end local p0           #cmsMainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .restart local p0       #cmsMainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    :cond_1
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v7

    goto :goto_0

    .line 259
    :cond_2
    if-nez p1, :cond_3

    move-object v5, p0

    .line 260
    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/asus/vibe/item/VibeItem_Main;

    .line 263
    .local v4, premiumMain:Lcom/asus/vibe/item/VibeItem_Main;
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v7

    goto :goto_0

    .line 264
    :cond_5
    const/4 v1, 0x0

    .line 265
    .local v1, found:Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/asus/vibe/item/VibeItem_Main;

    .line 266
    .local v0, cmsMain:Lcom/asus/vibe/item/VibeItem_Main;
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v7

    goto :goto_0

    .line 267
    :cond_7
    iget-object v5, v0, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    iget-object v6, v4, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 269
    const/4 v1, 0x1

    .line 270
    iget-object v5, v4, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    iput-object v5, v0, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    .line 271
    iget-object v5, v4, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryLocal:Ljava/lang/String;

    iput-object v5, v0, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryLocal:Ljava/lang/String;

    .line 275
    .end local v0           #cmsMain:Lcom/asus/vibe/item/VibeItem_Main;
    :cond_8
    invoke-virtual {p2}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v7

    goto :goto_0

    .line 276
    :cond_9
    if-nez v1, :cond_4

    .line 277
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #found:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #premiumMain:Lcom/asus/vibe/item/VibeItem_Main;
    :cond_a
    move-object v5, p0

    .line 280
    goto :goto_0
.end method

.method public static newTaskThread(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)Lcom/asus/vibe/api/VibeApiTask;
    .locals 6
    .parameter "taskType"
    .parameter "param"
    .parameter "handler"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, threadName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 35
    .local v0, newTask:Lcom/asus/vibe/api/VibeApiTask;
    packed-switch p0, :pswitch_data_0

    .line 97
    :goto_0
    new-instance v2, Lcom/asus/vibe/api/VibeApiTask$TaskThread;

    invoke-direct {v2, v0, v1}, Lcom/asus/vibe/api/VibeApiTask$TaskThread;-><init>(Lcom/asus/vibe/api/VibeApiTask;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/asus/vibe/api/VibeApiTask$TaskThread;->start()V

    move-object v2, v0

    .line 98
    :goto_1
    return-object v2

    .line 37
    :pswitch_0
    const-string v1, "IPINFO"

    .line 38
    new-instance v0, Lcom/asus/vibe/api/VibeApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/VibeApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .line 39
    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto :goto_0

    .line 42
    :pswitch_1
    const-string v1, "AUTH"

    .line 43
    new-instance v0, Lcom/asus/vibe/api/VibeApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/VibeApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .line 44
    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto :goto_0

    .line 47
    :pswitch_2
    const-string v1, "REQ_MAIN"

    .line 48
    new-instance v0, Lcom/asus/vibe/api/VibeApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/VibeApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .line 49
    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto :goto_0

    .line 52
    :pswitch_3
    iget v2, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v2, v5, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 53
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_SUB: Main "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    iget v2, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v2, v4, :cond_2

    .line 56
    new-instance v0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/cms/VibeCmsApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto :goto_0

    .line 53
    :cond_1
    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    goto :goto_2

    .line 58
    :cond_2
    new-instance v0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/premium/VibePremiumApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .line 60
    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto :goto_0

    .line 63
    :pswitch_4
    iget v2, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v2, v5, :cond_3

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_CONT: action=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v0, Lcom/asus/vibe/favorite/VibeFavoriteTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/favorite/VibeFavoriteTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto/16 :goto_0

    .line 66
    :cond_3
    iget v2, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v2, v4, :cond_4

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_CONT: Sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    new-instance v0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/cms/VibeCmsApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto/16 :goto_0

    .line 70
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_CONT: Sub "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    new-instance v0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/premium/VibePremiumApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .line 73
    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto/16 :goto_0

    .line 76
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_DETAIL: Cont "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    iget v2, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v2, v5, :cond_5

    .line 78
    new-instance v0, Lcom/asus/vibe/favorite/VibeFavoriteTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/favorite/VibeFavoriteTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto/16 :goto_0

    .line 79
    :cond_5
    iget v2, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v2, v4, :cond_6

    .line 80
    new-instance v0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/cms/VibeCmsApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto/16 :goto_0

    .line 82
    :cond_6
    new-instance v0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/premium/VibePremiumApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .line 84
    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto/16 :goto_0

    .line 87
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_PACKAGE: Cont "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Cont;->mContentName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/premium/VibePremiumApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .line 89
    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto/16 :goto_0

    .line 92
    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_ORDER: Pack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Package;->mPrice:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    iget-object v3, v3, Lcom/asus/vibe/item/VibeItem_Package;->mCurrency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    new-instance v0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;

    .end local v0           #newTask:Lcom/asus/vibe/api/VibeApiTask;
    invoke-direct {v0, p0, p1, p2}, Lcom/asus/vibe/api/premium/VibePremiumApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .restart local v0       #newTask:Lcom/asus/vibe/api/VibeApiTask;
    goto/16 :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 285
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/asus/vibe2/debug/MemDebug;->remove(Ljava/lang/Object;)V

    const-string v0, "ASUS@Vibe_Mem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " finalized!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 287
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v8, -0x66

    const/4 v11, 0x0

    const/16 v7, -0x65

    .line 130
    iput v11, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    .line 131
    iput-object v12, p0, Lcom/asus/vibe/api/VibeApiTask;->mResult:Ljava/lang/Object;

    .line 132
    const/4 v4, 0x0

    .line 133
    .local v4, response:Ljava/io/File;
    iget v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mTaskType:I

    packed-switch v6, :pswitch_data_0

    .line 244
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 245
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 247
    :cond_1
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_2

    .line 248
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/asus/vibe/api/VibeApiTask;->mHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/asus/vibe/api/VibeApiTask;->mTaskType:I

    iget v9, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    iget-object v10, p0, Lcom/asus/vibe/api/VibeApiTask;->mResult:Ljava/lang/Object;

    invoke-virtual {v7, v8, v9, v11, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    :cond_2
    iput-object v12, p0, Lcom/asus/vibe/api/VibeApiTask;->mHandler:Landroid/os/Handler;

    .line 251
    :cond_3
    return-void

    .line 135
    :pswitch_0
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 136
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v6}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->getIpInfo(Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v4

    .line 137
    if-nez v4, :cond_4

    .line 138
    iput v7, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto :goto_0

    .line 141
    :cond_4
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 142
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v4, v6}, Lcom/asus/vibe/api/cms/VibeCmsXmlParser;->parseIpInfo(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, region:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 144
    iput v8, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto :goto_0

    .line 147
    :cond_5
    iput-object v3, p0, Lcom/asus/vibe/api/VibeApiTask;->mResult:Ljava/lang/Object;

    .line 150
    if-eqz v4, :cond_6

    .line 151
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 153
    :cond_6
    iput-object v3, p0, Lcom/asus/vibe/api/VibeApiTask;->mResult:Ljava/lang/Object;

    .line 154
    iput v11, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto :goto_0

    .line 158
    .end local v3           #region:Ljava/lang/String;
    :pswitch_1
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getServiceGatewayAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 159
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 160
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v6}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->postServiceGateway(Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v4

    .line 161
    if-nez v4, :cond_7

    .line 162
    iput v7, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto :goto_0

    .line 165
    :cond_7
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 166
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v4, v6}, Lcom/asus/vibe/api/cms/VibeCmsXmlParser;->parseServiceGateway(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/asus/vibe2/Vibe;->setServiceGatewayAddress(Ljava/lang/String;)V

    .line 167
    if-eqz v4, :cond_8

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 170
    :cond_8
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getServiceGatewayAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 171
    iput v8, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 175
    :cond_9
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibePremiumAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 176
    :cond_a
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 177
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v6}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->postRequestToken(Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v4

    .line 178
    if-nez v4, :cond_b

    .line 179
    iput v7, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 182
    :cond_b
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 183
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v4, v6}, Lcom/asus/vibe/api/cms/VibeCmsXmlParser;->parseToken(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, token:Ljava/lang/String;
    if-eqz v4, :cond_c

    .line 185
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 187
    :cond_c
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 188
    const/16 v6, -0x68

    iput v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 192
    .end local v5           #token:Ljava/lang/String;
    :cond_d
    iput v11, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 196
    :pswitch_2
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "11"

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibePremiumAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "mobileandroid3_0vibe2_0media"

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 199
    :cond_e
    const/16 v6, -0x64

    iput v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 203
    :cond_f
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 204
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v6}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->postPresentationGroup(Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v4

    .line 205
    if-nez v4, :cond_10

    .line 206
    iput v7, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 209
    :cond_10
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 210
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v4, v6}, Lcom/asus/vibe/api/cms/VibeCmsXmlParser;->parsePresentationGroups(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v1

    .line 211
    .local v1, cmsMainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    if-eqz v4, :cond_11

    .line 212
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 216
    :cond_11
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 217
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v6}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->postVibeAuth(Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v4

    .line 218
    if-nez v4, :cond_12

    .line 219
    iput v7, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 223
    :cond_12
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 224
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v4, v6}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseVibeAuth(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, authKey:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 226
    iput v8, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    .line 227
    if-eqz v4, :cond_0

    .line 228
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 232
    :cond_13
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 233
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v4, v6}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseMainCategory(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v2

    .line 234
    .local v2, premiumMainList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    if-eqz v4, :cond_14

    .line 235
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 238
    :cond_14
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v6}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v6

    if-nez v6, :cond_3

    .line 239
    iget-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v1, v2, v6}, Lcom/asus/vibe/api/VibeApiTask;->mergeMainCategories(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/vibe/api/VibeApiTask;->mResult:Ljava/lang/Object;

    .line 240
    iput v11, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe/api/VibeApiTask;->mHandler:Landroid/os/Handler;

    .line 125
    iget-object v0, p0, Lcom/asus/vibe/api/VibeApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/vibe/api/Interrupter;->set(Z)V

    .line 126
    const/16 v0, -0x69

    iput v0, p0, Lcom/asus/vibe/api/VibeApiTask;->mErrorCode:I

    .line 127
    return-void
.end method
