.class Ltwitter4j/TwitterStream$7;
.super Ltwitter4j/TwitterStream$TwitterStreamConsumer;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->site(Z[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/TwitterStream;

.field private final val$follow:[I

.field private final val$withFollowings:Z


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;Z[I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Ltwitter4j/TwitterStream$7;->this$0:Ltwitter4j/TwitterStream;

    iput-boolean p2, p0, Ltwitter4j/TwitterStream$7;->val$withFollowings:Z

    iput-object p3, p0, Ltwitter4j/TwitterStream$7;->val$follow:[I

    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;-><init>(Ltwitter4j/TwitterStream;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StreamImplementation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 378
    :try_start_0
    new-instance v1, Ltwitter4j/SiteStreamsImpl;

    iget-object v2, p0, Ltwitter4j/TwitterStream$7;->this$0:Ltwitter4j/TwitterStream;

    invoke-static {v2}, Ltwitter4j/TwitterStream;->access$100(Ltwitter4j/TwitterStream;)Ltwitter4j/internal/async/Dispatcher;

    move-result-object v2

    iget-object v3, p0, Ltwitter4j/TwitterStream$7;->this$0:Ltwitter4j/TwitterStream;

    iget-boolean v4, p0, Ltwitter4j/TwitterStream$7;->val$withFollowings:Z

    iget-object v5, p0, Ltwitter4j/TwitterStream$7;->val$follow:[I

    invoke-virtual {v3, v4, v5}, Ltwitter4j/TwitterStream;->getSiteStream(Z[I)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/TwitterStream$7;->this$0:Ltwitter4j/TwitterStream;

    iget-object v4, v4, Ltwitter4j/TwitterStream;->conf:Ltwitter4j/conf/Configuration;

    invoke-direct {v1, v2, v3, v4}, Ltwitter4j/SiteStreamsImpl;-><init>(Ltwitter4j/internal/async/Dispatcher;Ljava/io/InputStream;Ltwitter4j/conf/Configuration;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 379
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 380
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ltwitter4j/TwitterException;

    invoke-direct {v1, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
