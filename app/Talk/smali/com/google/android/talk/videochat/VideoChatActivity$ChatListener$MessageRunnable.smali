.class Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageRunnable"
.end annotation


# instance fields
.field private final mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

.field private mBody:Ljava/lang/String;

.field private mFullJid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "fullJid"
    .parameter "body"

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    .line 390
    iput-object p2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mFullJid:Ljava/lang/String;

    .line 391
    iput-object p3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mBody:Ljava/lang/String;

    .line 392
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 395
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mFullJid:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/talk/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, bareJid:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$400(Lcom/google/android/talk/videochat/VideoChatActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$500(Lcom/google/android/talk/videochat/VideoChatActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    iget-object v2, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mBody:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$600(Lcom/google/android/talk/videochat/VideoChatActivity;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$700(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 402
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$700(Lcom/google/android/talk/videochat/VideoChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-static {v1}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$800(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 406
    iget-object v1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$ChatListener$MessageRunnable;->mActivity:Lcom/google/android/talk/videochat/VideoChatActivity;

    const-wide/16 v2, 0x1388

    invoke-static {v1, v2, v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$900(Lcom/google/android/talk/videochat/VideoChatActivity;J)V

    .line 408
    :cond_1
    return-void
.end method
