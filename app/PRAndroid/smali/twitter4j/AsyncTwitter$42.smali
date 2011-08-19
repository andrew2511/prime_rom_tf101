.class Ltwitter4j/AsyncTwitter$42;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->getRetweetedByIDs(JLtwitter4j/Paging;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$paging:Ltwitter4j/Paging;

.field private final val$statusId:J


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;JLtwitter4j/Paging;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 612
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$42;->this$0:Ltwitter4j/AsyncTwitter;

    iput-wide p4, p0, Ltwitter4j/AsyncTwitter$42;->val$statusId:J

    iput-object p6, p0, Ltwitter4j/AsyncTwitter$42;->val$paging:Ltwitter4j/Paging;

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
    .line 614
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$42;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/AsyncTwitter$42;->val$statusId:J

    iget-object v3, p0, Ltwitter4j/AsyncTwitter$42;->val$paging:Ltwitter4j/Paging;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/Twitter;->getRetweetedByIDs(JLtwitter4j/Paging;)Ltwitter4j/IDs;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->gotRetweetedByIDs(Ltwitter4j/IDs;)V

    .line 615
    return-void
.end method
