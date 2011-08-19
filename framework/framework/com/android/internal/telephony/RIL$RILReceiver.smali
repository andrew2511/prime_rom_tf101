.class Lcom/android/internal/telephony/RIL$RILReceiver;
.super Ljava/lang/Object;
.source "RIL.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/RIL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RILReceiver"
.end annotation


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 3
    .parameter

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    .line 508
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/16 v12, 0x8

    .line 512
    const/4 v5, 0x0

    .line 515
    .local v5, retryCount:I
    :goto_3
    const/4 v6, 0x0

    .line 519
    .local v6, s:Landroid/net/LocalSocket;
    :try_start_4
    new-instance v7, Landroid/net/LocalSocket;

    invoke-direct {v7}, Landroid/net/LocalSocket;-><init>()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_63
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_9f

    .line 520
    .end local v6           #s:Landroid/net/LocalSocket;
    .local v7, s:Landroid/net/LocalSocket;
    :try_start_9
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v9, "rild"

    sget-object v10, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v9, v10}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 522
    .local v2, l:Landroid/net/LocalSocketAddress;
    invoke-virtual {v7, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_f7
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_16} :catch_58

    .line 555
    const/4 v5, 0x0

    .line 557
    :try_start_17
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iput-object v7, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 558
    const-string v9, "RILJ"

    const-string v10, "Connected to \'rild\' socket"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_22} :catch_58

    .line 560
    const/4 v3, 0x0

    .line 562
    .local v3, length:I
    :try_start_23
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 567
    .local v1, is:Ljava/io/InputStream;
    :goto_2b
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    #calls: Lcom/android/internal/telephony/RIL;->readRilMessage(Ljava/io/InputStream;[B)I
    invoke-static {v1, v9}, Lcom/android/internal/telephony/RIL;->access$300(Ljava/io/InputStream;[B)I
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_30} :catch_ba
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_30} :catch_c5

    move-result v3

    .line 569
    if-gez v3, :cond_a2

    .line 591
    .end local v1           #is:Ljava/io/InputStream;
    :goto_33
    :try_start_33
    const-string v9, "RILJ"

    const-string v10, "Disconnected from \'rild\' socket"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    sget-object v10, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/RIL;->setRadioState(Lcom/android/internal/telephony/CommandsInterface$RadioState;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_41} :catch_58

    .line 597
    :try_start_41
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    iget-object v9, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v9}, Landroid/net/LocalSocket;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_48} :catch_f4
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_48} :catch_58

    .line 601
    :goto_48
    :try_start_48
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x0

    iput-object v10, v9, Lcom/android/internal/telephony/RIL;->mSocket:Landroid/net/LocalSocket;

    .line 602
    invoke-static {}, Lcom/android/internal/telephony/RILRequest;->resetSerial()V

    .line 605
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    const/4 v10, 0x1

    const/4 v11, 0x0

    #calls: Lcom/android/internal/telephony/RIL;->clearRequestsList(IZ)V
    invoke-static {v9, v10, v11}, Lcom/android/internal/telephony/RIL;->access$500(Lcom/android/internal/telephony/RIL;IZ)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_57} :catch_58

    goto :goto_3

    .line 606
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    :catch_58
    move-exception v9

    move-object v8, v9

    move-object v6, v7

    .line 607
    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v6       #s:Landroid/net/LocalSocket;
    .local v8, tr:Ljava/lang/Throwable;
    :goto_5b
    const-string v9, "RILJ"

    const-string v10, "Uncaught exception"

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 609
    return-void

    .line 523
    .end local v8           #tr:Ljava/lang/Throwable;
    :catch_63
    move-exception v9

    move-object v0, v9

    .line 525
    .local v0, ex:Ljava/io/IOException;
    :goto_65
    if-eqz v6, :cond_6a

    .line 526
    :try_start_67
    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_ef
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_9f

    .line 535
    :cond_6a
    :goto_6a
    if-ne v5, v12, :cond_93

    .line 536
    :try_start_6c
    const-string v9, "RILJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find \'rild\' socket after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " times, continuing to retry silently"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_8a} :catch_9f

    .line 547
    :cond_8a
    :goto_8a
    const-wide/16 v9, 0xfa0

    :try_start_8c
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8f
    .catch Ljava/lang/InterruptedException; {:try_start_8c .. :try_end_8f} :catch_f2
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8f} :catch_9f

    .line 551
    :goto_8f
    add-int/lit8 v5, v5, 0x1

    .line 552
    goto/16 :goto_3

    .line 540
    :cond_93
    if-lez v5, :cond_8a

    if-ge v5, v12, :cond_8a

    .line 541
    :try_start_97
    const-string v9, "RILJ"

    const-string v10, "Couldn\'t find \'rild\' socket; retrying after timeout"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_97 .. :try_end_9e} :catch_9f

    goto :goto_8a

    .line 606
    .end local v0           #ex:Ljava/io/IOException;
    :catch_9f
    move-exception v9

    move-object v8, v9

    goto :goto_5b

    .line 574
    .end local v6           #s:Landroid/net/LocalSocket;
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    .restart local v7       #s:Landroid/net/LocalSocket;
    :cond_a2
    :try_start_a2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 575
    .local v4, p:Landroid/os/Parcel;
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->buffer:[B

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 576
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 580
    iget-object v9, p0, Lcom/android/internal/telephony/RIL$RILReceiver;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->processResponse(Landroid/os/Parcel;)V
    invoke-static {v9, v4}, Lcom/android/internal/telephony/RIL;->access$400(Lcom/android/internal/telephony/RIL;Landroid/os/Parcel;)V

    .line 581
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b8} :catch_ba
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_b8} :catch_c5

    goto/16 :goto_2b

    .line 583
    .end local v1           #is:Ljava/io/InputStream;
    .end local v4           #p:Landroid/os/Parcel;
    :catch_ba
    move-exception v9

    move-object v0, v9

    .line 584
    .restart local v0       #ex:Ljava/io/IOException;
    :try_start_bc
    const-string v9, "RILJ"

    const-string v10, "\'rild\' socket closed"

    invoke-static {v9, v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 586
    .end local v0           #ex:Ljava/io/IOException;
    :catch_c5
    move-exception v9

    move-object v8, v9

    .line 587
    .restart local v8       #tr:Ljava/lang/Throwable;
    const-string v9, "RILJ"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Uncaught exception read length="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ed
    .catch Ljava/lang/Throwable; {:try_start_bc .. :try_end_ed} :catch_58

    goto/16 :goto_33

    .line 528
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    .end local v7           #s:Landroid/net/LocalSocket;
    .end local v8           #tr:Ljava/lang/Throwable;
    .restart local v0       #ex:Ljava/io/IOException;
    .restart local v6       #s:Landroid/net/LocalSocket;
    :catch_ef
    move-exception v9

    goto/16 :goto_6a

    .line 548
    :catch_f2
    move-exception v9

    goto :goto_8f

    .line 598
    .end local v0           #ex:Ljava/io/IOException;
    .end local v6           #s:Landroid/net/LocalSocket;
    .restart local v2       #l:Landroid/net/LocalSocketAddress;
    .restart local v3       #length:I
    .restart local v7       #s:Landroid/net/LocalSocket;
    :catch_f4
    move-exception v9

    goto/16 :goto_48

    .line 523
    .end local v2           #l:Landroid/net/LocalSocketAddress;
    .end local v3           #length:I
    :catch_f7
    move-exception v9

    move-object v0, v9

    move-object v6, v7

    .end local v7           #s:Landroid/net/LocalSocket;
    .restart local v6       #s:Landroid/net/LocalSocket;
    goto/16 :goto_65
.end method
