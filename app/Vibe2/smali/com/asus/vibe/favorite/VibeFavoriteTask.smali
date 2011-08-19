.class public Lcom/asus/vibe/favorite/VibeFavoriteTask;
.super Lcom/asus/vibe/api/VibeApiTask;
.source "VibeFavoriteTask.java"


# direct methods
.method public constructor <init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V
    .locals 0
    .parameter "taskType"
    .parameter "param"
    .parameter "handler"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/vibe/api/VibeApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x0

    const/16 v1, -0x64

    const/16 v3, -0x67

    .line 21
    iput v5, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mErrorCode:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mResult:Ljava/lang/Object;

    .line 23
    iget v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mTaskType:I

    packed-switch v0, :pswitch_data_0

    .line 49
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mTaskType:I

    iget v3, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mErrorCode:I

    iget-object v4, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mResult:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    :cond_1
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v0, v0, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    :cond_2
    iput v1, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mErrorCode:I

    goto :goto_0

    .line 29
    :cond_3
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v0}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1, v2}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->queryFavoriteList(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mResult:Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 32
    iput v3, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mErrorCode:I

    goto :goto_0

    .line 37
    :pswitch_1
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v0, v0, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 38
    :cond_4
    iput v1, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mErrorCode:I

    goto :goto_0

    .line 41
    :cond_5
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v0}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1, v2}, Lcom/asus/vibe/favorite/VibeFavoriteDatabase;->queryFavorite(Landroid/content/Context;Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeParam;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mResult:Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mResult:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 44
    iput v3, p0, Lcom/asus/vibe/favorite/VibeFavoriteTask;->mErrorCode:I

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
