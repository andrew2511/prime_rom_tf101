.class Ltwitter4j/AsyncTwitter$95;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->existsFriendship(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$userA:Ljava/lang/String;

.field private final val$userB:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 1239
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$95;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$95;->val$userA:Ljava/lang/String;

    iput-object p5, p0, Ltwitter4j/AsyncTwitter$95;->val$userB:Ljava/lang/String;

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
    .line 1241
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$95;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$95;->val$userA:Ljava/lang/String;

    iget-object v2, p0, Ltwitter4j/AsyncTwitter$95;->val$userB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Twitter;->existsFriendship(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->gotExistsFriendship(Z)V

    .line 1242
    return-void
.end method
