.class public Lcom/android/exchange/adapter/ProvisionParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ProvisionParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;
    }
.end annotation


# instance fields
.field mIsSupportable:Z

.field mPolicyKey:Ljava/lang/String;

.field mPolicySet:Lcom/android/emailcommon/service/PolicySet;

.field mRemoteWipe:Z

.field private mService:Lcom/android/exchange/EasSyncService;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 1
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 37
    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    .line 38
    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 44
    iput-object p2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 45
    return-void
.end method

.method private parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    .locals 7
    .parameter "parser"
    .parameter "sps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 311
    const/4 v0, 0x1

    .line 313
    .local v0, enforceInactivityTimer:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 314
    .local v2, type:I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 349
    return-void

    .line 316
    :cond_1
    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 317
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    const-string v4, "name"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, name:Ljava/lang/String;
    const-string v4, "value"

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, value:Ljava/lang/String;
    const-string v4, "AEFrequencyValue"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 321
    if-eqz v0, :cond_0

    .line 322
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 323
    const/4 v4, 0x1

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    goto :goto_0

    .line 325
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    goto :goto_0

    .line 328
    :cond_3
    const-string v4, "AEFrequencyType"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 330
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    const/4 v0, 0x0

    goto :goto_0

    .line 333
    :cond_4
    const-string v4, "DeviceWipeThreshold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 334
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxPasswordFails:I

    goto :goto_0

    .line 335
    :cond_5
    const-string v4, "CodewordFrequency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 337
    const-string v4, "MinimumPasswordLength"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 338
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordLength:I

    goto/16 :goto_0

    .line 339
    :cond_6
    const-string v4, "PasswordComplexity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 341
    const/16 v4, 0x40

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    goto/16 :goto_0

    .line 343
    :cond_7
    const/16 v4, 0x20

    iput v4, p2, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    goto/16 :goto_0
.end method

.method private parsePolicies()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    :goto_0
    const/16 v0, 0x386

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 431
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x387

    if-ne v0, v1, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicy()V

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 437
    :cond_1
    return-void
.end method

.method private parsePolicy()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, policyType:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x387

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 403
    iget v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 424
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 405
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Policy type: "

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    goto :goto_0

    .line 412
    :pswitch_2
    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Policy status: "

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/exchange/EasSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :pswitch_3
    const-string v1, "MS-WAP-Provisioning-XML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocXml(Ljava/lang/String;)V

    goto :goto_0

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionData()V

    goto :goto_0

    .line 427
    :cond_1
    return-void

    .line 403
    :pswitch_data_0
    .packed-switch 0x388
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private parseProvisionData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    :goto_0
    const/16 v0, 0x38a

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 392
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    const/16 v1, 0x38d

    if-ne v0, v1, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocWbxml()V

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 398
    :cond_1
    return-void
.end method

.method private parseProvisionDocWbxml()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v5, 0x1

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, minPasswordLength:I
    const/4 v2, 0x0

    .line 71
    .local v2, passwordMode:I
    const/4 v3, 0x0

    .line 72
    .local v3, maxPasswordFails:I
    const/4 v4, 0x0

    .line 73
    .local v4, maxScreenLockTime:I
    const/4 v6, 0x0

    .line 74
    .local v6, passwordExpirationDays:I
    const/4 v7, 0x0

    .line 75
    .local v7, passwordHistory:I
    const/4 v8, 0x0

    .line 76
    .local v8, passwordComplexChars:I
    const/4 v9, 0x0

    .line 78
    .local v9, encryptionRequired:Z
    :cond_0
    :goto_0
    const/16 v0, 0x38d

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v0

    const/4 v12, 0x3

    if-eq v0, v12, :cond_2

    .line 79
    const/4 v10, 0x1

    .line 80
    .local v10, tagIsSupported:Z
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v0, :pswitch_data_0

    .line 206
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    .line 209
    :cond_1
    :goto_1
    if-nez v10, :cond_0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Policy not supported: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v12, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 211
    iput-boolean v13, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto :goto_0

    .line 82
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 83
    if-nez v2, :cond_1

    .line 84
    const/16 v2, 0x20

    goto :goto_1

    .line 89
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v1

    .line 90
    goto :goto_1

    .line 92
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 93
    const/16 v2, 0x40

    goto :goto_1

    .line 98
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v4

    .line 99
    goto :goto_1

    .line 101
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v3

    .line 102
    goto :goto_1

    .line 104
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v6

    .line 105
    goto :goto_1

    .line 107
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v7

    .line 108
    goto :goto_1

    .line 112
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    goto :goto_1

    .line 128
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const/4 v10, 0x0

    goto :goto_1

    .line 134
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v0

    const/4 v12, 0x2

    if-eq v0, v12, :cond_1

    .line 135
    const/4 v10, 0x0

    goto :goto_1

    .line 141
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 142
    const/4 v9, 0x1

    goto :goto_1

    .line 148
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    goto :goto_1

    .line 159
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 160
    const/4 v10, 0x0

    goto :goto_1

    .line 165
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 166
    const/4 v10, 0x0

    goto :goto_1

    .line 171
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v8

    .line 172
    goto :goto_1

    .line 178
    :pswitch_10
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto/16 :goto_1

    .line 184
    :pswitch_11
    iget v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->specifiesApplications(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 192
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 199
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 201
    .local v11, value:Ljava/lang/String;
    const-string v0, "-1"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 215
    .end local v10           #tagIsSupported:Z
    .end local v11           #value:Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/emailcommon/service/PolicySet;

    invoke-direct/range {v0 .. v9}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZIIIZ)V

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    .line 220
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    invoke-static {v0, v5}, Lcom/android/exchange/SecurityPolicyDelegate;->isSupported(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 221
    const-string v0, "SecurityPolicy reports PolicySet not supported."

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/ProvisionParser;->log(Ljava/lang/String;)V

    .line 222
    iput-boolean v13, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 224
    :cond_3
    return-void

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x38e
        :pswitch_1
        :pswitch_3
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_9
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_e
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_10
        :pswitch_12
        :pswitch_9
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_10
        :pswitch_10
        :pswitch_9
        :pswitch_9
        :pswitch_10
        :pswitch_9
        :pswitch_11
        :pswitch_0
        :pswitch_11
    .end packed-switch
.end method

.method private parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    .locals 4
    .parameter "parser"
    .parameter "sps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    .line 355
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "characteristic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 364
    return-void

    .line 357
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 358
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, name:Ljava/lang/String;
    const-string v2, "characteristic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V

    goto :goto_0
.end method

.method private parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)Z
    .locals 8
    .parameter "parser"
    .parameter "sps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 288
    const/4 v1, 0x1

    .line 290
    .local v1, passwordRequired:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v3

    .line 291
    .local v3, type:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "characteristic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 306
    return v1

    .line 293
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 294
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, tagName:Ljava/lang/String;
    const-string v5, "parm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 296
    const-string v5, "name"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, name:Ljava/lang/String;
    const-string v5, "4131"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 298
    const-string v5, "value"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 299
    .local v4, value:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 300
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    .locals 5
    .parameter "parser"
    .parameter "sps"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 370
    .local v2, type:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wap-provisioningdoc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 388
    :goto_0
    return-void

    .line 372
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 373
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 374
    .local v1, name:Ljava/lang/String;
    const-string v3, "characteristic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 375
    const/4 v3, 0x0

    const-string v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, atype:Ljava/lang/String;
    const-string v3, "SecurityPolicy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 381
    :cond_2
    const-string v3, "Registry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V

    goto :goto_0
