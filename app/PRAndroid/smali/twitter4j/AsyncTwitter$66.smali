.class Ltwitter4j/AsyncTwitter$66;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$id:I

.field private final val$listOwnerScreenName:Ljava/lang/String;

.field private final val$paging:Ltwitter4j/Paging;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;ILtwitter4j/Paging;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 914
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$66;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$66;->val$listOwnerScreenName:Ljava/lang/String;

    iput p5, p0, Ltwitter4j/AsyncTwitter$66;->val$id:I

    iput-object p6, p0, Ltwitter4j/AsyncTwitter$66;->val$paging:Ltwitter4j/Paging;

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
    .line 916
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$66;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$66;->val$listOwnerScreenName:Ljava/lang/String;

    iget v2, p0, Ltwitter4j/AsyncTwitter$66;->val$id:I

    iget-object v3, p0, Ltwitter4j/AsyncTwitter$66;->val$paging:Ltwitter4j/Paging;

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/Twitter;->getUserListStatuses(Ljava/lang/String;ILtwitter4j/Paging;)Ltwitter4j/ResponseList;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->gotUserListStatuses(Ltwitter4j/ResponseList;)V

    .line 917
    return-void
.end method
