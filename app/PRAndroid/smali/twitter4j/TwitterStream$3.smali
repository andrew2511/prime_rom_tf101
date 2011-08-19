.class Ltwitter4j/TwitterStream$3;
.super Ltwitter4j/TwitterStream$TwitterStreamConsumer;
.source "TwitterStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/TwitterStream;->stream(Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/TwitterStream;

.field private final val$count:I

.field private final val$relativeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/TwitterStream;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Ltwitter4j/TwitterStream$3;->this$0:Ltwitter4j/TwitterStream;

    iput-object p2, p0, Ltwitter4j/TwitterStream$3;->val$relativeUrl:Ljava/lang/String;

    iput p3, p0, Ltwitter4j/TwitterStream$3;->val$count:I

    invoke-direct {p0, p1}, Ltwitter4j/TwitterStream$TwitterStreamConsumer;-><init>(Ltwitter4j/TwitterStream;)V

    return-void
.end method


# virtual methods
.method public getStream()Ltwitter4j/StatusStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Ltwitter4j/TwitterStream$3;->this$0:Ltwitter4j/TwitterStream;

    iget-object v1, p0, Ltwitter4j/TwitterStream$3;->val$relativeUrl:Ljava/lang/String;

    iget v2, p0, Ltwitter4j/TwitterStream$3;->val$count:I

    invoke-static {v0, v1, v2}, Ltwitter4j/TwitterStream;->access$000(Ltwitter4j/TwitterStream;Ljava/lang/String;I)Ltwitter4j/StatusStream;

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
    .line 194
    invoke-virtual {p0}, Ltwitter4j/TwitterStream$3;->getStream()Ltwitter4j/StatusStream;

    move-result-object v0

    return-object v0
.end method
