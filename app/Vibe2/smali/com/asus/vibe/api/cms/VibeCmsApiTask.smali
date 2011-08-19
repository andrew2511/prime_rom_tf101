.class public Lcom/asus/vibe/api/cms/VibeCmsApiTask;
.super Lcom/asus/vibe/api/VibeApiTask;
.source "VibeCmsApiTask.java"


# direct methods
.method public constructor <init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V
    .locals 0
    .parameter "taskType"
    .parameter "param"
    .parameter "handler"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/vibe/api/VibeApiTask;-><init>(ILcom/asus/vibe/item/VibeParam;Landroid/os/Handler;)V

    .line 19
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v4, -0x65

    const/16 v3, -0x67

    const/16 v2, -0x64

    .line 23
    iput v6, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mResult:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, response:Ljava/io/File;
    iget v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mTaskType:I

    packed-switch v1, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mTaskType:I

    iget v4, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    iget-object v5, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mResult:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 143
    :cond_2
    return-void

    .line 47
    :pswitch_0
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-nez v1, :cond_3

    .line 48
    iput v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto :goto_0

    .line 51
    :cond_3
    const-string v1, "11"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 53
    :cond_4
    iput v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto :goto_0

    .line 56
    :cond_5
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v1, v2}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->postTabList(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v0

    .line 58
    if-nez v0, :cond_6

    .line 59
    iput v4, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto :goto_0

    .line 62
    :cond_6
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1}, Lcom/asus/vibe/api/cms/VibeCmsXmlParser;->parseSubCategory(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mResult:Ljava/lang/Object;

    .line 64
    if-eqz v0, :cond_7

    .line 65
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 67
    :cond_7
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 68
    iput v3, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto :goto_0

    .line 73
    :pswitch_1
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    if-nez v1, :cond_9

    .line 74
    :cond_8
    iput v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 77
    :cond_9
    const-string v1, "11"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 79
    :cond_b
    iput v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 82
    :cond_c
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 84
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 85
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v1, v2}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->postPresentationContents(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v0

    .line 89
    :goto_1
    if-nez v0, :cond_e

    .line 90
    iput v4, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 87
    :cond_d
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v1, v2}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->postIndexContents(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .line 93
    :cond_e
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 94
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1}, Lcom/asus/vibe/api/cms/VibeCmsXmlParser;->parseContent(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mResult:Ljava/lang/Object;

    .line 95
    if-eqz v0, :cond_f

    .line 96
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 98
    :cond_f
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 99
    iput v3, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 104
    :pswitch_2
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-nez v1, :cond_10

    .line 105
    iput v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 115
    :cond_10
    const-string v1, "11"

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 117
    :cond_11
    iput v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 120
    :cond_12
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 121
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v1, v2}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->postGetContent(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v0

    .line 122
    if-nez v0, :cond_13

    .line 123
    iput v4, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 126
    :cond_13
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1}, Lcom/asus/vibe/api/cms/VibeCmsXmlParser;->parseContentDetail(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeItem_Detail;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mResult:Ljava/lang/Object;

    .line 128
    if-eqz v0, :cond_14

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 131
    :cond_14
    iget-object v1, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 132
    iput v3, p0, Lcom/asus/vibe/api/cms/VibeCmsApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 26
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
