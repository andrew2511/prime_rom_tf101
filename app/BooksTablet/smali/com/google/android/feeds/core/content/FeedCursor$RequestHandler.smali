.class Lcom/google/android/feeds/core/content/FeedCursor$RequestHandler;
.super Landroid/os/Handler;
.source "FeedCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/feeds/core/content/FeedCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestHandler"
.end annotation


# static fields
.field public static final HANDLE_QUERY:I = 0x1

.field public static final HANDLE_QUIT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/google/android/feeds/core/content/FeedCursor;


# direct methods
.method public constructor <init>(Lcom/google/android/feeds/core/content/FeedCursor;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 674
    iput-object p1, p0, Lcom/google/android/feeds/core/content/FeedCursor$RequestHandler;->this$0:Lcom/google/android/feeds/core/content/FeedCursor;

    .line 675
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 676
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 680
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 694
    .end local p0
    :goto_0
    return-void

    .line 682
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/google/android/feeds/core/content/FeedCursor$RequestHandler;->this$0:Lcom/google/android/feeds/core/content/FeedCursor;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/google/android/feeds/core/provider/FeedCommand;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, p0, v2}, Lcom/google/android/feeds/core/content/FeedCursor;->handleQuery(Lcom/google/android/feeds/core/provider/FeedCommand;I)V

    goto :goto_0

    .line 690
    .restart local p0
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/feeds/core/content/FeedCursor$RequestHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 691
    .local v0, looper:Landroid/os/Looper;
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
