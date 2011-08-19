.class Ltwitter4j/TwitterStream$2;
.super Ltwitter4j/TwitterStream$TwitterStreamConsumer;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->links(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/TwitterStream;

.field private final val$count:I


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Ltwitter4j/TwitterStream$2;->this$0:Ltwitter4j/TwitterStream;

    iput p2, p0, Ltwitter4j/TwitterStream$2;->val$count:I

    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;-><init>(Ltwitter4j/TwitterStream;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StatusStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Ltwitter4j/TwitterStream$2;->this$0:Ltwitter4j/TwitterStream;

    iget v1, p0, Ltwitter4j/TwitterStream$2;->val$count:I

    invoke-virtual {v0, v1}, Ltwitter4j/TwitterStream;->getLinksStream(I)Ltwitter4j/StatusStream;

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
    .line 161
    invoke-virtual {p0}, Ltwitter4j/TwitterStream$2;->getStream()Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method
