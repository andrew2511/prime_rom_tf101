.class Ltwitter4j/AsyncTwitter$123;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->updateProfileBackgroundImage(Ljava/io/InputStream;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$image:Ljava/io/InputStream;

.field private final val$tile:Z


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/io/InputStream;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 1576
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$123;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$123;->val$image:Ljava/io/InputStream;

    iput-boolean p5, p0, Ltwitter4j/AsyncTwitter$123;->val$tile:Z

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
    .line 1579
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$123;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$123;->val$image:Ljava/io/InputStream;

    iget-boolean v2, p0, Ltwitter4j/AsyncTwitter$123;->val$tile:Z

    invoke-virtual {v0, v1, v2}, Ltwitter4j/Twitter;->updateProfileBackgroundImage(Ljava/io/InputStream;Z)Ltwitter4j/User;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->updatedProfileBackgroundImage(Ltwitter4j/User;)V

    .line 1582
    return-void
.end method
