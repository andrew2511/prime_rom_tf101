.class abstract Ltwitter4j/TwitterStream$TwitterStreamConsumer;
.super Ljava/lang/Thread;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltwitter4j/TwitterStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "TwitterStreamConsumer"
.end annotation


# instance fields
.field private final NAME:Ljava/lang/String;

.field private volatile closed:Z

.field private stream:Ltwitter4j/StreamImplementation;

.field private final this$0:Ltwitter4j/TwitterStream;


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;)V
    .locals 2
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    .line 665
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 660
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;

    .line 661
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Twitter Stream consumer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget v1, Ltwitter4j/TwitterStream;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ltwitter4j/TwitterStream;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->NAME:Ljava/lang/String;

    .line 662
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->closed:Z

    .line 666
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "[initializing]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->setName(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method private setStatus(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 809
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, actualMessage:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->setName(Ljava/lang/String;)V

    .line 811
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 812
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3

    .prologue
    .line 792
    monitor-enter p0

    :try_start_0
    const-string v1, "[Disposing thread]"

    invoke-direct {p0, v1}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->setStatus(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 794
    :try_start_1
    iget-object v1, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 796
    :try_start_2
    iget-object v1, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;

    invoke-interface {v1}, Ltwitter4j/StreamImplementation;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 804
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->closed:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 806
    monitor-exit p0

    return-void

    .line 798
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 799
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 800
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 804
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    const/4 v2, 0x1

    :try_start_5
    iput-boolean v2, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->closed:Z

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 792
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 797
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method abstract getStream()Ltwitter4j/StreamImplementation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/16 v13, 0xc8

    .line 670
    const/4 v9, 0x0

    .line 671
    .local v9, timeToSleep:I
    const/4 v1, 0x0

    .line 672
    .local v1, connected:Z
    :cond_0
    :goto_0
    iget-boolean v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->closed:Z

    if-nez v10, :cond_1

    .line 674
    :try_start_0
    iget-boolean v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->closed:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;

    if-nez v10, :cond_0

    .line 676
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    const-string v11, "Establishing connection."

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->info(Ljava/lang/String;)V

    .line 677
    const-string v10, "[Establishing connection]"

    invoke-direct {p0, v10}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->setStatus(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->getStream()Ltwitter4j/StreamImplementation;

    move-result-object v10

    iput-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;

    .line 679
    const/4 v1, 0x1

    .line 680
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    const-string v11, "Connection established."

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->info(Ljava/lang/String;)V

    .line 681
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v10}, Ltwitter4j/TwitterStream;->access$300(Ltwitter4j/TwitterStream;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltwitter4j/ConnectionLifeCycleListener;
    :try_end_0
    .catch Ltwitter4j/TwitterException; {:try_start_0 .. :try_end_0} :catch_1

    .line 683
    .local v6, listener:Ltwitter4j/ConnectionLifeCycleListener;
    :try_start_1
    invoke-interface {v6}, Ltwitter4j/ConnectionLifeCycleListener;->onConnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ltwitter4j/TwitterException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 684
    :catch_0
    move-exception v2

    .line 685
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catch Ltwitter4j/TwitterException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 710
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :catch_1
    move-exception v10

    move-object v8, v10

    .line 711
    .local v8, te:Ltwitter4j/TwitterException;
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v8}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->info(Ljava/lang/String;)V

    .line 712
    iget-boolean v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->closed:Z

    if-nez v10, :cond_0

    .line 713
    if-nez v9, :cond_5

    .line 714
    invoke-virtual {v8}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v10

    const/16 v11, 0x193

    if-ne v10, v11, :cond_3

    .line 715
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    const-string v11, "This account is not in required role."

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    .line 716
    iput-boolean v14, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->closed:Z

    .line 765
    .end local v8           #te:Ltwitter4j/TwitterException;
    :cond_1
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;

    if-eqz v10, :cond_d

    if-eqz v1, :cond_d

    .line 767
    :try_start_3
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;

    invoke-interface {v10}, Ltwitter4j/StreamImplementation;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .line 773
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v10}, Ltwitter4j/TwitterStream;->access$300(Ltwitter4j/TwitterStream;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltwitter4j/ConnectionLifeCycleListener;

    .line 775
    .restart local v6       #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :try_start_4
    invoke-interface {v6}, Ltwitter4j/ConnectionLifeCycleListener;->onDisconnect()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 776
    :catch_2
    move-exception v2

    .line 777
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 689
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :cond_2
    const/4 v9, 0x0

    .line 690
    :try_start_5
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    const-string v11, "Receiving status stream."

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->info(Ljava/lang/String;)V

    .line 691
    const-string v10, "[Receiving stream]"

    invoke-direct {p0, v10}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->setStatus(Ljava/lang/String;)V

    .line 692
    :goto_3
    iget-boolean v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->closed:Z
    :try_end_5
    .catch Ltwitter4j/TwitterException; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v10, :cond_0

    .line 694
    :try_start_6
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;

    iget-object v11, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v11}, Ltwitter4j/TwitterStream;->access$400(Ltwitter4j/TwitterStream;)[Ltwitter4j/StreamListener;

    move-result-object v11

    invoke-interface {v10, v11}, Ltwitter4j/StreamImplementation;->next([Ltwitter4j/StreamListener;)V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ltwitter4j/TwitterException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    .line 695
    :catch_3
    move-exception v10

    move-object v4, v10

    .line 696
    .local v4, ise:Ljava/lang/IllegalStateException;
    :try_start_7
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 698
    .end local v4           #ise:Ljava/lang/IllegalStateException;
    :catch_4
    move-exception v10

    move-object v2, v10

    .line 699
    .local v2, e:Ltwitter4j/TwitterException;
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v2}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->info(Ljava/lang/String;)V

    .line 700
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;

    invoke-interface {v10, v2}, Ltwitter4j/StreamImplementation;->onException(Ljava/lang/Exception;)V

    .line 701
    throw v2

    .line 702
    .end local v2           #e:Ltwitter4j/TwitterException;
    :catch_5
    move-exception v10

    move-object v2, v10

    .line 703
    .local v2, e:Ljava/lang/Exception;
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->info(Ljava/lang/String;)V

    .line 704
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;

    invoke-interface {v10, v2}, Ltwitter4j/StreamImplementation;->onException(Ljava/lang/Exception;)V

    .line 705
    const/4 v10, 0x1

    iput-boolean v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->closed:Z
    :try_end_7
    .catch Ltwitter4j/TwitterException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 719
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local v8       #te:Ltwitter4j/TwitterException;
    :cond_3
    const/4 v1, 0x0

    .line 720
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v10}, Ltwitter4j/TwitterStream;->access$300(Ltwitter4j/TwitterStream;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltwitter4j/ConnectionLifeCycleListener;

    .line 722
    .restart local v6       #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :try_start_8
    invoke-interface {v6}, Ltwitter4j/ConnectionLifeCycleListener;->onDisconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    .line 723
    :catch_6
    move-exception v2

    .line 724
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_4

    .line 727
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :cond_4
    invoke-virtual {v8}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v10

    if-le v10, v13, :cond_7

    .line 728
    const/16 v9, 0x2710

    .line 733
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-virtual {v8}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v10

    if-le v10, v13, :cond_6

    const/16 v10, 0x2710

    if-ge v9, v10, :cond_6

    .line 734
    const/16 v9, 0x2710

    .line 736
    :cond_6
    if-eqz v1, :cond_8

    .line 737
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v10}, Ltwitter4j/TwitterStream;->access$300(Ltwitter4j/TwitterStream;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltwitter4j/ConnectionLifeCycleListener;

    .line 739
    .restart local v6       #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :try_start_9
    invoke-interface {v6}, Ltwitter4j/ConnectionLifeCycleListener;->onDisconnect()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    .line 740
    :catch_7
    move-exception v2

    .line 741
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_6

    .line 729
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :cond_7
    if-nez v9, :cond_5

    .line 730
    const/16 v9, 0xfa

    goto :goto_5

    .line 746
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_8
    iget-boolean v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->closed:Z

    if-nez v10, :cond_9

    .line 748
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const-string v12, "Waiting for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, " milliseconds"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->info(Ljava/lang/String;)V

    .line 749
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "[Waiting for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, " milliseconds]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->setStatus(Ljava/lang/String;)V

    .line 751
    int-to-long v10, v9

    :try_start_a
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_e

    .line 754
    :goto_7
    mul-int/lit8 v10, v9, 0x2

    invoke-virtual {v8}, Ltwitter4j/TwitterException;->getStatusCode()I

    move-result v11

    if-le v11, v13, :cond_a

    const v11, 0x3a980

    :goto_8
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 756
    :cond_9
    const/4 v10, 0x0

    iput-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->stream:Ltwitter4j/StreamImplementation;

    .line 757
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v8}, Ltwitter4j/TwitterException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->debug(Ljava/lang/String;)V

    .line 758
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v10}, Ltwitter4j/TwitterStream;->access$400(Ltwitter4j/TwitterStream;)[Ltwitter4j/StreamListener;

    move-result-object v0

    .local v0, arr$:[Ltwitter4j/StreamListener;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_9
    if-ge v3, v5, :cond_b

    aget-object v7, v0, v3

    .line 759
    .local v7, statusListener:Ltwitter4j/StreamListener;
    invoke-interface {v7, v8}, Ltwitter4j/StreamListener;->onException(Ljava/lang/Exception;)V

    .line 758
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 754
    .end local v0           #arr$:[Ltwitter4j/StreamListener;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #statusListener:Ltwitter4j/StreamListener;
    :cond_a
    const/16 v11, 0x3e80

    goto :goto_8

    .line 761
    .restart local v0       #arr$:[Ltwitter4j/StreamListener;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 768
    .end local v0           #arr$:[Ltwitter4j/StreamListener;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v8           #te:Ltwitter4j/TwitterException;
    :catch_8
    move-exception v10

    .line 773
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v10}, Ltwitter4j/TwitterStream;->access$300(Ltwitter4j/TwitterStream;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltwitter4j/ConnectionLifeCycleListener;

    .line 775
    .restart local v6       #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :try_start_b
    invoke-interface {v6}, Ltwitter4j/ConnectionLifeCycleListener;->onDisconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_a

    .line 776
    :catch_9
    move-exception v2

    .line 777
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_a

    .line 769
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :catch_a
    move-exception v10

    move-object v2, v10

    .line 770
    .restart local v2       #e:Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 771
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 773
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v10}, Ltwitter4j/TwitterStream;->access$300(Ltwitter4j/TwitterStream;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltwitter4j/ConnectionLifeCycleListener;

    .line 775
    .restart local v6       #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :try_start_d
    invoke-interface {v6}, Ltwitter4j/ConnectionLifeCycleListener;->onDisconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_b

    .line 776
    :catch_b
    move-exception v2

    .line 777
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_b

    .line 773
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v11}, Ltwitter4j/TwitterStream;->access$300(Ltwitter4j/TwitterStream;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltwitter4j/ConnectionLifeCycleListener;

    .line 775
    .restart local v6       #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :try_start_e
    invoke-interface {v6}, Ltwitter4j/ConnectionLifeCycleListener;->onDisconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    goto :goto_c

    .line 776
    :catch_c
    move-exception v2

    .line 777
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_c

    .line 778
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :cond_c
    throw v10

    .line 782
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_d
    iget-object v10, p0, Ltwitter4j/TwitterStream$TwitterStreamConsumer;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v10}, Ltwitter4j/TwitterStream;->access$300(Ltwitter4j/TwitterStream;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltwitter4j/ConnectionLifeCycleListener;

    .line 784
    .restart local v6       #listener:Ltwitter4j/ConnectionLifeCycleListener;
    :try_start_f
    invoke-interface {v6}, Ltwitter4j/ConnectionLifeCycleListener;->onCleanUp()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_d

    goto :goto_d

    .line 785
    :catch_d
    move-exception v2

    .line 786
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-static {}, Ltwitter4j/TwitterStream;->access$200()Ltwitter4j/internal/logging/Logger;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ltwitter4j/internal/logging/Logger;->warn(Ljava/lang/String;)V

    goto :goto_d

    .line 752
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #listener:Ltwitter4j/ConnectionLifeCycleListener;
    .restart local v8       #te:Ltwitter4j/TwitterException;
    :catch_e
    move-exception v10

    goto/16 :goto_7

    .line 789
    .end local v8           #te:Ltwitter4j/TwitterException;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_e
    return-void
.end method
