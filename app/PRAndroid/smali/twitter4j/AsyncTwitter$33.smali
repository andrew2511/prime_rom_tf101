.class Ltwitter4j/AsyncTwitter$33;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->updateStatus(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$inReplyToStatusId:J

.field private final val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$33;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$33;->val$status:Ljava/lang/String;

    iput-wide p5, p0, Ltwitter4j/AsyncTwitter$33;->val$inReplyToStatusId:J

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitter$AsyncTask;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    return-void
.end method


# virtual methods
.method public invoke(Ltwitter4j/TwitterListener;)V
    .locals 4
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$33;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$33;->val$status:Ljava/lang/String;

    iget-wide v2, p0, Ltwitter4j/AsyncTwitter$33;->val$inReplyToStatusId:J

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;J)Ltwitter4j/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->updatedStatus(Ltwitter4j/Status;)V

    .line 516
    return-void
.end method
