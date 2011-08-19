.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .registers 5
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 50
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 120
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 121
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 124
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .registers 29
    .parameter "pdu"

    .prologue
    .line 140
    const/4 v12, 0x0

    .line 141
    .local v12, index:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .local v13, index:I
    aget-byte v24, p1, v12

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 142
    .local v21, transactionId:I
    add-int/lit8 v12, v13, 0x1

    .end local v13           #index:I
    .restart local v12       #index:I
    aget-byte v24, p1, v13

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 143
    .local v17, pduType:I
    const/4 v10, 0x0

    .line 145
    .local v10, headerLength:I
    const/16 v24, 0x6

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_29

    const/16 v24, 0x7

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_29

    .line 148
    const/16 v24, 0x1

    .line 274
    :goto_28
    return v24

    .line 151
    :cond_29
    new-instance v24, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v24

    if-nez v24, :cond_4a

    .line 161
    const/16 v24, 0x2

    goto :goto_28

    .line 163
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move v10, v0

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v24

    add-int/lit8 v12, v24, 0x2

    .line 166
    move v11, v12

    .line 180
    .local v11, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v24

    if-nez v24, :cond_77

    .line 182
    const/16 v24, 0x2

    goto :goto_28

    .line 185
    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v16

    .line 186
    .local v16, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    .line 187
    .local v5, binaryContentType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v24

    add-int v12, v12, v24

    .line 189
    new-array v9, v10, [B

    .line 190
    .local v9, header:[B
    const/16 v24, 0x0

    move-object v0, v9

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move v1, v11

    move-object v2, v9

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    if-eqz v16, :cond_126

    const-string v24, "application/vnd.wap.coc"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_126

    .line 195
    move-object/from16 v15, p1

    .line 208
    .local v15, intentData:[B
    :goto_ba
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    add-int v25, v12, v10

    const/16 v26, 0x1

    sub-int v25, v25, v26

    move-object/from16 v0, v24

    move v1, v12

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v24

    if-eqz v24, :cond_1a4

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move v12, v0

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v22

    .line 212
    .local v22, wapAppId:Ljava/lang/String;
    if-nez v22, :cond_10a

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    .line 216
    :cond_10a
    if-nez v16, :cond_147

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v7, v24

    .line 221
    .local v7, contentType:Ljava/lang/String;
    :goto_112
    const/16 v20, 0x1

    .line 222
    .local v20, processFurther:Z
    :try_start_114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;
    :try_end_11d
    .catch Landroid/os/RemoteException; {:try_start_114 .. :try_end_11d} :catch_1a3

    move-result-object v23

    .line 224
    .local v23, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v23, :cond_14a

    .line 242
    :cond_120
    :goto_120
    if-nez v20, :cond_1a4

    .line 243
    const/16 v24, 0x1

    goto/16 :goto_28

    .line 197
    .end local v7           #contentType:Ljava/lang/String;
    .end local v15           #intentData:[B
    .end local v20           #processFurther:Z
    .end local v22           #wapAppId:Ljava/lang/String;
    .end local v23           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_126
    add-int v8, v11, v10

    .line 198
    .local v8, dataIndex:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v24, v0

    sub-int v24, v24, v8

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object v15, v0

    .line 199
    .restart local v15       #intentData:[B
    const/16 v24, 0x0

    move-object v0, v15

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move v1, v8

    move-object v2, v15

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_ba

    .end local v8           #dataIndex:I
    .restart local v22       #wapAppId:Ljava/lang/String;
    :cond_147
    move-object/from16 v7, v16

    .line 216
    goto :goto_112

    .line 227
    .restart local v7       #contentType:Ljava/lang/String;
    .restart local v20       #processFurther:Z
    .restart local v23       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_14a
    :try_start_14a
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 228
    .local v14, intent:Landroid/content/Intent;
    const-string/jumbo v24, "transactionId"

    move-object v0, v14

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v24, "pduType"

    move-object v0, v14

    move-object/from16 v1, v24

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    const-string v24, "header"

    move-object v0, v14

    move-object/from16 v1, v24

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 231
    const-string v24, "data"

    move-object v0, v14

    move-object/from16 v1, v24

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 232
    const-string v24, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v25

    move-object v0, v14

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 235
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object v2, v7

    move-object v3, v14

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I
    :try_end_193
    .catch Landroid/os/RemoteException; {:try_start_14a .. :try_end_193} :catch_1a3

    move-result v19

    .line 237
    .local v19, procRet:I
    and-int/lit8 v24, v19, 0x1

    if-lez v24, :cond_120

    const v24, 0x8000

    and-int v24, v24, v19

    if-nez v24, :cond_120

    .line 239
    const/16 v20, 0x0

    goto/16 :goto_120

    .line 245
    .end local v14           #intent:Landroid/content/Intent;
    .end local v19           #procRet:I
    .end local v23           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_1a3
    move-exception v24

    .line 251
    .end local v7           #contentType:Ljava/lang/String;
    .end local v20           #processFurther:Z
    .end local v22           #wapAppId:Ljava/lang/String;
    :cond_1a4
    if-nez v16, :cond_1aa

    .line 253
    const/16 v24, 0x2

    goto/16 :goto_28

    .line 258
    :cond_1aa
    const-string v24, "application/vnd.wap.mms-message"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_215

    .line 259
    const-string v18, "android.permission.RECEIVE_MMS"

    .line 264
    .local v18, permission:Ljava/lang/String;
    :goto_1b8
    new-instance v14, Landroid/content/Intent;

    const-string v24, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object v0, v14

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .restart local v14       #intent:Landroid/content/Intent;
    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string/jumbo v24, "transactionId"

    move-object v0, v14

    move-object/from16 v1, v24

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 267
    const-string v24, "pduType"

    move-object v0, v14

    move-object/from16 v1, v24

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 268
    const-string v24, "header"

    move-object v0, v14

    move-object/from16 v1, v24

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 269
    const-string v24, "data"

    move-object v0, v14

    move-object/from16 v1, v24

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 270
    const-string v24, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v25

    move-object v0, v14

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object v1, v14

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 274
    const/16 v24, -0x1

    goto/16 :goto_28

    .line 261
    .end local v14           #intent:Landroid/content/Intent;
    .end local v18           #permission:Ljava/lang/String;
    :cond_215
    const-string v18, "android.permission.RECEIVE_WAP_PUSH"

    .restart local v18       #permission:Ljava/lang/String;
    goto :goto_1b8
.end method
