.class public Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;
.super Ljava/lang/Object;
.source "DeviceAuthorizationManager.java"


# static fields
.field private static final CLIENT_NAME:Ljava/lang/String; = "My Phone"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static authorize()Lcom/newspaperdirect/pressreader/android/core/Service;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 23
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getDefault()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v12

    .line 24
    .local v12, result:Lcom/newspaperdirect/pressreader/android/core/Service;
    if-eqz v12, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-object v12

    .line 25
    :cond_1
    new-instance v10, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v0, "register-device"

    invoke-direct {v10, v0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 27
    .local v10, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<service-name>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</service-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 28
    const-string v1, "<authentication>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 29
    const-string v1, "<user-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getDeviceUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</user-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    const-string v1, "<user-password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->createDevicePassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</user-password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    const-string v1, "<client-number>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getClientNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</client-number>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    const-string v1, "<device-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</device-id>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    const-string v1, "</authentication>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 34
    const-string v1, "<client-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "My Phone"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</client-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 35
    const-string v1, "<resend-issues>0</resend-issues>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 36
    .local v11, requestBody:Ljava/lang/String;
    invoke-virtual {v10, v11}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 37
    new-instance v13, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v13}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 38
    .local v13, serviceName:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    new-instance v7, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v7}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 39
    .local v7, activationNumber:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    new-instance v14, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v14}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 40
    .local v14, serviceUrl:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    new-instance v8, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v8}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 41
    .local v8, applicationUrl:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Ljava/lang/String;>;"
    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v0

    const-string v1, "service-name"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$1;

    invoke-direct {v1, v13}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 46
    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v0

    const-string v1, "activation-number"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$2;

    invoke-direct {v1, v7}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 51
    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v0

    const-string v1, "service-url"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$3;

    invoke-direct {v1, v14}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 56
    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v0

    const-string v1, "baseapplication-url"

    invoke-virtual {v0, v1}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$4;

    invoke-direct {v1, v8}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v0, v1}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 62
    :try_start_0
    invoke-virtual {v10}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    iget-object v0, v13, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, v13, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, v7, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, v14, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 69
    :cond_2
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;-><init>()V

    throw v0

    .line 64
    :catch_0
    move-exception v9

    .line 65
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v9           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "My Phone"

    iget-object v2, v14, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v8, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getDeviceUserName()Ljava/lang/String;

    move-result-object v4

    .line 71
    iget-object v5, v7, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->Implicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    .line 70
    invoke-static/range {v0 .. v6}, Lcom/newspaperdirect/pressreader/android/core/Service;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v12

    .line 72
    if-eqz v12, :cond_0

    .line 73
    invoke-virtual {v12}, Lcom/newspaperdirect/pressreader/android/core/Service;->setActive()V

    goto/16 :goto_0
.end method

.method public static authorize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Service;
    .locals 7
    .parameter "serviceName"
    .parameter "userName"
    .parameter "password"
    .parameter "clientName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->get(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v0

    .line 101
    .local v0, result:Lcom/newspaperdirect/pressreader/android/core/Service;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/Service;->isExplicitlyActivated()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object p0, v0

    .end local v0           #result:Lcom/newspaperdirect/pressreader/android/core/Service;
    .local p0, result:Lcom/newspaperdirect/pressreader/android/core/Service;
    move-object p1, v0

    .line 130
    .end local p0           #result:Lcom/newspaperdirect/pressreader/android/core/Service;
    .end local p2
    .local p1, result:Lcom/newspaperdirect/pressreader/android/core/Service;
    :goto_0
    return-object p1

    .line 104
    .restart local v0       #result:Lcom/newspaperdirect/pressreader/android/core/Service;
    .local p0, serviceName:Ljava/lang/String;
    .local p1, userName:Ljava/lang/String;
    .restart local p2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #result:Lcom/newspaperdirect/pressreader/android/core/Service;
    const-string v1, "<service-name>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</service-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    const-string v1, "<authentication>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 106
    const-string v1, "<user-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->XmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</user-name>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 107
    const-string v1, "<user-password>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->XmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "</user-password>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 108
    const-string v0, "<client-number>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getClientNumber()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "</client-number>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 109
    const-string v0, "</authentication>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 110
    const-string v0, "<client-name>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p3}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->XmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "</client-name>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 111
    const-string v0, "<resend-issues>0</resend-issues>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 112
    .local p2, requestBody:Ljava/lang/String;
    const-string v0, "universal-register"

    invoke-static {v0, p2}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 113
    .local p2, document:Lorg/w3c/dom/Document;
    const-string v0, "response"

    invoke-static {p2, v0}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->getElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    .line 114
    .local p2, response:Lorg/w3c/dom/Element;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    :cond_1
    new-instance p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;

    .end local p0           #serviceName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;-><init>()V

    throw p0

    .line 116
    .restart local p0       #serviceName:Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->getElementsMap(Lorg/w3c/dom/Node;)Ljava/util/HashMap;

    move-result-object p2

    .line 117
    .local p2, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "service-name"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    new-instance p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;

    .end local p0           #serviceName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;-><init>()V

    throw p0

    .line 119
    .restart local p0       #serviceName:Ljava/lang/String;
    :cond_3
    const-string v0, "activation-number"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 120
    .local v5, activationNumber:Ljava/lang/String;
    const-string v0, "service-url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    .local v2, serviceUrl:Ljava/lang/String;
    const-string v0, "baseapplication-url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, applicationUrl:Ljava/lang/String;
    if-eqz v5, :cond_4

    if-nez v2, :cond_5

    .line 123
    :cond_4
    new-instance p0, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;

    .end local p0           #serviceName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;-><init>()V

    throw p0

    .line 124
    .restart local p0       #serviceName:Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getDefault()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object p2

    .line 125
    .local p2, defaultService:Lcom/newspaperdirect/pressreader/android/core/Service;
    if-eqz p2, :cond_6

    invoke-static {p2}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;->deauthorize(Lcom/newspaperdirect/pressreader/android/core/Service;)V

    .line 127
    :cond_6
    sget-object v6, Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;->Explicit:Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;

    move-object v0, p0

    move-object v1, p3

    move-object v4, p1

    .line 126
    invoke-static/range {v0 .. v6}, Lcom/newspaperdirect/pressreader/android/core/Service;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/Service$ActivationTypes;)Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object p0

    .line 128
    .local p0, result:Lcom/newspaperdirect/pressreader/android/core/Service;
    if-eqz p0, :cond_7

    .line 129
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->setActive()V

    :cond_7
    move-object p1, p0

    .line 130
    .end local p0           #result:Lcom/newspaperdirect/pressreader/android/core/Service;
    .local p1, result:Lcom/newspaperdirect/pressreader/android/core/Service;
    goto/16 :goto_0
