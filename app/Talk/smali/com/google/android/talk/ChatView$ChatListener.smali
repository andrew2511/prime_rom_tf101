.class Lcom/google/android/talk/ChatView$ChatListener;
.super Lcom/google/android/gtalkservice/IChatListener$Stub;
.source "ChatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChatListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 2493
    iput-object p1, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IChatListener$Stub;-><init>()V

    .line 2495
    return-void
.end method


# virtual methods
.method public callEnded()V
    .locals 1

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3400(Lcom/google/android/talk/ChatView;)V

    .line 2591
    return-void
.end method

.method public chatClosed(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 2519
    return-void
.end method

.method public chatRead(Ljava/lang/String;)V
    .locals 0
    .parameter "from"

    .prologue
    .line 2521
    return-void
.end method

.method public convertedToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$5500(Lcom/google/android/talk/ChatView;)V

    .line 2515
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2700(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-interface {v0, v1, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->convertedToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 2516
    return-void
.end method

.method public missedCall()V
    .locals 1

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3400(Lcom/google/android/talk/ChatView;)V

    .line 2585
    return-void
.end method

.method public newMessageReceived(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .parameter "from"
    .parameter "body"
    .parameter "notify"

    .prologue
    const/4 v6, 0x1

    .line 2551
    iget-object v3, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3, p1}, Lcom/google/android/talk/ChatView;->access$5602(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 2552
    iget-object v3, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3, v6}, Lcom/google/android/talk/ChatView;->access$5702(Lcom/google/android/talk/ChatView;Z)Z

    .line 2555
    iget-object v3, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$3400(Lcom/google/android/talk/ChatView;)V

    .line 2557
    iget-object v3, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v3}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 2558
    invoke-static {}, Lcom/google/android/talk/SettingsCache;->getInstance()Lcom/google/android/talk/SettingsCache;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$5900(Lcom/google/android/talk/ChatView;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/talk/SettingsCache;->getSettingsMap(J)Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;

    move-result-object v2

    .line 2560
    .local v2, settingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    const-string v3, "off"

    invoke-virtual {v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextNotification()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2562
    iget-object v3, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    const-string v4, "notification setting is off"

    invoke-static {v3, v4}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 2573
    .end local v2           #settingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    :cond_0
    :goto_0
    return-void

    .line 2567
    .restart local v2       #settingsQueryMap:Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gsf/TalkContract$AccountSettings$QueryMap;->getTextRingtoneURI()Ljava/lang/String;

    move-result-object v1

    .line 2568
    .local v1, ringtoneUrl:Ljava/lang/String;
    new-instance v0, Lcom/google/android/talk/videochat/Ringer;

    iget-object v3, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v3}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/talk/videochat/Ringer;-><init>(Landroid/content/Context;)V

    .line 2569
    .local v0, ringer:Lcom/google/android/talk/videochat/Ringer;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/talk/videochat/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 2570
    invoke-virtual {v0, v6}, Lcom/google/android/talk/videochat/Ringer;->setLowVolume(Z)V

    .line 2571
    invoke-virtual {v0}, Lcom/google/android/talk/videochat/Ringer;->ring()V

    goto :goto_0
.end method

.method public newMessageSent(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 2578
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$3400(Lcom/google/android/talk/ChatView;)V

    .line 2579
    return-void
.end method

.method public participantJoined(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "room"
    .parameter "nickname"

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatListener.participantJoined: nickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 2527
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/ChatView$ChatListener$1;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$ChatListener$1;-><init>(Lcom/google/android/talk/ChatView$ChatListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2534
    :cond_0
    return-void
.end method

.method public participantLeft(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "room"
    .parameter "nickname"

    .prologue
    .line 2538
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getContact()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2539
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChatListener.participantLeft: nickname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$000(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 2540
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/ChatView$ChatListener$2;

    invoke-direct {v1, p0}, Lcom/google/android/talk/ChatView$ChatListener$2;-><init>(Lcom/google/android/talk/ChatView$ChatListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2547
    :cond_0
    return-void
.end method

.method public useLightweightNotify()Z
    .locals 1

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$5800(Lcom/google/android/talk/ChatView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$6000(Lcom/google/android/talk/ChatView;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public willConvertToGroupChat(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .parameter "oldJid"
    .parameter "groupChatRoom"
    .parameter "groupId"

    .prologue
    .line 2502
    iget-object v0, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$2700(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$ChatListener;->this$0:Lcom/google/android/talk/ChatView;

    invoke-interface {v0, v1, p2}, Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;->willConvertToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V

    .line 2503
    return-void
.end method
