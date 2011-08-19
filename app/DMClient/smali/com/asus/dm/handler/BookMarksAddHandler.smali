.class public Lcom/asus/dm/handler/BookMarksAddHandler;
.super Ljava/lang/Object;
.source "BookMarksAddHandler.java"

# interfaces
.implements Lcom/asus/dmlib/vdm/NodeAddHandler;


# static fields
.field private static final DEBUG:Z = true


# instance fields
.field private mBaOut:Ljava/io/ByteArrayOutputStream;

.field private mBookMarkDelHandler:Lcom/asus/dm/handler/BookMarksDelHandler;

.field private mBookMarksIOHandler:Lcom/asus/dm/handler/BookMarksIOHandler;

.field private mContext:Landroid/content/Context;

.field private mTree:Lcom/asus/dmlib/vdm/VdmTree;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/vdm/VdmTree;Landroid/content/Context;)V
    .locals 0
    .parameter "pTree"
    .parameter "pContext"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    .line 24
    iput-object p2, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private registerCallBacks(Ljava/lang/String;[B)V
    .locals 3
    .parameter "pUri"
    .parameter "pBookMarkData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/asus/dm/handler/BookMarksIOHandler;

    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/asus/dm/handler/BookMarksIOHandler;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBookMarksIOHandler:Lcom/asus/dm/handler/BookMarksIOHandler;

    .line 31
    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBookMarksIOHandler:Lcom/asus/dm/handler/BookMarksIOHandler;

    invoke-interface {v0, p1, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerNodeIoHandler(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeIoHandler;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "call mBookMarksIOHandler.write by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/asus/dm/util/DMUtils;->getCreateBootmarkInDb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBookMarksIOHandler:Lcom/asus/dm/handler/BookMarksIOHandler;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, v1, p2, v2}, Lcom/asus/dm/handler/BookMarksIOHandler;->write(I[BI)V

    .line 40
    :cond_0
    new-instance v0, Lcom/asus/dm/handler/BookMarksDelHandler;

    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/handler/BookMarksDelHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBookMarkDelHandler:Lcom/asus/dm/handler/BookMarksDelHandler;

    .line 41
    iget-object v0, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mTree:Lcom/asus/dmlib/vdm/VdmTree;

    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBookMarkDelHandler:Lcom/asus/dm/handler/BookMarksDelHandler;

    invoke-interface {v0, p1, v1}, Lcom/asus/dmlib/vdm/VdmTree;->registerDelete(Ljava/lang/String;Lcom/asus/dmlib/vdm/NodeDeleteHandler;)V

    .line 42
    return-void
.end method


# virtual methods
.method public add([BJJLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "pData"
    .parameter "pOffset"
    .parameter "pTotal"
    .parameter "pFormat"
    .parameter "pNodeUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/asus/dmlib/vdm/VdmException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 48
    array-length v1, p1

    int-to-long v1, v1

    cmp-long v1, p4, v1

    if-nez v1, :cond_1

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pData content: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/asus/dm/util/DMLog;->logD(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    .line 52
    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    long-to-int v2, p2

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    invoke-direct {p0, p7, p1}, Lcom/asus/dm/handler/BookMarksAddHandler;->registerCallBacks(Ljava/lang/String;[B)V

    .line 78
    :cond_0
    :goto_1
    return-void

    .line 55
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 56
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 62
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-nez v1, :cond_2

    .line 63
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    long-to-int v2, p2

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 68
    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    int-to-long v1, v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_0

    .line 69
    invoke-direct {p0, p7, p1}, Lcom/asus/dm/handler/BookMarksAddHandler;->registerCallBacks(Ljava/lang/String;[B)V

    .line 72
    :try_start_1
    iget-object v1, p0, Lcom/asus/dm/handler/BookMarksAddHandler;->mBaOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 73
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 74
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
