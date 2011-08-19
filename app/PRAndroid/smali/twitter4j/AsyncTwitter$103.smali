.class Ltwitter4j/AsyncTwitter$103;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->updateFriendship(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$enableDeviceNotification:Z

.field private final val$retweet:Z

.field private final val$userId:I


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;IZZ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1330
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$103;->this$0:Ltwitter4j/AsyncTwitter;

    iput p4, p0, Ltwitter4j/AsyncTwitter$103;->val$userId:I

    iput-boolean p5, p0, Ltwitter4j/AsyncTwitter$103;->val$enableDeviceNotification:Z

    iput-boolean p6, p0, Ltwitter4j/AsyncTwitter$103;->val$retweet:Z

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
    .line 1332
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$103;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget v1, p0, Ltwitter4j/AsyncTwitter$103;->val$userId:I

    iget-boolean v2, p0, Ltwitter4j/AsyncTwitter$103;->val$enableDeviceNotification:Z

    iget-boolean v3, p0, Ltwitter4j/AsyncTwitter$103;->val$retweet:Z

    invoke-virtual {v0, v1, v2, v3}, Ltwitter4j/Twitter;->updateFriendship(IZZ)Ltwitter4j/Relationship;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->updatedFriendship(Ltwitter4j/Relationship;)V

    .line 1334
    return-void
.end method
