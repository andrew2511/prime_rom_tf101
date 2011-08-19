.class public Lcom/asus/vibe/api/premium/VibePremiumXmlReq;
.super Ljava/lang/Object;
.source "VibePremiumXmlReq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addVibePremiumHeaders(Lcom/asus/vibe/api/VibeHttpRequest;Lcom/asus/vibe/item/VibeParam;)Lcom/asus/vibe/api/VibeHttpRequest;
    .locals 2
    .parameter "request"
    .parameter "param"

    .prologue
    .line 105
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "maincategoryid"

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v0, v0, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 109
    const-string v0, "subcategoryid"

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_1
    const-string v0, "username"

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "locale"

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v0, "region"

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-object p0
.end method

.method public static genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;
    .locals 6
    .parameter "requestId"
    .parameter "param"

    .prologue
    .line 119
    packed-switch p0, :pswitch_data_0

    .line 207
    const/4 v4, 0x0

    :goto_0
    return-object v4

    .line 121
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8\"?><vibeauthreq version=\"1.0\"><clientappid>mobileandroid3_0vibe2_0media</clientappid><productname>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</productname>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<model>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</model>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<osset>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->getOSType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</osset>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<username>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</username>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</vibeauthreq>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 132
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8\"?><loadsubcatreq version=\"1.0\"><authkey>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibePremiumAuthKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</authkey>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<maincategoryid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryPremiumId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</maincategoryid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</loadsubcatreq>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 140
    :pswitch_2
    const/4 v0, 0x0

    .line 141
    .local v0, contentType:Ljava/lang/String;
    const-string v3, ""

    .line 142
    .local v3, username:Ljava/lang/String;
    const-string v2, ""

    .line 143
    .local v2, subscribed:Ljava/lang/String;
    iget-object v4, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v4, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    .line 144
    .local v1, subcategory:Ljava/lang/String;
    iget v4, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 145
    const-string v0, "free"

    .line 157
    :cond_0
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<getcontentrequest version=\"1.0\"><username>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</username>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<subcategoryid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</subcategoryid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<firstcontent></firstcontent>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<lastcontent></lastcontent>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<subscribed>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</subscribed>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<product></product>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<contenttype>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</contenttype>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<searchkey></searchkey>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<maincategory>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</maincategory>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</getcontentrequest>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 146
    :cond_1
    iget v4, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 148
    const-string v0, "premium"

    goto/16 :goto_1

    .line 149
    :cond_2
    iget v4, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 150
    const-string v0, "premium"

    .line 151
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 152
    const-string v2, "1"

    .line 153
    iget-object v4, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v4, v4, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const-string v1, ""

    goto/16 :goto_1

    .line 173
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #subcategory:Ljava/lang/String;
    .end local v2           #subscribed:Ljava/lang/String;
    .end local v3           #username:Ljava/lang/String;
    :pswitch_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<getcontentdetailrequest version=\"2.0\"><username>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</username>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<spcontentid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</spcontentid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<maincategory>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</maincategory>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</getcontentdetailrequest>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 182
    :pswitch_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<getpackagerequest version=\"1.0\"><spcontentid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</spcontentid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<maincategory>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</maincategory>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</getpackagerequest>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 190
    :pswitch_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<?xml version=\"1.0\" encoding=\"utf-8\"?><orderinforeq version=\"1.0\"><authkey>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibePremiumAuthKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</authkey>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<username>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</username>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<model>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->getModel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</model>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</locale>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</region>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<maincategory>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</maincategory>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<spcontentid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</spcontentid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<packageid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Package;->mPackageId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</packageid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<subcategoryid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</subcategoryid>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<paymenturl>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Package;->mPaymentUri:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</paymenturl>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<packagedes>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    iget-object v5, v5, Lcom/asus/vibe/item/VibeItem_Package;->mDescription:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</packagedes>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<ecaremetoken>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</ecaremetoken>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</orderinforeq>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOSType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "107"

    return-object v0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    return-object v0
.end method

.method public static postGetContent(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "param"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 58
    const-string v1, "ASUS@Vibe"

    const-string v2, "PremiumReq: request getContent..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    iget-object v2, p0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mContentUrl:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-static {v3, p0}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 63
    .local v0, getContentRequest:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-static {}, Lcom/asus/vibe2/Vibe;->isVibePremiumHeaderMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v0, p0}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->addVibePremiumHeaders(Lcom/asus/vibe/api/VibeHttpRequest;Lcom/asus/vibe/item/VibeParam;)Lcom/asus/vibe/api/VibeHttpRequest;

    move-result-object v0

    .line 66
    :cond_0
    invoke-virtual {v0, p1}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v4

    .line 67
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postGetContentDetail(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "param"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 71
    const-string v1, "ASUS@Vibe"

    const-string v2, "PremiumReq: request getContentDetail..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    iget-object v2, p0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mContentDetailUrl:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v3, p0}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 75
    .local v0, getContentDetailRequest:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-static {}, Lcom/asus/vibe2/Vibe;->isVibePremiumHeaderMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {v0, p0}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->addVibePremiumHeaders(Lcom/asus/vibe/api/VibeHttpRequest;Lcom/asus/vibe/item/VibeParam;)Lcom/asus/vibe/api/VibeHttpRequest;

    move-result-object v0

    .line 78
    :cond_0
    invoke-virtual {v0, p1}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v4

    .line 79
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postGetPackage(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "param"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 83
    const-string v1, "ASUS@Vibe"

    const-string v2, "PremiumReq: request getPackage..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    iget-object v2, p0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v2, v2, Lcom/asus/vibe/item/VibeItem_Sub;->mPackageUrl:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v3, p0}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 87
    .local v0, getPackageRequest:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-static {}, Lcom/asus/vibe2/Vibe;->isVibePremiumHeaderMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    invoke-static {v0, p0}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->addVibePremiumHeaders(Lcom/asus/vibe/api/VibeHttpRequest;Lcom/asus/vibe/item/VibeParam;)Lcom/asus/vibe/api/VibeHttpRequest;

    move-result-object v0

    .line 90
    :cond_0
    invoke-virtual {v0, p1}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v4

    .line 91
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postLoadSubCatResp(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "param"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 49
    const-string v1, "ASUS@Vibe"

    const-string v2, "PremiumReq: request loadSubCat..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibePremiumAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/client/webService/premium/loadsubcatresp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, p0}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 53
    .local v0, loadSubCatRequest:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-virtual {v0, p1}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 54
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postOrderInfo(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "param"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 95
    const-string v1, "ASUS@Vibe"

    const-string v2, "PremiumReq: request getOrderInfo..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibePremiumOrderProcessUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3, p0}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 99
    .local v0, getOrderInfoRequest:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-virtual {v0, p1}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 100
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postVibeAuth(Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 40
    const-string v1, "ASUS@Vibe"

    const-string v2, "PremiumReq: request vibeAuth..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibePremiumAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/client/webService/premium/vibeauthresp/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3, v4}, Lcom/asus/vibe/api/premium/VibePremiumXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 44
    .local v0, vibeAuthRequest:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-virtual {v0, p0}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 45
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method
