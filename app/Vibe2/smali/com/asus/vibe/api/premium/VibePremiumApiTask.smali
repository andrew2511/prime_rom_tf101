.class public Lcom/asus/vibe/api/premium/VibePremiumApiTask;
.super Lcom/asus/vibe/api/VibeApiTask;
.source "VibePremiumApiTask.java"


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
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v4, -0x65

    const/16 v3, -0x67

    const/16 v2, -0x64

    .line 23
    iput v6, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    .line 24
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, response:Ljava/io/File;
    iget v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mTaskType:I

    packed-switch v1, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 210
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mTaskType:I

    iget v4, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    iget-object v5, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    :cond_2
    return-void

    .line 59
    :pswitch_0
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-nez v1, :cond_3

    .line 60
    iput v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto :goto_0

    .line 63
    :cond_3
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibePremiumAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 64
    :cond_4
    iput v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto :goto_0

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v1, v2}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->postLoadSubCatResp(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v0

    .line 69
    if-nez v0, :cond_6

    .line 70
    iput v4, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto :goto_0

    .line 73
    :cond_6
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v1, v1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_9

    .line 75
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseSubCategories(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    .line 84
    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 85
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 87
    :cond_8
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 88
    iput v3, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto :goto_0

    .line 76
    :cond_9
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v1, v1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v1, v5, :cond_7

    .line 78
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseServiceProviders(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    goto :goto_1

    .line 93
    :pswitch_1
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    if-nez v1, :cond_b

    .line 94
    :cond_a
    iput v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 97
    :cond_b
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mContentUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 99
    :cond_c
    iput v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 102
    :cond_d
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 103
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v1, v2}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->postGetContent(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v0

    .line 104
    if-nez v0, :cond_e

    .line 105
    iput v4, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 108
    :cond_e
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v1, v1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    if-ne v1, v5, :cond_10

    .line 110
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1, v2}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseGetContent(Ljava/io/File;ZLcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    .line 114
    :goto_2
    if-eqz v0, :cond_f

    .line 115
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 117
    :cond_f
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 118
    iput v3, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 112
    :cond_10
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v6, v1}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseGetContent(Ljava/io/File;ZLcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    goto :goto_2

    .line 123
    :pswitch_2
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-nez v1, :cond_12

    .line 124
    :cond_11
    iput v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 127
    :cond_12
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mContentDetailUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 129
    :cond_13
    iput v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 132
    :cond_14
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v1, v2}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->postGetContentDetail(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v0

    .line 134
    if-nez v0, :cond_15

    .line 135
    iput v4, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 138
    :cond_15
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 139
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseGetContentDetail(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Lcom/asus/vibe/item/VibeItem_Detail;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    .line 140
    if-eqz v0, :cond_16

    .line 141
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    :cond_16
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 144
    iput v3, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 149
    :pswitch_3
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-nez v1, :cond_18

    .line 150
    :cond_17
    iput v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 153
    :cond_18
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mPackageUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 155
    :cond_19
    iput v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 158
    :cond_1a
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v1, v2}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->postGetPackage(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v0

    .line 160
    if-nez v0, :cond_1b

    .line 161
    iput v4, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 164
    :cond_1b
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 165
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseGetPackage(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    .line 166
    if-eqz v0, :cond_1c

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 169
    :cond_1c
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 170
    iput v3, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 175
    :pswitch_4
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    if-nez v1, :cond_1e

    .line 176
    :cond_1d
    iput v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 179
    :cond_1e
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibePremiumAuthKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {}, Lcom/asus/vibe2/Vibe;->loggedIn()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Package;->mPackageId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Package;->mPaymentUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Package;->mDescription:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 186
    :cond_1f
    iput v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 189
    :cond_20
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v2, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v1, v2}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->postOrderInfo(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;

    move-result-object v0

    .line 191
    if-nez v0, :cond_21

    .line 192
    iput v4, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 195
    :cond_21
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-virtual {v1}, Lcom/asus/vibe/api/Interrupter;->get()Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mInterrupter:Lcom/asus/vibe/api/Interrupter;

    invoke-static {v0, v1}, Lcom/asus/vibe/api/premium/VibePremiumXmlParser;->parseOrderInfo(Ljava/io/File;Lcom/asus/vibe/api/Interrupter;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    .line 197
    if-eqz v0, :cond_22

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 200
    :cond_22
    iget-object v1, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 201
    iput v3, p0, Lcom/asus/vibe/api/premium/VibePremiumApiTask;->mErrorCode:I

    goto/16 :goto_0

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
