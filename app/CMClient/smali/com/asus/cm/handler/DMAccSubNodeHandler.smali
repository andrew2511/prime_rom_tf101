.class public Lcom/asus/cm/handler/DMAccSubNodeHandler;
.super Ljava/lang/Object;
.source "DMAccSubNodeHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeIoHandler;
.implements Lcom/asus/dmlib/vdm/NodeDeleteHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/cm/handler/DMAccSubNodeHandler$1;,
        Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;
    }
.end annotation


# static fields
.field public static final DMACC_URI:Ljava/lang/String; = "./SyncML/DM/DMAcc"

.field public static final DMACC_URI_12:Ljava/lang/String; = "./DMAcc"


# instance fields
.field private mPlaceHolder:Ljava/lang/String;

.field private mTree:Lcom/asus/dmlib/vdm/VdmTree;

.field private mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/VdmTree;Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;Ljava/lang/String;)V
    .locals 3
    .parameter "pTree"
    .parameter "pType"
    .parameter "pPlaceHolder"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    .line 68
    iput-object p2, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "./DMAcc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "./DMAcc"

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mPlaceHolder:Ljava/lang/String;

    .line 71
    return-void

    .line 69
    :cond_0
    const-string v1, "/"

    goto :goto_0

    :cond_1
    const-string v1, "/"

    goto :goto_1
.end method

.method private dmTreeReadString(Ljava/lang/String;)[B
    .locals 4
    .parameter "path"

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 88
    .local v1, value:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/asus/cm/util/CMLog;->logI(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v2, p1}, Lcom/asus/dmlib/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 98
    :goto_1
    return-object v2

    .line 91
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 92
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-direct {p0, v0}, Lcom/asus/cm/handler/DMAccSubNodeHandler;->vdmErrorHandle(Lcom/asus/dmlib/vdm/VdmException;)V

    goto :goto_0

    .line 97
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_0
    const-string v2, "null point? please check"

    invoke-direct {p0, v2}, Lcom/asus/cm/handler/DMAccSubNodeHandler;->errorHandle(Ljava/lang/String;)V

    .line 98
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private errorHandle(Ljava/lang/String;)V
    .locals 1
    .parameter "errorDescription"

    .prologue
    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private vdmErrorHandle(Lcom/asus/dmlib/vdm/VdmException;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    .line 80
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .parameter "pNodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->find12Nameby10(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, pNewNodeUri:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 197
    iget-object v1, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v1, v0}, Lcom/asus/dmlib/vdm/VdmTree;->deleteNode(Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete error node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public read(I[B)I
    .locals 10
    .parameter "pOffset"
    .parameter "pData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v5, 0x0

    .line 105
    .local v5, readNum:I
    const/4 v1, 0x0

    .line 107
    .local v1, bytes:[B
    sget-object v7, Lcom/asus/cm/handler/DMAccSubNodeHandler$1;->$SwitchMap$com$asus$cm$handler$DMAccSubNodeHandler$HandleType:[I

    iget-object v8, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v8}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 134
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UnHandled Type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v8}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 140
    if-nez p2, :cond_0

    .line 141
    :try_start_0
    const-string v7, "***** pData is NULL *****"

    invoke-static {p0, v7}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    array-length v7, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :goto_1
    return v7

    .line 118
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mPlaceHolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v8}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeUri12()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/asus/cm/handler/DMAccSubNodeHandler;->dmTreeReadString(Ljava/lang/String;)[B

    move-result-object v1

    .line 119
    goto :goto_0

    .line 122
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mPlaceHolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v8}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeUri12()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/asus/cm/util/CMLog;->logI(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    :try_start_1
    iget-object v7, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mPlaceHolder:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v9}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeUri12()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/asus/dmlib/vdm/VdmTree;->getIntValue(Ljava/lang/String;)I

    move-result v6

    .line 125
    .local v6, value:I
    const/4 v7, 0x1

    new-array v2, v7, [B

    const/4 v7, 0x0

    int-to-byte v8, v6

    aput-byte v8, v2, v7
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1           #bytes:[B
    .local v2, bytes:[B
    move-object v1, v2

    .line 128
    .end local v2           #bytes:[B
    .restart local v1       #bytes:[B
    goto :goto_0

    .line 126
    .end local v6           #value:I
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 127
    .local v3, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-direct {p0, v3}, Lcom/asus/cm/handler/DMAccSubNodeHandler;->vdmErrorHandle(Lcom/asus/dmlib/vdm/VdmException;)V

    goto :goto_0

    .line 145
    .end local v3           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 146
    .local v0, baIn:Ljava/io/ByteArrayInputStream;
    array-length v7, p2

    invoke-virtual {v0, p2, p1, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v5

    .line 147
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v0           #baIn:Ljava/io/ByteArrayInputStream;
    :cond_1
    :goto_2
    move v7, v5

    .line 152
    goto :goto_1

    .line 148
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 149
    .local v4, ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public registerHandler(Ljava/lang/String;)V
    .locals 3
    .parameter "pNodeUri"

    .prologue
    .line 204
    :try_start_0
    iget-object v1, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v1, p1, p0}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    invoke-interface {v1, p1, p0}, Lcom/asus/dmlib/vdm/VdmTree;->registerDelete(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeDeleteHandler;)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    .line 213
    :goto_1
    return-void

    .line 205
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 206
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error register io on node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 211
    .restart local v0       #e:Lcom/asus/dmlib/vdm/VdmException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error register delete on node "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public write(I[BI)V
    .locals 6
    .parameter "pOffset"
    .parameter "pData"
    .parameter "pSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, baOut:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    .local v1, baOut:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    array-length v3, p2

    invoke-virtual {v1, p2, p1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive replace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v4}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "real    replace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v4}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeUri12()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget-object v3, Lcom/asus/cm/handler/DMAccSubNodeHandler$1;->$SwitchMap$com$asus$cm$handler$DMAccSubNodeHandler$HandleType:[I

    iget-object v4, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v4}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 183
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnHandled Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v4}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/asus/cm/util/CMLog;->logE(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    :goto_1
    :pswitch_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    move-object v0, v1

    .line 190
    .end local v1           #baOut:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :goto_2
    return-void

    .line 172
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #baOut:Ljava/io/ByteArrayOutputStream;
    :pswitch_1
    iget-object v3, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mPlaceHolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v5}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeUri12()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/asus/dmlib/vdm/VdmTree;->replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 187
    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .line 188
    .end local v1           #baOut:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/asus/cm/handler/DMAccSubNodeHandler;->errorHandle(Ljava/lang/String;)V

    goto :goto_2

    .line 175
    .end local v0           #baOut:Ljava/io/ByteArrayOutputStream;
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #baOut:Ljava/io/ByteArrayOutputStream;
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mPlaceHolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v5}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeUri12()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/asus/dmlib/vdm/VdmTree;->replaceIntValue(Ljava/lang/String;I)V

    goto :goto_1

    .line 181
    :pswitch_3
    iget-object v3, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mPlaceHolder:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/cm/handler/DMAccSubNodeHandler;->mType:Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;

    invoke-virtual {v5}, Lcom/asus/cm/handler/DMAccSubNodeHandler$HandleType;->getNodeUri12()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/asus/dmlib/vdm/VdmTree;->replaceBinValue(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 187
    .end local v1           #baOut:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #baOut:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_3

    .line 163
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
