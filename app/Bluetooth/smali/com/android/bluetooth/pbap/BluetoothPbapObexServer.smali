.class public Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
.super Ljavax/obex/ServerRequestHandler;
.source "BluetoothPbapObexServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    }
.end annotation


# static fields
.field private static CALLLOG_NUM_LIMIT:I

.field private static final LEGAL_PATH:[Ljava/lang/String;

.field private static final LEGAL_PATH_WITH_SIM:[Ljava/lang/String;

.field public static ORDER_BY_ALPHABETICAL:I

.field public static ORDER_BY_INDEXED:I

.field private static final PBAP_TARGET:[B

.field public static sIsAborted:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mMissedCallSize:I

.field private mNeedNewMissedCallsNum:Z

.field private mNeedPhonebookSize:Z

.field private mOrderBy:I

.field private mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/telecom"

    aput-object v1, v0, v3

    const-string v1, "/telecom/pb"

    aput-object v1, v0, v4

    const-string v1, "/telecom/ich"

    aput-object v1, v0, v5

    const-string v1, "/telecom/och"

    aput-object v1, v0, v6

    const-string v1, "/telecom/mch"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/telecom/cch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    .line 81
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/telecom"

    aput-object v1, v0, v3

    const-string v1, "/telecom/pb"

    aput-object v1, v0, v4

    const-string v1, "/telecom/ich"

    aput-object v1, v0, v5

    const-string v1, "/telecom/och"

    aput-object v1, v0, v6

    const-string v1, "/telecom/mch"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "/telecom/cch"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/SIM1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/SIM1/telecom"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/SIM1/telecom/ich"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/SIM1/telecom/och"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/SIM1/telecom/mch"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "/SIM1/telecom/cch"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "/SIM1/telecom/pb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH_WITH_SIM:[Ljava/lang/String;

    .line 148
    const/16 v0, 0x32

    sput v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 150
    sput v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    .line 152
    sput v4, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    .line 154
    sput-boolean v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    return-void

    .line 69
    :array_0
    .array-data 0x1
        0x79t
        0x61t
        0x35t
        0xf0t
        0xf0t
        0xc5t
        0x11t
        0xd8t
        0x9t
        0x66t
        0x8t
        0x0t
        0x20t
        0xct
        0x9at
        0x66t
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .parameter "callback"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-direct {p0}, Ljavax/obex/ServerRequestHandler;-><init>()V

    .line 129
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 135
    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 146
    sget v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 170
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    .line 171
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    .line 172
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 177
    return-void
.end method

.method public static closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z
    .locals 5
    .parameter "out"
    .parameter "op"

    .prologue
    .line 975
    const/4 v1, 0x1

    .line 977
    .local v1, returnvalue:Z
    if-eqz p0, :cond_0

    .line 978
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 986
    :try_start_1
    invoke-interface {p1}, Ljavax/obex/Operation;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 992
    :cond_1
    :goto_1
    return v1

    .line 980
    :catch_0
    move-exception v0

    .line 981
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outputStream close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v1, 0x0

    goto :goto_0

    .line 988
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 989
    .restart local v0       #e:Ljava/io/IOException;
    const-string v2, "BluetoothPbapObexServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation close failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)I
    .locals 13
    .parameter "maxListCount"
    .parameter "listStartOffset"
    .parameter "searchValue"
    .parameter "result"
    .parameter "type"

    .prologue
    .line 593
    const/4 v5, 0x0

    .line 594
    .local v5, itemsFound:I
    iget-object v11, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    iget v12, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    invoke-virtual {v11, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookNameList(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 595
    .local v7, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v11, p1, :cond_1

    move v10, p1

    .line 596
    .local v10, requestSize:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 597
    .local v6, listSize:I
    const-string v2, ""

    .line 602
    .local v2, compareValue:Ljava/lang/String;
    const-string v11, "number"

    move-object/from16 v0, p5

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 604
    iget-object v11, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v0, v11

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 605
    .local v8, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .end local p0
    .local v4, i:I
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_3

    .line 606
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 608
    move v9, p2

    .line 609
    .local v9, pos:I
    :goto_2
    if-ge v9, v6, :cond_2

    if-ge v5, v10, :cond_2

    .line 610
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 612
    .local v3, currentValue:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 613
    add-int/lit8 v5, v5, 0x1

    .line 614
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<card handle=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".vcf\" name=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 595
    .end local v2           #compareValue:Ljava/lang/String;
    .end local v3           #currentValue:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #listSize:I
    .end local v8           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #pos:I
    .end local v10           #requestSize:I
    .restart local p0
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    move v10, v11

    goto :goto_0

    .line 618
    .end local p0
    .restart local v2       #compareValue:Ljava/lang/String;
    .restart local v4       #i:I
    .restart local v6       #listSize:I
    .restart local v8       #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #pos:I
    .restart local v10       #requestSize:I
    :cond_2
    if-lt v5, v10, :cond_4

    .line 637
    .end local v4           #i:I
    .end local v8           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #pos:I
    :cond_3
    return v5

    .line 605
    .restart local v4       #i:I
    .restart local v8       #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9       #pos:I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 623
    .end local v4           #i:I
    .end local v8           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9           #pos:I
    .restart local p0
    :cond_5
    if-eqz p3, :cond_6

    .line 624
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 626
    :cond_6
    move v9, p2

    .line 627
    .restart local v9       #pos:I
    :goto_3
    if-ge v9, v6, :cond_3

    if-ge v5, v10, :cond_3

    .line 628
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 630
    .restart local v3       #currentValue:Ljava/lang/String;
    if-eqz p3, :cond_7

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 631
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 632
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "<card handle=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".vcf\" name=\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/>"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p4

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public static final createSelectionPara(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, selection:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1016
    :goto_0
    return-object v0

    .line 1004
    :pswitch_0
    const-string v0, "type=1"

    .line 1005
    goto :goto_0

    .line 1007
    :pswitch_1
    const-string v0, "type=2"

    .line 1008
    goto :goto_0

    .line 1010
    :pswitch_2
    const-string v0, "type=3"

    .line 1011
    goto :goto_0

    .line 1002
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I
    .locals 11
    .parameter "appParamValue"
    .parameter "size"
    .parameter "reply"
    .parameter "op"

    .prologue
    const/16 v10, 0x4c

    const/16 v9, 0x9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 727
    new-array v2, v7, [B

    .line 728
    .local v2, misnum:[B
    new-instance v0, Ljavax/obex/ApplicationParameter;

    invoke-direct {v0}, Ljavax/obex/ApplicationParameter;-><init>()V

    .line 732
    .local v0, ap:Ljavax/obex/ApplicationParameter;
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    if-eqz v5, :cond_2

    .line 734
    iput-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 736
    new-array v4, v8, [B

    .line 738
    .local v4, pbsize:[B
    div-int/lit16 v5, p2, 0x100

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    .line 739
    rem-int/lit16 v5, p2, 0x100

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v7

    .line 740
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v8, v4}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 743
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v5, :cond_0

    .line 744
    iput-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 745
    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    sub-int v3, p2, v5

    .line 746
    .local v3, nmnum:I
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 748
    if-lez v3, :cond_1

    .line 749
    :goto_0
    int-to-byte v5, v3

    aput-byte v5, v2, v6

    .line 750
    invoke-virtual {v0, v9, v7, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 755
    .end local v3           #nmnum:I
    :cond_0
    invoke-virtual {v0}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v5

    invoke-virtual {p3, v10, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 759
    invoke-direct {p0, p4, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I

    move-result v5

    .line 789
    .end local v4           #pbsize:[B
    :goto_1
    return v5

    .restart local v3       #nmnum:I
    .restart local v4       #pbsize:[B
    :cond_1
    move v3, v6

    .line 748
    goto :goto_0

    .line 765
    .end local v3           #nmnum:I
    .end local v4           #pbsize:[B
    :cond_2
    iget-boolean v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    if-eqz v5, :cond_3

    .line 767
    iput-boolean v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    .line 769
    iget v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    sub-int v3, p2, v5

    .line 770
    .restart local v3       #nmnum:I
    iput p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mMissedCallSize:I

    .line 772
    if-lez v3, :cond_4

    .line 773
    :goto_2
    int-to-byte v5, v3

    aput-byte v5, v2, v6

    .line 774
    invoke-virtual {v0, v9, v7, v2}, Ljavax/obex/ApplicationParameter;->addAPPHeader(BB[B)V

    .line 776
    invoke-virtual {v0}, Ljavax/obex/ApplicationParameter;->getAPPparam()[B

    move-result-object v5

    invoke-virtual {p3, v10, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 783
    :try_start_0
    invoke-interface {p4, p3}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    .end local v3           #nmnum:I
    :cond_3
    const/4 v5, -0x1

    goto :goto_1

    .restart local v3       #nmnum:I
    :cond_4
    move v3, v6

    .line 772
    goto :goto_2

    .line 784
    :catch_0
    move-exception v1

    .line 785
    .local v1, e:Ljava/io/IOException;
    const-string v5, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/16 v5, 0xd0

    goto :goto_1
.end method

.method private final isLegalPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x1

    .line 420
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 428
    :goto_0
    return v1

    .line 423
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 424
    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->LEGAL_PATH:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 425
    goto :goto_0

    .line 423
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 428
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z
    .locals 9
    .parameter "appParam"
    .parameter "appParamValue"

    .prologue
    const/4 v8, 0x1

    .line 472
    const/4 v1, 0x0

    .line 473
    .local v1, i:I
    const/4 v4, 0x1

    .line 474
    .local v4, parseOk:Z
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_4

    .line 475
    aget-byte v5, p1, v1

    packed-switch v5, :pswitch_data_0

    .line 532
    const/4 v4, 0x0

    .line 533
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "Parse Application Parameter error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    :pswitch_0
    add-int/lit8 v1, v1, 0x2

    .line 478
    add-int/lit8 v1, v1, 0x8

    .line 479
    goto :goto_0

    .line 481
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    .line 482
    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    .line 483
    add-int/lit8 v1, v1, 0x1

    .line 484
    goto :goto_0

    .line 486
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    .line 488
    aget-byte v2, p1, v1

    .line 489
    .local v2, length:I
    if-nez v2, :cond_0

    .line 490
    const/4 v4, 0x0

    .line 491
    goto :goto_0

    .line 493
    :cond_0
    add-int v5, v1, v2

    aget-byte v5, p1, v5

    if-nez v5, :cond_1

    .line 494
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    sub-int v7, v2, v8

    invoke-direct {v5, p1, v6, v7}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    .line 498
    :goto_1
    add-int/2addr v1, v2

    .line 499
    add-int/lit8 v1, v1, 0x1

    .line 500
    goto :goto_0

    .line 496
    :cond_1
    new-instance v5, Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    invoke-direct {v5, p1, v6, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    goto :goto_1

    .line 502
    .end local v2           #length:I
    :pswitch_3
    add-int/lit8 v1, v1, 0x2

    .line 503
    aget-byte v5, p1, v1

    invoke-static {v5}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 504
    add-int/lit8 v1, v1, 0x1

    .line 505
    goto :goto_0

    .line 507
    :pswitch_4
    add-int/lit8 v1, v1, 0x2

    .line 508
    aget-byte v5, p1, v1

    if-nez v5, :cond_2

    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    if-nez v5, :cond_2

    .line 509
    iput-boolean v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedPhonebookSize:Z

    .line 515
    :goto_2
    add-int/lit8 v1, v1, 0x2

    .line 516
    goto :goto_0

    .line 511
    :cond_2
    aget-byte v5, p1, v1

    and-int/lit16 v0, v5, 0xff

    .line 512
    .local v0, highValue:I
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 513
    .local v3, lowValue:I
    mul-int/lit16 v5, v0, 0x100

    add-int/2addr v5, v3

    iput v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    goto :goto_2

    .line 518
    .end local v0           #highValue:I
    .end local v3           #lowValue:I
    :pswitch_5
    add-int/lit8 v1, v1, 0x2

    .line 519
    aget-byte v5, p1, v1

    and-int/lit16 v0, v5, 0xff

    .line 520
    .restart local v0       #highValue:I
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v3, v5, 0xff

    .line 521
    .restart local v3       #lowValue:I
    mul-int/lit16 v5, v0, 0x100

    add-int/2addr v5, v3

    iput v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    .line 522
    add-int/lit8 v1, v1, 0x2

    .line 523
    goto/16 :goto_0

    .line 525
    .end local v0           #highValue:I
    .end local v3           #lowValue:I
    :pswitch_6
    add-int/lit8 v1, v1, 0x2

    .line 526
    aget-byte v5, p1, v1

    if-eqz v5, :cond_3

    .line 527
    const/4 v5, 0x0

    iput-boolean v5, p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    .line 529
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 530
    goto/16 :goto_0

    .line 540
    :cond_4
    return v4

    .line 475
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private final pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 25
    .parameter "appParam"
    .parameter "appParamValue"
    .parameter "reply"
    .parameter "op"
    .parameter "name"

    .prologue
    .line 910
    if-eqz p5, :cond_0

    .line 911
    const-string v5, "."

    move-object/from16 v0, p5

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 912
    .local v20, dotIndex:I
    const-string v24, "vcf"

    .line 913
    .local v24, vcf:Ljava/lang/String;
    if-ltz v20, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-gt v0, v1, :cond_0

    .line 914
    add-int/lit8 v5, v20, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p5

    move v1, v5

    move-object/from16 v2, v24

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 915
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "name is not .vcf"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v5, 0xc6

    .line 969
    .end local v20           #dotIndex:I
    .end local v24           #vcf:Ljava/lang/String;
    :goto_0
    return v5

    .line 921
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v22

    .line 922
    .local v22, pbSize:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v21

    .line 923
    .local v21, needSendBody:I
    const/4 v5, -0x1

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_1

    move/from16 v5, v21

    .line 924
    goto :goto_0

    .line 927
    :cond_1
    if-nez v22, :cond_2

    .line 929
    const/16 v5, 0xa0

    goto :goto_0

    .line 932
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move v5, v0

    move/from16 v0, v22

    move v1, v5

    if-lt v0, v1, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move v5, v0

    move/from16 v23, v5

    .line 934
    .local v23, requestSize:I
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    move v13, v0

    .line 935
    .local v13, startPoint:I
    if-ltz v13, :cond_3

    move v0, v13

    move/from16 v1, v22

    if-lt v0, v1, :cond_5

    .line 936
    :cond_3
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listStartOffset is not correct! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/16 v5, 0xa0

    goto :goto_0

    .end local v13           #startPoint:I
    .end local v23           #requestSize:I
    :cond_4
    move/from16 v23, v22

    .line 932
    goto :goto_1

    .line 941
    .restart local v13       #startPoint:I
    .restart local v23       #requestSize:I
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_6

    .line 942
    sget v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    move/from16 v0, v23

    move v1, v5

    if-le v0, v1, :cond_6

    .line 943
    sget v23, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->CALLLOG_NUM_LIMIT:I

    .line 947
    :cond_6
    add-int v5, v13, v23

    const/4 v6, 0x1

    sub-int v8, v5, v6

    .line 948
    .local v8, endPoint:I
    const/4 v5, 0x1

    sub-int v5, v22, v5

    if-le v8, v5, :cond_7

    .line 949
    const/4 v5, 0x1

    sub-int v8, v22, v5

    .line 954
    :cond_7
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    move v9, v0

    .line 955
    .local v9, vcard21:Z
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_a

    .line 956
    if-nez v13, :cond_9

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v5, v0

    invoke-virtual {v5, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z)Ljava/lang/String;

    move-result-object v10

    .line 958
    .local v10, ownerVcard:Ljava/lang/String;
    if-nez v8, :cond_8

    .line 959
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 961
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v5, v0

    const/4 v7, 0x1

    move-object/from16 v6, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 965
    .end local v10           #ownerVcard:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v11, v0

    const/16 v16, 0x0

    move-object/from16 v12, p4

    move v14, v8

    move v15, v9

    invoke-virtual/range {v11 .. v16}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 969
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v14, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move v15, v0

    add-int/lit8 v17, v13, 0x1

    add-int/lit8 v18, v8, 0x1

    move-object/from16 v16, p4

    move/from16 v19, v9

    invoke-virtual/range {v14 .. v19}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZ)I

    move-result v5

    goto/16 :goto_0
.end method

.method private final pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljava/lang/String;Ljava/lang/String;)I
    .locals 17
    .parameter "appParam"
    .parameter "appParamValue"
    .parameter "op"
    .parameter "name"
    .parameter "current_path"

    .prologue
    .line 855
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 857
    :cond_0
    const/16 v3, 0xc6

    .line 904
    :goto_0
    return v3

    .line 859
    :cond_1
    const/4 v3, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p4

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 860
    .local v16, strIndex:Ljava/lang/String;
    const/4 v5, 0x0

    .line 861
    .local v5, intIndex:I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 863
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 870
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v3, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move v4, v0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v15

    .line 871
    .local v15, size:I
    if-nez v15, :cond_3

    .line 873
    const/16 v3, 0xc4

    goto :goto_0

    .line 864
    .end local v15           #size:I
    :catch_0
    move-exception v13

    .line 865
    .local v13, e:Ljava/lang/NumberFormatException;
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "catch number format exception "

    .end local v5           #intIndex:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/16 v3, 0xc6

    goto :goto_0

    .line 876
    .end local v13           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #intIndex:I
    .restart local v15       #size:I
    :cond_3
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->vcard21:Z

    move v6, v0

    .line 877
    .local v6, vcard21:Z
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move v3, v0

    if-nez v3, :cond_4

    .line 878
    const-string v3, "BluetoothPbapObexServer"

    const-string v4, "wrong path!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/16 v3, 0xc6

    goto :goto_0

    .line 880
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 881
    if-ltz v5, :cond_5

    if-lt v5, v15, :cond_6

    .line 882
    :cond_5
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The requested vcard is not acceptable! name= "

    .end local v5           #intIndex:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    const/16 v3, 0xc4

    goto/16 :goto_0

    .line 884
    .restart local v5       #intIndex:I
    :cond_6
    if-nez v5, :cond_7

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v3, v0

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcard(Z)Ljava/lang/String;

    move-result-object v14

    .line 887
    .local v14, ownerVcard:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_0

    .line 889
    .end local v14           #ownerVcard:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v3, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    move v8, v0

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;I)I

    move-result v3

    goto/16 :goto_0

    .line 893
    :cond_8
    if-lez v5, :cond_9

    if-le v5, v15, :cond_a

    .line 894
    :cond_9
    const-string v3, "BluetoothPbapObexServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The requested vcard is not acceptable! name= "

    .end local v5           #intIndex:I
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const/16 v3, 0xc4

    goto/16 :goto_0

    .line 899
    .restart local v5       #intIndex:I
    :cond_a
    const/4 v3, 0x1

    if-lt v5, v3, :cond_b

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v7, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move v8, v0

    move-object/from16 v9, p3

    move v10, v5

    move v11, v5

    move v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendCallLogVcards(ILjavax/obex/Operation;IIZ)I

    move-result v3

    goto/16 :goto_0

    .line 904
    :cond_b
    const/16 v3, 0xa0

    goto/16 :goto_0
.end method

.method private final pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;)I
    .locals 17
    .parameter "appParam"
    .parameter "appParamValue"
    .parameter "reply"
    .parameter "op"

    .prologue
    .line 794
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 796
    .local v14, searchAttr:Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 798
    :cond_0
    const-string v5, "0"

    move-object v0, v5

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    .line 812
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhonebookSize(I)I

    move-result v16

    .line 813
    .local v16, size:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->handleAppParaForResponse(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;ILjavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v12

    .line 814
    .local v12, needSendBody:I
    const/4 v5, -0x1

    if-eq v12, v5, :cond_4

    move v5, v12

    .line 850
    .end local v12           #needSendBody:I
    .end local v16           #size:I
    :goto_1
    return v5

    .line 800
    :cond_1
    const-string v5, "0"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "1"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 801
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "search attr not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v5, "2"

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 804
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "do not support search by sound"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/16 v5, 0xd1

    goto :goto_1

    .line 807
    :cond_2
    const/16 v5, 0xcc

    goto :goto_1

    .line 809
    :cond_3
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "searchAttr is valid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 818
    .restart local v12       #needSendBody:I
    .restart local v16       #size:I
    :cond_4
    if-nez v16, :cond_5

    .line 820
    const/16 v5, 0xa0

    goto :goto_1

    .line 823
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->order:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 824
    .local v13, orderPara:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 826
    const-string v13, "0"

    .line 841
    :goto_2
    const-string v5, "0"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 842
    sget v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_INDEXED:I

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    .line 847
    :cond_6
    :goto_3
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    move v6, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->maxListCount:I

    move v8, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->listStartOffset:I

    move v9, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchValue:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->searchAttr:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v5, p0

    move-object/from16 v7, p4

    invoke-direct/range {v5 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sendVcardListingXml(ILjavax/obex/Operation;IILjava/lang/String;Ljava/lang/String;)I

    move-result v15

    .local v15, sendResult:I
    move v5, v15

    .line 850
    goto/16 :goto_1

    .line 829
    .end local v15           #sendResult:I
    :cond_7
    const-string v5, "0"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    const-string v5, "1"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 831
    const-string v5, "2"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 833
    const-string v5, "BluetoothPbapObexServer"

    const-string v6, "Do not support order by sound"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/16 v5, 0xd1

    goto/16 :goto_1

    .line 836
    :cond_8
    const/16 v5, 0xcc

    goto/16 :goto_1

    .line 838
    :cond_9
    const-string v5, "BluetoothPbapObexServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Order parameter is valid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 843
    :cond_a
    const-string v5, "1"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 844
    sget v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->ORDER_BY_ALPHABETICAL:I

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mOrderBy:I

    goto :goto_3
.end method

.method private final pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I
    .locals 16
    .parameter "op"
    .parameter "vcardString"

    .prologue
    const/4 v15, 0x0

    .line 668
    if-nez p2, :cond_0

    .line 669
    const-string v13, "BluetoothPbapObexServer"

    const-string v14, "vcardString is null!"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/16 v13, 0xa0

    .line 722
    :goto_0
    return v13

    .line 673
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    .line 676
    .local v12, vcardStringLen:I
    const/4 v5, 0x0

    .line 677
    .local v5, outputStream:Ljava/io/OutputStream;
    const/16 v7, 0xa0

    .line 679
    .local v7, pushResult:I
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 685
    const/4 v6, 0x0

    .line 686
    .local v6, position:I
    const-wide/16 v10, 0x0

    .line 687
    .local v10, timestamp:J
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v4

    .line 689
    .local v4, outputBufferSize:I
    :goto_1
    if-eq v6, v12, :cond_1

    .line 690
    sget-boolean v13, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v13, :cond_3

    .line 691
    move-object/from16 v0, p1

    check-cast v0, Ljavax/obex/ServerOperation;

    move-object v13, v0

    const/4 v14, 0x1

    iput-boolean v14, v13, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 692
    sput-boolean v15, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 718
    :cond_1
    :goto_2
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 719
    const/16 v7, 0xd0

    :cond_2
    move v13, v7

    .line 722
    goto :goto_0

    .line 680
    .end local v4           #outputBufferSize:I
    .end local v6           #position:I
    .end local v10           #timestamp:J
    :catch_0
    move-exception v3

    .line 681
    .local v3, e:Ljava/io/IOException;
    const-string v13, "BluetoothPbapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "open outputstrem failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/16 v13, 0xd0

    goto :goto_0

    .line 696
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #outputBufferSize:I
    .restart local v6       #position:I
    .restart local v10       #timestamp:J
    :cond_3
    move v8, v4

    .line 697
    .local v8, readLength:I
    sub-int v13, v12, v6

    if-ge v13, v4, :cond_4

    .line 698
    sub-int v8, v12, v6

    .line 700
    :cond_4
    add-int v13, v6, v8

    move-object/from16 v0, p2

    move v1, v6

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 702
    .local v9, subStr:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14, v8}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 713
    add-int/2addr v6, v8

    .line 714
    goto :goto_1

    .line 703
    :catch_1
    move-exception v13

    move-object v3, v13

    .line 704
    .restart local v3       #e:Ljava/io/IOException;
    const-string v13, "BluetoothPbapObexServer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "write outputstrem failed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/16 v7, 0xd0

    .line 706
    goto :goto_2
.end method

.method private final pushHeader(Ljavax/obex/Operation;Ljavax/obex/HeaderSet;)I
    .locals 5
    .parameter "op"
    .parameter "reply"

    .prologue
    .line 645
    const/4 v1, 0x0

    .line 650
    .local v1, outputStream:Ljava/io/OutputStream;
    const/16 v2, 0xa0

    .line 652
    .local v2, pushResult:I
    :try_start_0
    invoke-interface {p1, p2}, Ljavax/obex/Operation;->sendHeaders(Ljavax/obex/HeaderSet;)V

    .line 653
    invoke-interface {p1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 654
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 660
    :goto_0
    const/16 v2, 0xd0

    .line 663
    :cond_0
    return v2

    .line 655
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 656
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v3, "BluetoothPbapObexServer"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 657
    const/16 v2, 0xd0

    .line 659
    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    invoke-static {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 660
    const/16 v2, 0xd0

    .line 659
    :cond_1
    throw v3
.end method

.method private final sendVcardListingXml(ILjavax/obex/Operation;IILjava/lang/String;Ljava/lang/String;)I
    .locals 15
    .parameter "type"
    .parameter "op"
    .parameter "maxListCount"
    .parameter "listStartOffset"
    .parameter "searchValue"
    .parameter "searchAttr"

    .prologue
    .line 547
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    .local v7, result:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 549
    .local v10, itemsFound:I
    const-string v3, "<?xml version=\"1.0\"?>"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    const-string v3, "<!DOCTYPE vcard-listing SYSTEM \"vcard-listing.dtd\">"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v3, "<vCard-listing version=\"1.0\">"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const/4 v3, 0x1

    move/from16 v0, p1

    move v1, v3

    if-ne v0, v1, :cond_3

    .line 555
    const-string v3, "0"

    move-object/from16 v0, p6

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 556
    const-string v8, "name"

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v10

    .line 584
    .end local p1
    :cond_0
    :goto_0
    const-string v3, "</vCard-listing>"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pushBytes(Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v3

    :goto_1
    return v3

    .line 558
    .restart local p1
    :cond_1
    const-string v3, "1"

    move-object/from16 v0, p6

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 559
    const-string v8, "number"

    move-object v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createList(IILjava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    .line 563
    :cond_2
    const/16 v3, 0xcc

    goto :goto_1

    .line 568
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mVcardManager:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->loadCallHistoryList(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 569
    .local v12, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v0, v3

    move/from16 v1, p3

    if-lt v0, v1, :cond_5

    move/from16 v13, p3

    .line 570
    .local v13, requestSize:I
    :goto_2
    move/from16 v14, p4

    .line 571
    .local v14, startPoint:I
    add-int v9, v14, v13

    .line 572
    .local v9, endPoint:I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v9, v3, :cond_4

    .line 573
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 577
    :cond_4
    move v11, v14

    .end local p1
    .local v11, j:I
    :goto_3
    if-ge v11, v9, :cond_0

    .line 579
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<card handle=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".vcf\" name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    add-int/lit8 v10, v10, 0x1

    .line 577
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 569
    .end local v9           #endPoint:I
    .end local v11           #j:I
    .end local v13           #requestSize:I
    .end local v14           #startPoint:I
    .restart local p1
    :cond_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v13, v3

    goto :goto_2
.end method


# virtual methods
.method public onAbort(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 1
    .parameter "request"
    .parameter "reply"

    .prologue
    .line 243
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 244
    const/16 v0, 0xa0

    return v0
.end method

.method public final onAuthenticationFailure([B)V
    .locals 0
    .parameter "userName"

    .prologue
    .line 998
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 301
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1388

    iput v1, v0, Landroid/os/Message;->what:I

    .line 302
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 305
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onConnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)I
    .locals 11
    .parameter "request"
    .parameter "reply"

    .prologue
    const/16 v10, 0xd0

    const/16 v9, 0x10

    const/16 v8, 0xc6

    .line 183
    const/16 v6, 0x46

    :try_start_0
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v5, v0

    .line 184
    .local v5, uuid:[B
    if-nez v5, :cond_0

    move v6, v8

    .line 223
    .end local v5           #uuid:[B
    :goto_0
    return v6

    .line 189
    .restart local v5       #uuid:[B
    :cond_0
    array-length v6, v5

    if-eq v6, v9, :cond_1

    .line 190
    const-string v6, "BluetoothPbapObexServer"

    const-string v7, "Wrong UUID length"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 191
    goto :goto_0

    .line 193
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v9, :cond_3

    .line 194
    aget-byte v6, v5, v2

    sget-object v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->PBAP_TARGET:[B

    aget-byte v7, v7, v2

    if-eq v6, v7, :cond_2

    .line 195
    const-string v6, "BluetoothPbapObexServer"

    const-string v7, "Wrong UUID"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v8

    .line 196
    goto :goto_0

    .line 193
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 199
    :cond_3
    const/16 v6, 0x4a

    invoke-virtual {p2, v6, v5}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    const/16 v6, 0x4a

    :try_start_1
    invoke-virtual {p1, v6}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v4, v0

    .line 207
    .local v4, remote:[B
    if-eqz v4, :cond_4

    .line 209
    const/16 v6, 0x46

    invoke-virtual {p2, v6, v4}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 219
    :cond_4
    iget-object v6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v3

    .line 220
    .local v3, msg:Landroid/os/Message;
    const/16 v6, 0x1389

    iput v6, v3, Landroid/os/Message;->what:I

    .line 221
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 223
    const/16 v6, 0xa0

    goto :goto_0

    .line 200
    .end local v2           #i:I
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #remote:[B
    .end local v5           #uuid:[B
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 201
    .local v1, e:Ljava/io/IOException;
    const-string v6, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 202
    goto :goto_0

    .line 211
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v5       #uuid:[B
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 212
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "BluetoothPbapObexServer"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v10

    .line 213
    goto :goto_0
.end method

.method public onDisconnect(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;)V
    .locals 2
    .parameter "req"
    .parameter "resp"

    .prologue
    .line 231
    const/16 v1, 0xa0

    iput v1, p2, Ljavax/obex/HeaderSet;->responseCode:I

    .line 232
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCallback:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 234
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 235
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 238
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGet(Ljavax/obex/Operation;)I
    .locals 20
    .parameter "op"

    .prologue
    .line 309
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 310
    const/16 v17, 0x0

    .line 311
    .local v17, request:Ljavax/obex/HeaderSet;
    new-instance v13, Ljavax/obex/HeaderSet;

    invoke-direct {v13}, Ljavax/obex/HeaderSet;-><init>()V

    .line 312
    .local v13, reply:Ljavax/obex/HeaderSet;
    const-string v18, ""

    .line 313
    .local v18, type:Ljava/lang/String;
    const-string v9, ""

    .line 314
    .local v9, name:Ljava/lang/String;
    const/4 v6, 0x0

    .line 315
    .local v6, appParam:[B
    new-instance v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)V

    .line 317
    .local v7, appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/obex/Operation;->getReceivedHeader()Ljavax/obex/HeaderSet;

    move-result-object v17

    .line 318
    const/16 v5, 0x42

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    .line 319
    const/4 v5, 0x1

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    .line 320
    const/16 v5, 0x4c

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v6, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    if-nez v18, :cond_0

    .line 330
    const/16 v5, 0xc6

    .line 414
    .end local v7           #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :goto_0
    return v5

    .line 321
    .restart local v7       #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 322
    .local v16, e:Ljava/io/IOException;
    const-string v5, "BluetoothPbapObexServer"

    const-string v7, "request headers error"

    .end local v7           #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/16 v5, 0xd0

    goto :goto_0

    .line 340
    .end local v16           #e:Ljava/io/IOException;
    .restart local v7       #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :cond_0
    const/16 v19, 0x1

    .line 341
    .local v19, validName:Z
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 342
    const/16 v19, 0x0

    .line 345
    :cond_1
    if-eqz v19, :cond_2

    if-eqz v19, :cond_8

    const-string v5, "x-bt/vcard"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 349
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object v5, v0

    const-string v8, "/telecom/pb"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 350
    const/4 v5, 0x1

    iput v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 397
    :goto_1
    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->parseApplicationParameter([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 398
    const/16 v5, 0xc0

    goto :goto_0

    .line 351
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object v5, v0

    const-string v8, "/telecom/ich"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 352
    const/4 v5, 0x2

    iput v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 353
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object v5, v0

    const-string v8, "/telecom/och"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 354
    const/4 v5, 0x3

    iput v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 355
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object v5, v0

    const-string v8, "/telecom/mch"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 356
    const/4 v5, 0x4

    iput v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 357
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    goto :goto_1

    .line 358
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object v5, v0

    const-string v8, "/telecom/cch"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 359
    const/4 v5, 0x5

    iput v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto :goto_1

    .line 361
    :cond_7
    const-string v5, "BluetoothPbapObexServer"

    const-string v7, "mCurrentpath is not valid path!!!"

    .end local v7           #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/16 v5, 0xc6

    goto/16 :goto_0

    .line 367
    .restart local v7       #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :cond_8
    const-string v5, "SIM1"

    const/4 v8, 0x0

    const-string v10, "SIM1"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 368
    const-string v5, "BluetoothPbapObexServer"

    const-string v7, "Not support access SIM card info!"

    .end local v7           #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v5, 0xc6

    goto/16 :goto_0

    .line 375
    .restart local v7       #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :cond_9
    const-string v5, "pb"

    const/4 v8, 0x0

    const-string v10, "pb"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 376
    const/4 v5, 0x1

    iput v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 378
    :cond_a
    const-string v5, "ich"

    const/4 v8, 0x0

    const-string v10, "ich"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 379
    const/4 v5, 0x2

    iput v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 381
    :cond_b
    const-string v5, "och"

    const/4 v8, 0x0

    const-string v10, "och"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 382
    const/4 v5, 0x3

    iput v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 384
    :cond_c
    const-string v5, "mch"

    const/4 v8, 0x0

    const-string v10, "mch"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 385
    const/4 v5, 0x4

    iput v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    .line 386
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mNeedNewMissedCallsNum:Z

    goto/16 :goto_1

    .line 388
    :cond_d
    const-string v5, "cch"

    const/4 v8, 0x0

    const-string v10, "cch"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v8, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 389
    const/4 v5, 0x5

    iput v5, v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;->needTag:I

    goto/16 :goto_1

    .line 392
    :cond_e
    const-string v5, "BluetoothPbapObexServer"

    const-string v7, "Input name doesn\'t contain valid info!!!"

    .end local v7           #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v5, 0xc6

    goto/16 :goto_0

    .line 402
    .restart local v7       #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    :cond_f
    const-string v5, "x-bt/vcard-listing"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 403
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v13

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardListing([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;)I

    move-result v5

    goto/16 :goto_0

    .line 406
    :cond_10
    const-string v5, "x-bt/vcard"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullVcardEntry([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/Operation;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 410
    :cond_11
    const-string v5, "x-bt/phonebook"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v10, p0

    move-object v11, v6

    move-object v12, v7

    move-object/from16 v14, p1

    move-object v15, v9

    .line 411
    invoke-direct/range {v10 .. v15}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->pullPhonebook([BLcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;Ljavax/obex/HeaderSet;Ljavax/obex/Operation;Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 413
    :cond_12
    const-string v5, "BluetoothPbapObexServer"

    const-string v7, "unknown type request!!!"

    .end local v7           #appParamValue:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer$AppParamValue;
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/16 v5, 0xc6

    goto/16 :goto_0
.end method

.method public onPut(Ljavax/obex/Operation;)I
    .locals 1
    .parameter "op"

    .prologue
    .line 250
    const/16 v0, 0xc0

    return v0
.end method

.method public onSetPath(Ljavax/obex/HeaderSet;Ljavax/obex/HeaderSet;ZZ)I
    .locals 6
    .parameter "request"
    .parameter "reply"
    .parameter "backup"
    .parameter "create"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 260
    .local v1, current_path_tmp:Ljava/lang/String;
    const/4 v3, 0x0

    .line 262
    .local v3, tmp_path:Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1, v4}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    if-eqz p3, :cond_1

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 271
    const/4 v4, 0x0

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 282
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->isLegalPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 283
    if-eqz p4, :cond_3

    .line 284
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "path create is forbidden!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/16 v4, 0xc3

    .line 294
    :goto_1
    return v4

    .line 263
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 264
    .local v2, e:Ljava/io/IOException;
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "Get name header fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v4, 0xd0

    goto :goto_1

    .line 275
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    if-nez v3, :cond_2

    .line 276
    const-string v1, ""

    goto :goto_0

    .line 278
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 287
    :cond_3
    const-string v4, "BluetoothPbapObexServer"

    const-string v5, "path is not legal"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/16 v4, 0xc4

    goto :goto_1

    .line 291
    :cond_4
    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->mCurrentPath:Ljava/lang/String;

    .line 294
    const/16 v4, 0xa0

    goto :goto_1
.end method
