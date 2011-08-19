.class Ltwitter4j/AsyncTwitter$32;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->updateStatus(Ljava/lang/String;Ltwitter4j/GeoLocation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$location:Ltwitter4j/GeoLocation;

.field private final val$status:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ltwitter4j/GeoLocation;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$32;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$32;->val$status:Ljava/lang/String;

    iput-object p5, p0, Ltwitter4j/AsyncTwitter$32;->val$location:Ltwitter4j/GeoLocation;

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
    .line 504
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$32;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$32;->val$status:Ljava/lang/String;

    iget-object v2, p0, Ltwitter4j/AsyncTwitter$32;->val$location:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Twitter;->updateStatus(Ljava/lang/String;Ltwitter4j/GeoLocation;)Ltwitter4j/Status;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->updatedStatus(Ltwitter4j/Status;)V

    .line 505
    return-void
.end method
