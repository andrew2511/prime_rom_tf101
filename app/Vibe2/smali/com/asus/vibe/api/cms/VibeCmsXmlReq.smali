.class public Lcom/asus/vibe/api/cms/VibeCmsXmlReq;
.super Ljava/lang/Object;
.source "VibeCmsXmlReq.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addVibeFreeHeader(Lcom/asus/vibe/api/VibeHttpRequest;)Lcom/asus/vibe/api/VibeHttpRequest;
    .locals 2
    .parameter "request"

    .prologue
    .line 106
    const-string v0, "x-application"

    const-string v1, "11"

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "x-version"

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "x-os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v0, "x-manufact"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v0, "x-product"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "x-token"

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object p0
.end method

.method public static genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;
    .locals 3
    .parameter "requestId"
    .parameter "param"

    .prologue
    .line 116
    packed-switch p0, :pswitch_data_0

    .line 168
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 118
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?><requestservicegateway><userid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</userid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getMd5password()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<language>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</language>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<service>1</service><time>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</time></requestservicegateway>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 125
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?><aaa><userid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</userid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getMd5password()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<time>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</time></aaa>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 131
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<presentationGroup><locale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</locale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<region>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</region>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</presentationGroup>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 137
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<presentationcontents><presentationid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</presentationid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<locale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</locale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<region>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</region>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</presentationcontents>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<tablist><presentationid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Main;->mMainCategoryCmsId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</presentationid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<locale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</locale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<region>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</region>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</tablist>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 151
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<indexcontents><subcategoryid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Sub;->mSubCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</subcategoryid>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<locale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</locale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<region>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</region>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<pagesize>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</pagesize>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<currpageno>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</currpageno>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</indexcontents>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 160
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<getcontent><content>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iget-object v1, v1, Lcom/asus/vibe/item/VibeItem_Cont;->mSPContentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</content>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<locale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</locale>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<region>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</region>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</getcontent>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static getIpInfo(Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 4
    .parameter "interrupter"

    .prologue
    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "GET"

    const-string v2, "http://www.asusvibe.com/client/ipinfo/"

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 27
    .local v0, requestIpInfo:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-virtual {v0, p0}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v3

    .line 28
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postGetContent(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "param"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 96
    const-string v1, "ASUS@Vibe"

    const-string v2, "CmsReq: request getcontent..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rss/getcontent/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3, p0}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 100
    .local v0, requestGetContent:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-static {v0}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->addVibeFreeHeader(Lcom/asus/vibe/api/VibeHttpRequest;)Lcom/asus/vibe/api/VibeHttpRequest;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 102
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postIndexContents(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "param"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 86
    const-string v1, "ASUS@Vibe"

    const-string v2, "CmsReq: request indexContents..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rss/indexcontents/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3, p0}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 90
    .local v0, requestIndexContents:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-static {v0}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->addVibeFreeHeader(Lcom/asus/vibe/api/VibeHttpRequest;)Lcom/asus/vibe/api/VibeHttpRequest;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 92
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postPresentationContents(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "param"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 76
    const-string v1, "ASUS@Vibe"

    const-string v2, "CmsReq: request presentationContents..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rss/presentationcontents/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3, p0}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 80
    .local v0, requestPresentationContents:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-static {v0}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->addVibeFreeHeader(Lcom/asus/vibe/api/VibeHttpRequest;)Lcom/asus/vibe/api/VibeHttpRequest;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 82
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postPresentationGroup(Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 54
    const-string v1, "ASUS@Vibe"

    const-string v2, "CmsReq: request presentationGroup..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rss/presentationgroup/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3, v4}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 59
    .local v0, requestPresentationGroup:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-static {v0}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->addVibeFreeHeader(Lcom/asus/vibe/api/VibeHttpRequest;)Lcom/asus/vibe/api/VibeHttpRequest;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p0}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 61
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postRequestToken(Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 41
    invoke-static {}, Lcom/asus/vibe2/Vibe;->getServiceGatewayAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 50
    :goto_0
    return-object v1

    .line 44
    :cond_0
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getServiceGatewayAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/member/requesttoken/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v4}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 48
    .local v0, requestToken:Lcom/asus/vibe/api/VibeHttpRequest;
    const-string v1, "Set-Cookie"

    const-string v2, "OMNISTORE_VER=1.0;path=/"

    invoke-virtual {v0, v1, v2}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v4

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postServiceGateway(Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 32
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    const-string v2, "https://sp.yostore.net/member/requestservicegateway/"

    const/4 v3, 0x0

    invoke-static {v3, v4}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 35
    .local v0, requestServiceGateway:Lcom/asus/vibe/api/VibeHttpRequest;
    const-string v1, "Set-Cookie"

    const-string v2, "OMNISTORE_VER=1.0;path=/"

    invoke-virtual {v0, v1, v2}, Lcom/asus/vibe/api/VibeHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, p0}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 37
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static postTabList(Lcom/asus/vibe/item/VibeParam;Lcom/asus/vibe/api/Interrupter;)Ljava/io/File;
    .locals 5
    .parameter "param"
    .parameter "interrupter"

    .prologue
    const/4 v4, 0x0

    .line 65
    const-string v1, "ASUS@Vibe"

    const-string v2, "CmsReq: request tabList..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/asus/vibe/api/VibeHttpRequest;

    const-string v1, "POST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getVibeFreeAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rss/tablist/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, p0}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->genXmlPost(ILcom/asus/vibe/item/VibeParam;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/asus/vibe/api/VibeHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 70
    .local v0, requestTabList:Lcom/asus/vibe/api/VibeHttpRequest;
    invoke-static {v0}, Lcom/asus/vibe/api/cms/VibeCmsXmlReq;->addVibeFreeHeader(Lcom/asus/vibe/api/VibeHttpRequest;)Lcom/asus/vibe/api/VibeHttpRequest;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Lcom/asus/vibe/api/VibeHttpRequest;->execute(Lcom/asus/vibe/api/Interrupter;)I

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v4

    .line 72
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/asus/vibe/api/VibeHttpRequest;->getFileResponse()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method
