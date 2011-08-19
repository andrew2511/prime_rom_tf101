.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"

# interfaces
.implements Lcom/android/vcard/VCardComposer$OneEntryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandlerForStringBuffer"
.end annotation


# instance fields
.field private maxPacketSize:I

.field private operation:Ljavax/obex/Operation;

.field private outputStream:Ljava/io/OutputStream;

.field private phoneOwnVCard:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "op"
    .parameter "ownerVCard"

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    .line 514
    iput-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->operation:Ljavax/obex/Operation;

    .line 515
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->operation:Ljavax/obex/Operation;

    invoke-interface {v0}, Ljavax/obex/Operation;->getMaxPacketSize()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->maxPacketSize:I

    .line 517
    if-eqz p3, :cond_0

    .line 518
    iput-object p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    .line 522
    :cond_0
    return-void
.end method


# virtual methods
.method public onEntryCreated(Ljava/lang/String;)Z
    .locals 12
    .parameter "vcard"

    .prologue
    const/4 v11, 0x0

    .line 540
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 543
    .local v6, vcardLen:I
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-static {v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-static {v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v5, v7

    .line 547
    .local v5, vcardByteLen:I
    iget v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->maxPacketSize:I

    if-lt v5, v7, :cond_1

    .line 548
    const-wide/16 v3, 0x0

    .line 549
    .local v3, timestamp:J
    const/4 v1, 0x0

    .line 553
    .local v1, position:I
    :goto_0
    sget-boolean v7, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->maxPacketSize:I

    sub-int v7, v5, v7

    if-ge v1, v7, :cond_0

    .line 556
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-static {v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->maxPacketSize:I

    add-int/2addr v8, v1

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, subStr:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->maxPacketSize:I

    invoke-virtual {v7, v8, v9, v10}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    iget v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->maxPacketSize:I

    add-int/2addr v1, v7

    .line 568
    goto :goto_0

    .line 560
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 561
    .local v0, e:Ljava/io/IOException;
    const-string v7, "BluetoothPbapVcardManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "write outputstrem failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v11

    .line 571
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #position:I
    .end local v2           #subStr:Ljava/lang/String;
    .end local v3           #timestamp:J
    :goto_1
    return v7

    .line 569
    .restart local v1       #position:I
    .restart local v3       #timestamp:J
    :cond_0
    iget-object v7, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-static {v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 571
    .end local v1           #position:I
    .end local v3           #timestamp:J
    :cond_1
    const/4 v7, 0x1

    goto :goto_1
.end method

.method public onInit(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->operation:Ljavax/obex/Operation;

    invoke-interface {v1}, Ljavax/obex/Operation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->outputStream:Ljava/io/OutputStream;

    .line 527
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$002(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 528
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->phoneOwnVCard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 531
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 532
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothPbapVcardManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open outputstrem failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 5

    .prologue
    .line 576
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-static {v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 578
    .local v1, lastBytes:[B
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->outputStream:Ljava/io/OutputStream;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->outputStream:Ljava/io/OutputStream;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->operation:Ljavax/obex/Operation;

    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->closeStream(Ljava/io/OutputStream;Ljavax/obex/Operation;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 589
    :cond_0
    return-void

    .line 579
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 580
    .local v0, e:Ljava/io/IOException;
    const-string v2, "BluetoothPbapVcardManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write outputstrem failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
