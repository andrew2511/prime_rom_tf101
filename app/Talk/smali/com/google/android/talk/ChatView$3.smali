.class Lcom/google/android/talk/ChatView$3;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/ContactInfoQuery$ContactInfoQueryCallbackErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->initialize(Landroid/content/Intent;Landroid/database/Cursor;Landroid/os/Bundle;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 456
    iput-object p1, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoLoadFailed(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 3
    .parameter "contact"
    .parameter "c"

    .prologue
    .line 491
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactInfoLoadFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$402(Lcom/google/android/talk/ChatView;Z)Z

    .line 494
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0, p1}, Lcom/google/android/talk/ChatView;->access$502(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$602(Lcom/google/android/talk/ChatView;I)I

    .line 496
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/talk/ChatView;->access$702(Lcom/google/android/talk/ChatView;J)J

    .line 497
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$802(Lcom/google/android/talk/ChatView;I)I

    .line 499
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$900(Lcom/google/android/talk/ChatView;)V

    .line 500
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->updateHost()V

    .line 501
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1000(Lcom/google/android/talk/ChatView;)V

    .line 503
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$1700(Lcom/google/android/talk/ChatView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/TalkApp;->getGenericAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$1602(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 504
    return-void
.end method

.method public onContactInfoLoaded()V
    .locals 8

    .prologue
    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 460
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$402(Lcom/google/android/talk/ChatView;Z)Z

    .line 461
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$300(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ContactInfoQuery;->getNickName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$502(Lcom/google/android/talk/ChatView;Ljava/lang/String;)Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$300(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ContactInfoQuery;->getPresenceStatus()I

    move-result v4

    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$602(Lcom/google/android/talk/ChatView;I)I

    .line 463
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$300(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ContactInfoQuery;->getContactId()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/google/android/talk/ChatView;->access$702(Lcom/google/android/talk/ChatView;J)J

    .line 464
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$300(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/talk/ContactInfoQuery;->getCapabilities()I

    move-result v4

    invoke-static {v0, v4}, Lcom/google/android/talk/ChatView;->access$802(Lcom/google/android/talk/ChatView;I)I

    .line 466
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$900(Lcom/google/android/talk/ChatView;)V

    .line 467
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->updateHost()V

    .line 468
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1000(Lcom/google/android/talk/ChatView;)V

    .line 470
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1100(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1100(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/RemoteVideoChatStateAccessor;->requestCallStateUpdate()V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1200(Lcom/google/android/talk/ChatView;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 475
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v4}, Lcom/google/android/talk/ChatView;->access$1300(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 476
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1400(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$QueryHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/talk/ChatView$QueryHandler;->cancelOperation(I)V

    .line 477
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v0}, Lcom/google/android/talk/ChatView;->access$1400(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$QueryHandler;

    move-result-object v0

    invoke-static {}, Lcom/google/android/talk/ChatView;->access$1500()[Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/talk/ChatView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    .end local v3           #uri:Landroid/net/Uri;
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    iget-object v1, p0, Lcom/google/android/talk/ChatView$3;->this$0:Lcom/google/android/talk/ChatView;

    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$300(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ContactInfoQuery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/ContactInfoQuery;->getAvatar()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/ChatView;->access$1602(Lcom/google/android/talk/ChatView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 487
    return-void
.end method
