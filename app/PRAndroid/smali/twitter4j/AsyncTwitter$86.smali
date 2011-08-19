.class Ltwitter4j/AsyncTwitter$86;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->sendDirectMessage(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$text:Ljava/lang/String;

.field private final val$userId:I


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 1138
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$86;->this$0:Ltwitter4j/AsyncTwitter;

    iput p4, p0, Ltwitter4j/AsyncTwitter$86;->val$userId:I

    iput-object p5, p0, Ltwitter4j/AsyncTwitter$86;->val$text:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitter$AsyncTask;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    return-void
.end method


# virtual methods
.method public invoke(Ltwitter4j/TwitterListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1140
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$86;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AsyncTwitter$86;->val$userId:I

    iget-object v2, p0, Ltwitter4j/AsyncTwitter$86;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Twitter;->sendDirectMessage(ILjava/lang/String;)Ltwitter4j/DirectMessage;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->sentDirectMessage(Ltwitter4j/DirectMessage;)V

    .line 1141
    return-void
.end method
