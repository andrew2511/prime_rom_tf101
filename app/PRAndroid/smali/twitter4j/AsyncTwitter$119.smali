.class Ltwitter4j/AsyncTwitter$119;
.super Ltwitter4j/AsyncTwitter$AsyncTask;
.source "AsyncTwitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltwitter4j/AsyncTwitter;->updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final this$0:Ltwitter4j/AsyncTwitter;

.field private final val$profileBackgroundColor:Ljava/lang/String;

.field private final val$profileLinkColor:Ljava/lang/String;

.field private final val$profileSidebarBorderColor:Ljava/lang/String;

.field private final val$profileSidebarFillColor:Ljava/lang/String;

.field private final val$profileTextColor:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1517
    iput-object p1, p0, Ltwitter4j/AsyncTwitter$119;->this$0:Ltwitter4j/AsyncTwitter;

    iput-object p4, p0, Ltwitter4j/AsyncTwitter$119;->val$profileBackgroundColor:Ljava/lang/String;

    iput-object p5, p0, Ltwitter4j/AsyncTwitter$119;->val$profileTextColor:Ljava/lang/String;

    iput-object p6, p0, Ltwitter4j/AsyncTwitter$119;->val$profileLinkColor:Ljava/lang/String;

    iput-object p7, p0, Ltwitter4j/AsyncTwitter$119;->val$profileSidebarFillColor:Ljava/lang/String;

    iput-object p8, p0, Ltwitter4j/AsyncTwitter$119;->val$profileSidebarBorderColor:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Ltwitter4j/AsyncTwitter$AsyncTask;-><init>(Ltwitter4j/AsyncTwitter;Ltwitter4j/TwitterMethod;Ltwitter4j/TwitterListener;)V

    return-void
.end method


# virtual methods
.method public invoke(Ltwitter4j/TwitterListener;)V
    .locals 6
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 1520
    iget-object v0, p0, Ltwitter4j/AsyncTwitter$119;->this$0:Ltwitter4j/AsyncTwitter;

    invoke-static {v0}, Ltwitter4j/AsyncTwitter;->access$000(Ltwitter4j/AsyncTwitter;)Ltwitter4j/Twitter;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/AsyncTwitter$119;->val$profileBackgroundColor:Ljava/lang/String;

    iget-object v2, p0, Ltwitter4j/AsyncTwitter$119;->val$profileTextColor:Ljava/lang/String;

    iget-object v3, p0, Ltwitter4j/AsyncTwitter$119;->val$profileLinkColor:Ljava/lang/String;

    iget-object v4, p0, Ltwitter4j/AsyncTwitter$119;->val$profileSidebarFillColor:Ljava/lang/String;

    iget-object v5, p0, Ltwitter4j/AsyncTwitter$119;->val$profileSidebarBorderColor:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Ltwitter4j/Twitter;->updateProfileColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ltwitter4j/User;

    move-result-object v0

    invoke-interface {p1, v0}, Ltwitter4j/TwitterListener;->updatedProfileColors(Ltwitter4j/User;)V

    .line 1524
    return-void
.end method
