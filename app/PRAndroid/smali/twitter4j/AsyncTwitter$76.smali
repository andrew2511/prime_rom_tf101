.class Ltwitter4j/AsyncTwitter$76;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->checkUserListMembership(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$listId:I

.field private final val$listOwnerScreenName:Ljava/lang/String;

.field private final val$userId:I


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1024
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$76;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$76;->val$listOwnerScreenName:Ljava/lang/String;

    iput p5, p0, Ltwitter4j/AsyncTwitter$76;->val$listId:I

    iput p6, p0, Ltwitter4j/AsyncTwitter$76;->val$userId:I

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
    .line 1026
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$76;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$76;->val$listOwnerScreenName:Ljava/lang/String;

    iget v2, p0, Ltwitter4j/AsyncTwitter$76;->val$listId:I

    iget v3, p0, Ltwitter4j/AsyncTwitter$76;->val$userId:I

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/Twitter;->checkUserListMembership(Ljava/lang/String;II)Ltwitter4j/User;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->checkedUserListMembership(Ltwitter4j/User;)V

    .line 1027
    return-void
.end method
