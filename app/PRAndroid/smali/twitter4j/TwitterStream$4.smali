.class Ltwitter4j/TwitterStream$4;
.super Ltwitter4j/TwitterStream$TwitterStreamConsumer;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->retweet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/TwitterStream;


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Ltwitter4j/TwitterStream$4;->this$0:Ltwitter4j/TwitterStream;

    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;-><init>(Ltwitter4j/TwitterStream;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StatusStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Ltwitter4j/TwitterStream$4;->this$0:Ltwitter4j/TwitterStream;

    invoke-virtual {v0}, Ltwitter4j/TwitterStream;->getRetweetStream()Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method

.method public getStream()Ltwitter4j/StreamImplementation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Ltwitter4j/TwitterStream$4;->getStream()Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method