.end method

.method public static deauthorize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;->isAuthorized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v0

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;->deauthorize(Lcom/newspaperdirect/pressreader/android/core/Service;)V

    .line 136
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DeviceAuthorizationManager;->authorize()Lcom/newspaperdirect/pressreader/android/core/Service;

    goto :goto_0
.end method

.method private static deauthorize(Lcom/newspaperdirect/pressreader/android/core/Service;)V
    .locals 3
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->get(Lcom/newspaperdirect/pressreader/android/core/Service;)Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/catalog/Catalog;->delete()V

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<service-name>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->XmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</service-name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 144
    const-string v2, "<authentication>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    const-string v2, "<user-name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->XmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</user-name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 146
    const-string v2, "<client-number>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getClientNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</client-number>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string v2, "<activation-number>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActivationNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</activation-number>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    const-string v2, "</authentication>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string v2, "<client-name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->getClientName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->XmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</client-name>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, requestBody:Ljava/lang/String;
    const-string v1, "unregister"

    invoke-static {v1, v0}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    .line 151
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/Service;->delete()V

    .line 152
    return-void
.end method

.method public static getAvailableServices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "userName"
    .parameter "password"
    .parameter "clientName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$ResponseException;,
            Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<authentication><user-name>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->XmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</user-name>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 82
    const-string v5, "<user-password>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->XmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</user-password>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 83
    const-string v5, "<client-number>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/GeneralInfo;->getClientNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</client-number>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 84
    const-string v5, "</authentication>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 85
    const-string v5, "<client-name>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->XmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</client-name>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    const-string v5, "<resend-issues>0</resend-issues>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, requestBody:Ljava/lang/String;
    const-string v4, "universal-register"

    invoke-static {v4, v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 88
    .local v0, document:Lorg/w3c/dom/Document;
    const-string v4, "response"

    invoke-static {v0, v4}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->getElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 89
    .local v2, response:Lorg/w3c/dom/Element;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v4

    if-nez v4, :cond_1

    .line 90
    :cond_0
    new-instance v4, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;

    invoke-direct {v4}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper$InvalidResponseException;-><init>()V

    throw v4

    .line 91
    :cond_1
    const-string v4, "service-name"

    invoke-static {v2, v4}, Lcom/newspaperdirect/pressreader/android/core/XmlHelper;->getChildrensValues(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 92
    .local v3, services:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 93
    :cond_2
    const/4 v4, 0x0

    .line 95
    :goto_0
    return-object v4

    :cond_3
    move-object v4, v3

    goto :goto_0
.end method

.method public static isAuthorized()Z
    .locals 3

    .prologue
    .line 156
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getActive()Lcom/newspaperdirect/pressreader/android/core/Service;

    move-result-object v1

    .line 157
    .local v1, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/Service;->isExplicitlyActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    .line 158
    .local v0, result:Z
    :goto_0
    return v0

    .line 157
    .end local v0           #result:Z
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method
