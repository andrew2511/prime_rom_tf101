.class Ltwitter4j/TwitterStream$6;
.super Ltwitter4j/TwitterStream$TwitterStreamConsumer;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->user([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/TwitterStream;

.field private final val$track:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Ltwitter4j/TwitterStream$6;->this$0:Ltwitter4j/TwitterStream;

    iput-object p2, p0, Ltwitter4j/TwitterStream$6;->val$track:[Ljava/lang/String;

    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;-><init>(Ltwitter4j/TwitterStream;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StreamImplementation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 311
    invoke-virtual {p0}, Ltwitter4j/TwitterStream$6;->getStream()Ltwitter4j/UserStream;

    move-result-object v0

    return-object v0
.end method

.method public getStream()Ltwitter4j/UserStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Ltwitter4j/TwitterStream$6;->this$0:Ltwitter4j/TwitterStream;

    iget-object v1, p0, Ltwitter4j/TwitterStream$6;->val$track:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltwitter4j/TwitterStream;->getUserStream([Ljava/lang/String;)Ltwitter4j/UserStream;

    move-result-object v0

    return-object v0
.end method