.end method

.method private specifiesApplications(I)Z
    .locals 3
    .parameter "endTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, specifiesApplications:Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 235
    iget v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .line 238
    :pswitch_1
    const/4 v0, 0x1

    .line 239
    goto :goto_0

    .line 244
    :cond_0
    return v0

    .line 235
    :pswitch_data_0
    .packed-switch 0x3b8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearUnsupportedPolicies()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v0, v0, Lcom/android/exchange/EasSyncService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    invoke-static {v0, v1}, Lcom/android/exchange/SecurityPolicyDelegate;->clearUnsupportedPolicies(Landroid/content/Context;Lcom/android/emailcommon/service/PolicySet;)Lcom/android/emailcommon/service/PolicySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 66
    return-void
.end method

.method public getPolicyKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicySet()Lcom/android/emailcommon/service/PolicySet;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    return-object v0
.end method

.method public getRemoteWipe()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    return v0
.end method

.method public hasSupportablePolicySet()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 441
    const/4 v0, 0x0

    .line 442
    .local v0, res:Z
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v2

    const/16 v3, 0x385

    if-eq v2, v3, :cond_0

    .line 443
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 448
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->getValueInt()I

    move-result v1

    .line 449
    .local v1, status:I
    iget-object v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v3, "Provision status: "

    invoke-virtual {v2, v3, v1}, Lcom/android/exchange/EasSyncService;->userLog(Ljava/lang/String;I)V

    .line 450
    if-ne v1, v5, :cond_1

    move v0, v5

    .line 445
    .end local v1           #status:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ProvisionParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 446
    iget v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->tag:I

    sparse-switch v2, :sswitch_data_0

    .line 460
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ProvisionParser;->skipTag()V

    goto :goto_0

    .restart local v1       #status:I
    :cond_1
    move v0, v4

    .line 450
    goto :goto_0

    .line 453
    .end local v1           #status:I
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicies()V

    goto :goto_0

    .line 457
    :sswitch_2
    iput-boolean v5, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    goto :goto_0

    .line 463
    :cond_2
    return v0

    .line 446
    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_1
        0x38b -> :sswitch_0
        0x38c -> :sswitch_2
    .end sparse-switch
.end method

.method parseProvisionDocXml(Ljava/lang/String;)V
    .locals 19
    .parameter "doc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    new-instance v16, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;-><init>(Lcom/android/exchange/adapter/ProvisionParser;)V

    .line 261
    .local v16, sps:Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v14

    .line 262
    .local v14, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 263
    .local v15, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v4, "UTF-8"

    invoke-interface {v15, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 264
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v18

    .line 265
    .local v18, type:I
    if-nez v18, :cond_0

    .line 266
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .line 267
    const/4 v3, 0x2

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 268
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 269
    .local v17, tagName:Ljava/lang/String;
    const-string v3, "wap-provisioningdoc"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/ProvisionParser;->parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v17           #tagName:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/emailcommon/service/PolicySet;

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMinPasswordLength:I

    move v4, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordMode:I

    move v5, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxPasswordFails:I

    move v6, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mMaxScreenLockTime:I

    move v7, v0

    const/4 v8, 0x1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordExpiration:I

    move v9, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordHistory:I

    move v10, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/exchange/adapter/ProvisionParser$ShadowPolicySet;->mPasswordComplexChars:I

    move v11, v0

    const/4 v12, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/android/emailcommon/service/PolicySet;-><init>(IIIIZIIIZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/exchange/adapter/ProvisionParser;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    .line 281
    return-void

    .line 274
    .end local v14           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v15           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v18           #type:I
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 275
    .local v13, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
.end method
