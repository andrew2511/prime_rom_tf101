.class Ltwitter4j/AsyncTwitter$74;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->addUserListMembers(I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$listId:I

.field private final val$screenNames:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 1003
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$74;->this$0:Ltwitter4j/AsyncTwitter;

    iput p4, p0, Ltwitter4j/AsyncTwitter$74;->val$listId:I

    iput-object p5, p0, Ltwitter4j/AsyncTwitter$74;->val$screenNames:[Ljava/lang/String;

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
    .line 1005
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$74;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AsyncTwitter$74;->val$listId:I

    iget-object v2, p0, Ltwitter4j/AsyncTwitter$74;->val$screenNames:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Twitter;->addUserListMembers(I[Ljava/lang/String;)Ltwitter4j/UserList;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->addedUserListMembers(Ltwitter4j/UserList;)V

    .line 1006
    return-void
.end method
