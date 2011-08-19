.class public Lcom/asus/cm/util/DMHandlerHelperTMO;
.super Lcom/asus/cm/util/DMHandlerHelper;
.source "DMHandlerHelperTMO.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final URI_BOOKMARK:Ljava/lang/String; = "./Applications/Browser/Bookmark"

.field private static final URI_EMAIL_PREFS:Ljava/lang/String; = "./Applications/Email/"

.field protected static final URI_HOMEPAGE:Ljava/lang/String; = "./Applications/Browser/Homepage"

.field private static final URI_WIFI:Ljava/lang/String; = "./Applications/WLAN"

.field private static mBrwTreeNum:I

.field private static mMmsTreeNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 25
    sput v0, Lcom/asus/cm/util/DMHandlerHelperTMO;->mMmsTreeNum:I

    .line 26
    sput v0, Lcom/asus/cm/util/DMHandlerHelperTMO;->mBrwTreeNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/asus/cm/util/DMHandlerHelper;-><init>()V

    return-void
.end method

.method protected static registerBrowserCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/settings/MobileConnectionList;)V
    .locals 21
    .parameter "pTree"
    .parameter "pMobileConList"

    .prologue
    .line 291
    const/4 v5, 0x0

    .line 293
    .local v5, isSetToApn:Z
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Addr"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "Port"

    aput-object v4, v6, v3

    .line 295
    .local v6, brwLeafNameList:[Ljava/lang/String;
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 296
    .local v7, brwTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/cm/handler/APNHandler$HandleType;>;"
    const-string v3, "Addr"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v3, "Port"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v7, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "Addr"

    aput-object v8, v3, v4

    const/4 v4, 0x1

    const-string v8, "UserName"

    aput-object v8, v3, v4

    const/4 v4, 0x2

    const-string v8, "PassWD"

    aput-object v8, v3, v4

    .line 302
    .local v3, apnLeafNameList:[Ljava/lang/String;
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 303
    .local v4, apnTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/cm/handler/APNHandler$HandleType;>;"
    const-string v8, "Addr"

    sget-object v9, Lcom/asus/cm/handler/APNHandler$HandleType;->APN:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v8, "UserName"

    sget-object v9, Lcom/asus/cm/handler/APNHandler$HandleType;->USERNAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v8, "PassWD"

    sget-object v9, Lcom/asus/cm/handler/APNHandler$HandleType;->PASSWORD:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/asus/cm/settings/MobileConnectionList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 309
    .local v16, mobileConIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/asus/cm/settings/MobileConnection;>;"
    const/16 p1, 0x1

    .local p1, count:I
    move/from16 v8, p1

    .end local p1           #count:I
    .local v8, count:I
    move v13, v5

    .end local v5           #isSetToApn:Z
    .local v13, isSetToApn:Z
    :goto_0
    sget p1, Lcom/asus/cm/util/DMHandlerHelperTMO;->mBrwTreeNum:I

    move v0, v8

    move/from16 v1, p1

    if-gt v0, v1, :cond_7

    .line 310
    const/16 p1, 0x0

    .line 311
    .local p1, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "./Applications/Browser/Proxy/Proxy-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 312
    .local v10, currNodeBRW:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "./Applications/NAPDEF/APN-"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v9, Lcom/asus/cm/util/DMHandlerHelperTMO;->mMmsTreeNum:I

    add-int/2addr v9, v8

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "/"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .local v9, currNodeAPN:Ljava/lang/String;
    move-object/from16 v15, p1

    .line 314
    .end local p1           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v15, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 315
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    .end local v15           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    check-cast v15, Lcom/asus/cm/settings/MobileConnection;

    .line 317
    .restart local v15       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    const-string p1, "default"

    invoke-virtual {v15}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "*"

    invoke-virtual {v15}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v15}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 319
    :cond_1
    if-nez v13, :cond_2

    .line 320
    const/16 p1, 0x0

    .line 321
    .local p1, temp:Lcom/asus/cm/handler/APNHandler;
    new-instance v5, Lcom/asus/cm/handler/APNHandler;

    sget-object p1, Lcom/asus/cm/handler/APNHandler$HandleType;->ToAPN:Lcom/asus/cm/handler/APNHandler$HandleType;

    .end local p1           #temp:Lcom/asus/cm/handler/APNHandler;
    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Ljava/lang/String;)V

    .line 323
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_0
    const-string p1, "./Applications/Browser/ToAPN"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v13           #isSetToApn:Z
    :goto_1
    sget-object p1, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    const/16 p1, 0x1

    .local p1, isSetToApn:Z
    move/from16 v13, p1

    .line 330
    .end local v5           #temp:Lcom/asus/cm/handler/APNHandler;
    .end local p1           #isSetToApn:Z
    .restart local v13       #isSetToApn:Z
    :cond_2
    move-object/from16 p1, v6

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    .local v14, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v12, v5

    .end local v5           #i$:I
    .local v12, i$:I
    :goto_2
    if-ge v12, v14, :cond_3

    aget-object v5, p1, v12

    .line 331
    .local v5, brwLeafName:Ljava/lang/String;
    const-string v11, "DMHandlerHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "register URI : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", instance"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v11, 0x0

    .line 334
    .local v11, temp:Lcom/asus/cm/handler/APNHandler;
    const-string v17, "ToAPN"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 335
    new-instance v17, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #temp:Lcom/asus/cm/handler/APNHandler;
    check-cast v11, Lcom/asus/cm/handler/APNHandler$HandleType;

    move-object/from16 v0, v17

    move-object v1, v11

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 337
    .local v17, temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v5, v17

    .line 344
    .end local v17           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    :goto_3
    sget-object v11, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v5, v12, 0x1

    .end local v12           #i$:I
    .local v5, i$:I
    move v12, v5

    .end local v5           #i$:I
    .restart local v12       #i$:I
    goto :goto_2

    .line 324
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local p1           #arr$:[Ljava/lang/String;
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    :catch_0
    move-exception p1

    .line 325
    .local p1, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v11, "DMHandlerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error register IO on: ./Applications/Browser/ToAPN: "

    .end local v13           #isSetToApn:Z
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .end local p1           #e:Lcom/asus/dmlib/vdm/VdmException;
    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 338
    .local v5, brwLeafName:Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v13       #isSetToApn:Z
    .restart local v14       #len$:I
    .restart local v17       #temp:Lcom/asus/cm/handler/APNHandler;
    .local p1, arr$:[Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 339
    .local v11, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v18, "DMHandlerHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error register IO on: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #brwLeafName:Ljava/lang/String;
    const-string v19, ": "

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .end local v11           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v5, v17

    .end local v17           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    goto :goto_3

    .line 347
    .end local v5           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_3
    move-object v5, v3

    .end local p1           #arr$:[Ljava/lang/String;
    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    const/16 p1, 0x0

    .end local v12           #i$:I
    .local p1, i$:I
    move/from16 v12, p1

    .end local p1           #i$:I
    .restart local v12       #i$:I
    :goto_4
    if-ge v12, v14, :cond_4

    aget-object p1, v5, v12

    .line 348
    .local p1, apnLeafName:Ljava/lang/String;
    const-string v11, "DMHandlerHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "register URI : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", instance"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v17, Lcom/asus/cm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/asus/cm/handler/APNHandler$HandleType;

    move-object/from16 v0, v17

    move-object v1, v11

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 352
    .restart local v17       #temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 356
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_5
    sget-object p1, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    add-int/lit8 p1, v12, 0x1

    .end local v12           #i$:I
    .local p1, i$:I
    move/from16 v12, p1

    .end local p1           #i$:I
    .restart local v12       #i$:I
    goto :goto_4

    .line 353
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 354
    .restart local v11       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v18, "DMHandlerHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error register IO on: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #apnLeafName:Ljava/lang/String;
    const-string v19, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .end local v11           #e:Lcom/asus/dmlib/vdm/VdmException;
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v17           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_4
    move v10, v14

    .end local v14           #len$:I
    .local v10, len$:I
    move-object/from16 p1, v5

    .end local v5           #arr$:[Ljava/lang/String;
    .local p1, arr$:[Ljava/lang/String;
    move-object v11, v15

    .end local v15           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v11, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    move v9, v13

    .end local v13           #isSetToApn:Z
    .local v9, isSetToApn:Z
    move v5, v12

    .line 309
    .end local v12           #i$:I
    .local v5, i$:I
    :goto_6
    add-int/lit8 p1, v8, 0x1

    .end local v8           #count:I
    .local p1, count:I
    move/from16 v8, p1

    .end local p1           #count:I
    .restart local v8       #count:I
    move v13, v9

    .end local v9           #isSetToApn:Z
    .restart local v13       #isSetToApn:Z
    goto/16 :goto_0

    .line 364
    .end local v5           #i$:I
    .end local v11           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v9, currNodeAPN:Ljava/lang/String;
    .local v10, currNodeBRW:Ljava/lang/String;
    .restart local v15       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :cond_5
    move-object/from16 p1, v6

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v14, v0

    .restart local v14       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    move v12, v5

    .end local v5           #i$:I
    .restart local v12       #i$:I
    :goto_7
    if-ge v12, v14, :cond_6

    aget-object v5, p1, v12

    .line 365
    .local v5, brwLeafName:Ljava/lang/String;
    const-string v11, "DMHandlerHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "register URI : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", null"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v17, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v18, Lcom/asus/cm/settings/MobileConnection;

    sget-object v19, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v18 .. v19}, Lcom/asus/cm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object v1, v11

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 370
    .restart local v17       #temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_3
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_3

    .line 375
    .end local v5           #brwLeafName:Ljava/lang/String;
    :goto_8
    sget-object v5, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v5, v12, 0x1

    .end local v12           #i$:I
    .local v5, i$:I
    move v12, v5

    .end local v5           #i$:I
    .restart local v12       #i$:I
    goto :goto_7

    .line 371
    .local v5, brwLeafName:Ljava/lang/String;
    :catch_3
    move-exception v11

    .line 372
    .local v11, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v18, "DMHandlerHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error register IO on: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #brwLeafName:Ljava/lang/String;
    const-string v19, ": "

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .end local v11           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 378
    .end local v17           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_6
    move-object v5, v3

    .end local p1           #arr$:[Ljava/lang/String;
    .local v5, arr$:[Ljava/lang/String;
    array-length v14, v5

    const/16 p1, 0x0

    .end local v12           #i$:I
    .local p1, i$:I
    move/from16 v12, p1

    .end local p1           #i$:I
    .restart local v12       #i$:I
    :goto_9
    if-ge v12, v14, :cond_8

    aget-object p1, v5, v12

    .line 379
    .local p1, apnLeafName:Ljava/lang/String;
    const-string v11, "DMHandlerHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "register URI : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", null"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    new-instance v17, Lcom/asus/cm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v18, Lcom/asus/cm/settings/MobileConnection;

    sget-object v19, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v18 .. v19}, Lcom/asus/cm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v17

    move-object v1, v11

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 387
    .restart local v17       #temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_4
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_4 .. :try_end_4} :catch_4

    .line 393
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_a
    sget-object p1, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 p1, v12, 0x1

    .end local v12           #i$:I
    .local p1, i$:I
    move/from16 v12, p1

    .end local p1           #i$:I
    .restart local v12       #i$:I
    goto :goto_9

    .line 388
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_4
    move-exception v11

    .line 389
    .restart local v11       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v18, "DMHandlerHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error register IO on: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #apnLeafName:Ljava/lang/String;
    const-string v19, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v11}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v11

    .end local v11           #e:Lcom/asus/dmlib/vdm/VdmException;
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 396
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v9           #currNodeAPN:Ljava/lang/String;
    .end local v10           #currNodeBRW:Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v15           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .end local v17           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_7
    return-void

    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v9       #currNodeAPN:Ljava/lang/String;
    .restart local v10       #currNodeBRW:Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :cond_8
    move v10, v14

    .end local v14           #len$:I
    .local v10, len$:I
    move-object/from16 p1, v5

    .end local v5           #arr$:[Ljava/lang/String;
    .local p1, arr$:[Ljava/lang/String;
    move-object v11, v15

    .end local v15           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v11, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    move v9, v13

    .end local v13           #isSetToApn:Z
    .local v9, isSetToApn:Z
    move v5, v12

    .end local v12           #i$:I
    .local v5, i$:I
    goto/16 :goto_6

    .local v5, brwLeafName:Ljava/lang/String;
    .local v9, currNodeAPN:Ljava/lang/String;
    .local v10, currNodeBRW:Ljava/lang/String;
    .local v11, temp:Lcom/asus/cm/handler/APNHandler;
    .restart local v12       #i$:I
    .restart local v13       #isSetToApn:Z
    .restart local v14       #len$:I
    .restart local v15       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :cond_9
    move-object v5, v11

    .end local v11           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v5, temp:Lcom/asus/cm/handler/APNHandler;
    goto/16 :goto_3
.end method

.method protected static registerConDefCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/settings/MobileConnectionList;)V
    .locals 14
    .parameter "pTree"
    .parameter "pMobileConList"

    .prologue
    .line 133
    const-string v4, "./SyncML/DM/Con/Def_con/"

    .line 136
    .local v4, currNodeAPN:Ljava/lang/String;
    const/4 v11, 0x5

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "NAP/Addr"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "NAP/Auth/PAP/Id"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "NAP/Auth/PAP/Secert"

    aput-object v12, v1, v11

    const/4 v11, 0x3

    const-string v12, "PX/Addr"

    aput-object v12, v1, v11

    const/4 v11, 0x4

    const-string v12, "PX/PortNbr"

    aput-object v12, v1, v11

    .line 137
    .local v1, apnLeafNameList:[Ljava/lang/String;
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 138
    .local v2, apnTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/cm/handler/APNHandler$HandleType;>;"
    const-string v11, "NAP/Addr"

    sget-object v12, Lcom/asus/cm/handler/APNHandler$HandleType;->APN:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v2, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v11, "NAP/Auth/PAP/Id"

    sget-object v12, Lcom/asus/cm/handler/APNHandler$HandleType;->USERNAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v2, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v11, "NAP/Auth/PAP/Secert"

    sget-object v12, Lcom/asus/cm/handler/APNHandler$HandleType;->PASSWORD:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v2, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v11, "PX/Addr"

    sget-object v12, Lcom/asus/cm/handler/APNHandler$HandleType;->PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v2, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v11, "PX/PortNbr"

    sget-object v12, Lcom/asus/cm/handler/APNHandler$HandleType;->PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v2, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Lcom/asus/cm/settings/MobileConnectionList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 145
    .local v9, mobileConIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/asus/cm/settings/MobileConnection;>;"
    const/4 v8, 0x0

    .line 147
    .local v8, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 148
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    check-cast v8, Lcom/asus/cm/settings/MobileConnection;

    .line 151
    .restart local v8       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    const-string v11, "APNHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "register Use :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Lcom/asus/cm/settings/MobileConnection;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    move-object v3, v1

    .local v3, arr$:[Ljava/lang/String;
    array-length v7, v3

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v0, v3, v6

    .line 154
    .local v0, apnLeafName:Ljava/lang/String;
    const-string v11, "DMHandlerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "register URI : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", instance"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v10, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-direct {v10, v11, v8}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 159
    .local v10, temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v11, v10}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    sget-object v11, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 160
    :catch_0
    move-exception v11

    move-object v5, v11

    .line 161
    .local v5, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v11, "DMHandlerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error register IO on:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .end local v0           #apnLeafName:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v5           #e:Lcom/asus/dmlib/vdm/VdmException;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v10           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_0
    move-object v3, v1

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v7, v3

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v7, :cond_1

    aget-object v0, v3, v6

    .line 171
    .restart local v0       #apnLeafName:Ljava/lang/String;
    const-string v11, "DMHandlerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "register URI : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", null"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v10, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v12, Lcom/asus/cm/settings/MobileConnection;

    sget-object v13, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/asus/cm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    invoke-direct {v10, v11, v12}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 175
    .restart local v10       #temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p0, v11, v10}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_3
    sget-object v11, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 176
    :catch_1
    move-exception v11

    move-object v5, v11

    .line 177
    .restart local v5       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v11, "DMHandlerHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "error register IO on:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 182
    .end local v0           #apnLeafName:Ljava/lang/String;
    .end local v5           #e:Lcom/asus/dmlib/vdm/VdmException;
    .end local v10           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_1
    return-void
.end method

.method protected static registerDMTreeHandler(Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 13
    .parameter "pTree"

    .prologue
    .line 113
    sget-object v10, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-static {p0, v10}, Lcom/asus/cm/handler/DMAccRootNodeHandler;->getDMAccSubNode(Lcom/asus/dmlib/vdm/VdmTree;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 115
    .local v6, nodeAry:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "./SyncML/DM/DMAcc"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "./SyncML/DM/DMAcc"

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, ""

    :goto_0
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, nodeBaseUri:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 119
    .local v8, nodeName:Ljava/lang/String;
    invoke-static {}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->values()[Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    move-result-object v0

    .local v0, arr$:[Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 120
    .local v2, ht:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, nodeUri:Ljava/lang/String;
    const-string v10, "DMHandlerHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "register "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    new-instance v1, Lcom/asus/cm/handler/DMAccSubNodeHandler;

    invoke-direct {v1, p0, v2, v8}, Lcom/asus/cm/handler/DMAccSubNodeHandler;-><init>(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;Ljava/lang/String;)V

    .line 123
    .local v1, dmTree:Lcom/asus/cm/handler/DMAccSubNodeHandler;
    invoke-virtual {v1, v9}, Lcom/asus/cm/handler/DMAccSubNodeHandler;->registerHandler(Ljava/lang/String;)V

    .line 124
    sget-object v10, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 115
    .end local v0           #arr$:[Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;
    .end local v1           #dmTree:Lcom/asus/cm/handler/DMAccSubNodeHandler;
    .end local v2           #ht:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #nodeBaseUri:Ljava/lang/String;
    .end local v8           #nodeName:Ljava/lang/String;
    .end local v9           #nodeUri:Ljava/lang/String;
    :cond_0
    const-string v11, "/"

    goto :goto_0

    .line 127
    .restart local v0       #arr$:[Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #nodeBaseUri:Ljava/lang/String;
    .restart local v8       #nodeName:Ljava/lang/String;
    :cond_1
    sget-object v10, Lcom/asus/cm/util/DMHandlerHelperTMO;->mAddHandlerList:Ljava/util/ArrayList;

    const-string v11, "./SyncML/DM/DMAcc"

    invoke-static {p0, v11}, Lcom/asus/cm/handler/DMAccRootNodeHandler;->registerDMAddHandler(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)Lcom/asus/cm/handler/DMAccRootNodeHandler;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    .end local v0           #arr$:[Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v8           #nodeName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected static registerEmailPrefsCallback(Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 8
    .parameter "pTree"

    .prologue
    const/16 v7, 0xb

    .line 404
    if-nez p0, :cond_1

    .line 425
    :cond_0
    return-void

    .line 409
    :cond_1
    new-array v1, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "UserName"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "PassWD"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "RecvHost"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "RecvPort"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "Service"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "SendHost"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "SendPort"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "ReplyAddr"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "To-NAP"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "NAP-UserName"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string v5, "NAP-PassWD"

    aput-object v5, v1, v4

    .line 412
    .local v1, emailLeafNameList:[Ljava/lang/String;
    array-length v4, v1

    if-ne v4, v7, :cond_0

    .line 415
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 418
    :try_start_0
    new-instance v3, Lcom/asus/cm/handler/EmailPrefsHandler;

    sget-object v4, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-direct {v3, v2, v4}, Lcom/asus/cm/handler/EmailPrefsHandler;-><init>(ILandroid/content/Context;)V

    .line 419
    .local v3, temp:Lcom/asus/cm/handler/EmailPrefsHandler;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "./Applications/Email/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4, v3}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 420
    sget-object v4, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .end local v3           #temp:Lcom/asus/cm/handler/EmailPrefsHandler;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 422
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v4, "DMHandlerHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error register IO on: ./Applications/Email/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static registerHandlers(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 4
    .parameter "DMService"
    .parameter "pTree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/cm/exception/DMInvalidException;
        }
    .end annotation

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    new-instance v2, Lcom/asus/cm/exception/DMInvalidException;

    const-string v3, "when call DMTmoTreeHandlerHelper.registerHandlers, agr DMService is null"

    invoke-direct {v2, v3}, Lcom/asus/cm/exception/DMInvalidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_0
    if-nez p1, :cond_1

    .line 48
    new-instance v2, Lcom/asus/cm/exception/DMInvalidException;

    const-string v3, "when call DMTmoTreeHandlerHelper.registerHandlers, agr pTree is null"

    invoke-direct {v2, v3}, Lcom/asus/cm/exception/DMInvalidException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_1
    sput-object p0, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    .line 53
    sget-object v2, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/asus/cm/util/DMHandlerHelperTMO;->initDMHandlerHelper(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 55
    new-instance v0, Lcom/asus/cm/settings/MobileConnectionList;

    sget-object v2, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/asus/cm/settings/MobileConnectionList;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, mcList:Lcom/asus/cm/settings/MobileConnectionList;
    invoke-static {p1, v0}, Lcom/asus/cm/util/DMHandlerHelperTMO;->registerMMSCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/settings/MobileConnectionList;)V

    .line 59
    new-instance v1, Lcom/asus/cm/settings/MobileConnectionList;

    sget-object v2, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/asus/cm/settings/MobileConnectionList;-><init>(Landroid/content/Context;)V

    .line 60
    .local v1, prefList:Lcom/asus/cm/settings/MobileConnectionList;
    invoke-static {p1, v1}, Lcom/asus/cm/util/DMHandlerHelperTMO;->registerConDefCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/settings/MobileConnectionList;)V

    .line 70
    invoke-static {p1}, Lcom/asus/cm/util/DMHandlerHelperTMO;->registerDMTreeHandler(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 74
    invoke-static {p1}, Lcom/asus/cm/util/DMHandlerHelperTMO;->registerEmailPrefsCallback(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 88
    invoke-static {p1}, Lcom/asus/cm/util/DMHandlerHelperTMO;->registerVersionCallback(Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 93
    return-void
.end method

.method protected static registerMMSCallback(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/settings/MobileConnectionList;)V
    .locals 20
    .parameter "pTree"
    .parameter "pMobileConList"

    .prologue
    .line 186
    const/4 v3, 0x4

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "URI"

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string v4, "Proxy"

    aput-object v4, v12, v3

    const/4 v3, 0x2

    const-string v4, "Port"

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string v4, "ToAPN"

    aput-object v4, v12, v3

    .line 188
    .local v12, mmsLeafNameList:[Ljava/lang/String;
    new-instance v13, Ljava/util/Hashtable;

    invoke-direct {v13}, Ljava/util/Hashtable;-><init>()V

    .line 189
    .local v13, mmsTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/cm/handler/APNHandler$HandleType;>;"
    const-string v3, "URI"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->MMSC:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v13, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v3, "Proxy"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->MMS_PROXY:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v13, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v3, "Port"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->MMS_PORT:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v13, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v3, "ToAPN"

    sget-object v4, Lcom/asus/cm/handler/APNHandler$HandleType;->ToAPN:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v13, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Addr"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "UserName"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "PassWD"

    aput-object v5, v3, v4

    .line 196
    .local v3, apnLeafNameList:[Ljava/lang/String;
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 197
    .local v4, apnTable:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Lcom/asus/cm/handler/APNHandler$HandleType;>;"
    const-string v5, "Addr"

    sget-object v6, Lcom/asus/cm/handler/APNHandler$HandleType;->APN:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v5, "UserName"

    sget-object v6, Lcom/asus/cm/handler/APNHandler$HandleType;->USERNAME:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v5, "PassWD"

    sget-object v6, Lcom/asus/cm/handler/APNHandler$HandleType;->PASSWORD:Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/asus/cm/settings/MobileConnectionList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 203
    .local v15, mobileConIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/asus/cm/settings/MobileConnection;>;"
    const/16 p1, 0x1

    .local p1, count:I
    move/from16 v6, p1

    .end local p1           #count:I
    .local v6, count:I
    :goto_0
    sget p1, Lcom/asus/cm/util/DMHandlerHelperTMO;->mMmsTreeNum:I

    move v0, v6

    move/from16 v1, p1

    if-gt v0, v1, :cond_7

    .line 204
    const/16 p1, 0x0

    .line 205
    .local p1, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "./Applications/MMS/MMS-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 206
    .local v5, currNodeMMS:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "./Applications/NAPDEF/APN-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, currNodeAPN:Ljava/lang/String;
    move-object/from16 v14, p1

    .line 207
    .end local p1           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v14, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 208
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .end local v14           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    check-cast v14, Lcom/asus/cm/settings/MobileConnection;

    .line 210
    .restart local v14       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    const-string p1, "mms"

    invoke-virtual {v14}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "*"

    invoke-virtual {v14}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v14}, Lcom/asus/cm/settings/MobileConnection;->getType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 214
    :cond_1
    move-object/from16 p1, v12

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v10, v0

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v11, p1, v9

    .line 215
    .local v11, mmsLeafName:Ljava/lang/String;
    const-string v8, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "register URI : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", handleType : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v13, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", instance"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object v0, v8

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 219
    const/4 v8, 0x0

    .line 220
    .local v8, temp:Lcom/asus/cm/handler/APNHandler;
    const-string v8, "ToAPN"

    .end local v8           #temp:Lcom/asus/cm/handler/APNHandler;
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 221
    new-instance v16, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v13, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/asus/cm/handler/APNHandler$HandleType;

    move-object/from16 v0, v16

    move-object v1, v8

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 223
    .local v16, temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v8, v16

    .line 236
    .end local v11           #mmsLeafName:Ljava/lang/String;
    .end local v16           #temp:Lcom/asus/cm/handler/APNHandler;
    .restart local v8       #temp:Lcom/asus/cm/handler/APNHandler;
    :goto_2
    sget-object v11, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    add-int/lit8 v8, v9, 0x1

    .end local v9           #i$:I
    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_1

    .line 224
    .restart local v11       #mmsLeafName:Ljava/lang/String;
    .restart local v16       #temp:Lcom/asus/cm/handler/APNHandler;
    :catch_0
    move-exception v8

    .line 225
    .local v8, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v17, "DMHandlerHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "error register IO on:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .end local v11           #mmsLeafName:Ljava/lang/String;
    const-string v18, ": "

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .end local v8           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v16

    .line 226
    .end local v16           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v8, temp:Lcom/asus/cm/handler/APNHandler;
    goto :goto_2

    .line 228
    .end local v8           #temp:Lcom/asus/cm/handler/APNHandler;
    .restart local v11       #mmsLeafName:Ljava/lang/String;
    :cond_2
    new-instance v16, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v13, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/asus/cm/handler/APNHandler$HandleType;

    move-object/from16 v0, v16

    move-object v1, v8

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Ljava/lang/String;)V

    .line 230
    .restart local v16       #temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v8, v16

    .line 233
    .end local v16           #temp:Lcom/asus/cm/handler/APNHandler;
    .restart local v8       #temp:Lcom/asus/cm/handler/APNHandler;
    goto :goto_2

    .line 231
    .end local v8           #temp:Lcom/asus/cm/handler/APNHandler;
    .restart local v16       #temp:Lcom/asus/cm/handler/APNHandler;
    :catch_1
    move-exception v8

    .line 232
    .local v8, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v17, "DMHandlerHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "error register IO on:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .end local v11           #mmsLeafName:Ljava/lang/String;
    const-string v18, ": "

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .end local v8           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v16

    .end local v16           #temp:Lcom/asus/cm/handler/APNHandler;
    .local v8, temp:Lcom/asus/cm/handler/APNHandler;
    goto/16 :goto_2

    .line 240
    .end local v8           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_3
    move-object v5, v3

    .end local p1           #arr$:[Ljava/lang/String;
    .local v5, arr$:[Ljava/lang/String;
    array-length v10, v5

    const/16 p1, 0x0

    .end local v9           #i$:I
    .local p1, i$:I
    move/from16 v9, p1

    .end local p1           #i$:I
    .restart local v9       #i$:I
    :goto_3
    if-ge v9, v10, :cond_4

    aget-object p1, v5, v9

    .line 241
    .local p1, apnLeafName:Ljava/lang/String;
    const-string v8, "DMHandlerHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "register URI : "

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", instance"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v11, Lcom/asus/cm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/asus/cm/handler/APNHandler$HandleType;

    invoke-direct {v11, v8, v14}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 246
    .local v11, temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 251
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_4
    sget-object p1, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 p1, v9, 0x1

    .end local v9           #i$:I
    .local p1, i$:I
    move/from16 v9, p1

    .end local p1           #i$:I
    .restart local v9       #i$:I
    goto :goto_3

    .line 247
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_2
    move-exception v8

    .line 248
    .local v8, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v16, "DMHandlerHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error register IO on:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #apnLeafName:Ljava/lang/String;
    const-string v17, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .end local v8           #e:Lcom/asus/dmlib/vdm/VdmException;
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .end local v11           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_4
    move v7, v10

    .end local v10           #len$:I
    .local v7, len$:I
    move-object/from16 p1, v5

    .end local v5           #arr$:[Ljava/lang/String;
    .local p1, arr$:[Ljava/lang/String;
    move-object v8, v14

    .end local v14           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v8, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    move v5, v9

    .line 203
    .end local v9           #i$:I
    .local v5, i$:I
    :goto_5
    add-int/lit8 p1, v6, 0x1

    .end local v6           #count:I
    .local p1, count:I
    move/from16 v6, p1

    .end local p1           #count:I
    .restart local v6       #count:I
    goto/16 :goto_0

    .line 261
    .end local v8           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v5, currNodeMMS:Ljava/lang/String;
    .local v7, currNodeAPN:Ljava/lang/String;
    .restart local v14       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :cond_5
    move-object/from16 p1, v12

    .local p1, arr$:[Ljava/lang/String;
    move-object/from16 v0, p1

    array-length v0, v0

    move v10, v0

    .restart local v10       #len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    :goto_6
    if-ge v9, v10, :cond_6

    aget-object v11, p1, v9

    .line 262
    .local v11, mmsLeafName:Ljava/lang/String;
    const-string v8, "DMHandlerHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "register URI : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", null"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    new-instance v16, Lcom/asus/cm/handler/APNHandler;

    invoke-virtual {v13, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v17, Lcom/asus/cm/settings/MobileConnection;

    sget-object v18, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v17 .. v18}, Lcom/asus/cm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 266
    .restart local v16       #temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_3
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_3

    .line 271
    .end local v11           #mmsLeafName:Ljava/lang/String;
    :goto_7
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v8, v9, 0x1

    .end local v9           #i$:I
    .restart local v8       #i$:I
    move v9, v8

    .end local v8           #i$:I
    .restart local v9       #i$:I
    goto :goto_6

    .line 267
    .restart local v11       #mmsLeafName:Ljava/lang/String;
    :catch_3
    move-exception v8

    .line 268
    .local v8, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v17, "DMHandlerHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "error register IO on:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .end local v11           #mmsLeafName:Ljava/lang/String;
    const-string v18, ": "

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .end local v8           #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v17

    move-object v1, v8

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 274
    .end local v16           #temp:Lcom/asus/cm/handler/APNHandler;
    :cond_6
    move-object v5, v3

    .end local p1           #arr$:[Ljava/lang/String;
    .local v5, arr$:[Ljava/lang/String;
    array-length v10, v5

    const/16 p1, 0x0

    .end local v9           #i$:I
    .local p1, i$:I
    move/from16 v9, p1

    .end local p1           #i$:I
    .restart local v9       #i$:I
    :goto_8
    if-ge v9, v10, :cond_8

    aget-object p1, v5, v9

    .line 275
    .local p1, apnLeafName:Ljava/lang/String;
    const-string v8, "DMHandlerHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "register URI : "

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v16, ", null"

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    new-instance v11, Lcom/asus/cm/handler/APNHandler;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/asus/cm/handler/APNHandler$HandleType;

    new-instance v16, Lcom/asus/cm/settings/MobileConnection;

    sget-object v17, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-direct/range {v16 .. v17}, Lcom/asus/cm/settings/MobileConnection;-><init>(Landroid/content/Context;)V

    move-object v0, v11

    move-object v1, v8

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/handler/APNHandler;-><init>(Lcom/asus/cm/handler/APNHandler$HandleType;Lcom/asus/cm/settings/MobileConnection;)V

    .line 279
    .local v11, temp:Lcom/asus/cm/handler/APNHandler;
    :try_start_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_4
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_4 .. :try_end_4} :catch_4

    .line 284
    .end local p1           #apnLeafName:Ljava/lang/String;
    :goto_9
    sget-object p1, Lcom/asus/cm/util/DMHandlerHelperTMO;->mIoHandlerList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 p1, v9, 0x1

    .end local v9           #i$:I
    .local p1, i$:I
    move/from16 v9, p1

    .end local p1           #i$:I
    .restart local v9       #i$:I
    goto :goto_8

    .line 280
    .local p1, apnLeafName:Ljava/lang/String;
    :catch_4
    move-exception v8

    .line 281
    .restart local v8       #e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v16, "DMHandlerHelper"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "error register IO on:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #apnLeafName:Ljava/lang/String;
    const-string v17, ": "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v8}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .end local v8           #e:Lcom/asus/dmlib/vdm/VdmException;
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 287
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v7           #currNodeAPN:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #temp:Lcom/asus/cm/handler/APNHandler;
    .end local v14           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :cond_7
    return-void

    .restart local v5       #arr$:[Ljava/lang/String;
    .restart local v7       #currNodeAPN:Ljava/lang/String;
    .restart local v9       #i$:I
    .restart local v10       #len$:I
    .restart local v14       #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    :cond_8
    move v7, v10

    .end local v10           #len$:I
    .local v7, len$:I
    move-object/from16 p1, v5

    .end local v5           #arr$:[Ljava/lang/String;
    .local p1, arr$:[Ljava/lang/String;
    move-object v8, v14

    .end local v14           #mobileCon:Lcom/asus/cm/settings/MobileConnection;
    .local v8, mobileCon:Lcom/asus/cm/settings/MobileConnection;
    move v5, v9

    .end local v9           #i$:I
    .local v5, i$:I
    goto/16 :goto_5
.end method

.method protected static registerWLANCallback(Lcom/asus/dmlib/vdm/VdmTree;)V
    .locals 11
    .parameter "pTree"

    .prologue
    .line 438
    const-string v8, "./Applications/WLAN"

    invoke-static {p0, v8}, Lcom/asus/cm/util/CMUtils;->getAllChildURIs(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 439
    .local v7, wlanSubNodes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    .line 440
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 441
    .local v5, node:Ljava/lang/String;
    const-string v8, "DMHandlerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wlanSubnNode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "./Applications/WLAN/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/asus/cm/util/CMUtils;->getAllChildURIs(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 445
    .local v6, wlanSubLeafs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 446
    .local v4, leaf:Ljava/lang/String;
    const/4 v3, 0x0

    .line 447
    .local v3, ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    const-string v8, "SSID"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 448
    new-instance v3, Lcom/asus/cm/handler/WLANSubLeafIOHandler;

    .end local v3           #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    sget-object v9, Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;->SSID:Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-direct {v3, v8, v9, v1}, Lcom/asus/cm/handler/WLANSubLeafIOHandler;-><init>(Landroid/content/Context;Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;I)V

    .line 455
    .restart local v3       #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    :cond_1
    :goto_2
    if-eqz v3, :cond_0

    .line 457
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "./Applications/WLAN/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p0, v8, v3}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 458
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 459
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v8, "DMHandlerHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error register IO on: ./Applications/WLAN/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 449
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_2
    const-string v8, "NwMode"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 450
    new-instance v3, Lcom/asus/cm/handler/WLANSubLeafIOHandler;

    .end local v3           #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    sget-object v9, Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;->NwMode:Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-direct {v3, v8, v9, v1}, Lcom/asus/cm/handler/WLANSubLeafIOHandler;-><init>(Landroid/content/Context;Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;I)V

    .restart local v3       #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    goto :goto_2

    .line 451
    :cond_3
    const-string v8, "SecurityMode"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 452
    new-instance v3, Lcom/asus/cm/handler/WLANSubLeafIOHandler;

    .end local v3           #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    sget-object v8, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    sget-object v9, Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;->SecurityMode:Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-direct {v3, v8, v9, v1}, Lcom/asus/cm/handler/WLANSubLeafIOHandler;-><init>(Landroid/content/Context;Lcom/asus/cm/handler/WLANSubLeafIOHandler$HandleType;I)V

    .restart local v3       #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    goto :goto_2

    .line 439
    .end local v3           #ioHandler:Lcom/asus/cm/handler/WLANSubLeafIOHandler;
    .end local v4           #leaf:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 464
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #node:Ljava/lang/String;
    .end local v6           #wlanSubLeafs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    return-void
.end method

.method protected static registerWifiAddCallback(Lcom/asus/dmlib/vdm/VdmTree;Ljava/lang/String;)V
    .locals 5
    .parameter "pTree"
    .parameter "pUri"

    .prologue
    .line 98
    const-string v2, "./Applications/WLAN"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    new-instance v1, Lcom/asus/cm/handler/WLANAddHandler;

    sget-object v2, Lcom/asus/cm/util/DMHandlerHelperTMO;->mDMSInst:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/asus/cm/handler/WLANAddHandler;-><init>(Landroid/content/Context;Lcom/asus/dmlib/vdm/VdmTree;)V

    .line 101
    .local v1, pWLANAddHandler:Lcom/asus/cm/handler/WLANAddHandler;
    :try_start_0
    invoke-interface {p0, p1, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerAdd(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeAddHandler;)V

    .line 102
    sget-object v2, Lcom/asus/cm/util/DMHandlerHelperTMO;->mAddHandlerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v1           #pWLANAddHandler:Lcom/asus/cm/handler/WLANAddHandler;
    :cond_0
    :goto_0
    return-void

    .line 103
    .restart local v1       #pWLANAddHandler:Lcom/asus/cm/handler/WLANAddHandler;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 104
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    const-string v2, "DMHandlerHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error register add on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
