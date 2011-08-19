.class Lcom/google/android/talk/ChatScreen$1;
.super Ljava/lang/Object;
.source "ChatScreen.java"

# interfaces
.implements Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/ChatScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatScreen;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/talk/ChatScreen$1;->this$0:Lcom/google/android/talk/ChatScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastChatClosed()V
    .locals 0

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/talk/ChatScreen$1;->showRoster()V

    .line 67
    return-void
.end method

.method public onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
    .locals 0
    .parameter "buddyInfo"

    .prologue
    .line 63
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "title"
    .parameter "presence"
    .parameter "clientType"

    .prologue
    .line 85
    return-void
.end method

.method public showRoster()V
    .locals 7

    .prologue
    .line 44
    iget-object v3, p0, Lcom/google/android/talk/ChatScreen$1;->this$0:Lcom/google/android/talk/ChatScreen;

    invoke-virtual {v3}, Lcom/google/android/talk/ChatScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "accountId"

    const-wide/16 v5, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 47
    .local v0, accountId:J
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .local v2, intent:Landroid/content/Intent;
    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 49
    const-string v3, "com.android.im.category.GTALK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v3, "accountId"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 51
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 52
    iget-object v3, p0, Lcom/google/android/talk/ChatScreen$1;->this$0:Lcom/google/android/talk/ChatScreen;

    invoke-virtual {v3, v2}, Lcom/google/android/talk/ChatScreen;->startActivity(Landroid/content/Intent;)V

    .line 54
    const-string v3, "showRosterScreen"

    invoke-static {v3}, Lcom/google/android/talk/ChatScreen;->log(Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/google/android/talk/ChatScreen$1;->this$0:Lcom/google/android/talk/ChatScreen;

    invoke-virtual {v3}, Lcom/google/android/talk/ChatScreen;->finish()V

    .line 56
    return-void
.end method

.method public startVideoChatAnimation()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public updateOtrStatus(Z)V
    .locals 0
    .parameter "otr"

    .prologue
    .line 59
    return-void
.end method
